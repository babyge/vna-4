// TODO: use interrupts or smarter polling to signal buffer is ready
// add socket dump of samples
// 
//
// Based on https://credentiality2.blogspot.com/2015/09/beaglebone-pru-gpio-example.html
// Based on http://www.righto.com/2016/08/pru-tips-understanding-beaglebones.html
// Based on https://groups.google.com/forum/#!topic/beagleboard/0a4tszlq2y0

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <prussdrv.h>
#include <pruss_intc_mapping.h>

#include <sys/types.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#include <sys/mman.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <time.h>

#include "adc_shm.h"

#define PRU_NUM      1
#define PRUSS1_SHARED_DATARAM    4
#define ADC_PORT 10520
#define MAX_SAMPLE_BUFFER 768000

#define MAX_PRU_RETRYS 5

#define MAX_SHM_READ_ATTEMPTS 100
// shared memory
// [ 32 bytes, config/misc ] [ 2048 bytes (512 samples) buffer 0 ] [ 2048 bytes (512 samples) buffer 1 ]

#define PRU_BIN "./pru_adc.bin"

static void *sharedMem;

static uint32_t *sharedMem_int;
static int16_t *sharedMem_sample;


// launch adc program on PRU, stuff nsamples into ADC *sample_buffer
int grab_samples_pru(uint32_t nsamples, int16_t *sample_buffer)
{
  uint8_t target_buffer = 0;
  uint32_t i;
  uint32_t sample_idx = 0;
  uint32_t shm_read_tries = 0;

  int32_t return_value = 0;

  prussdrv_init();
  printf("init pru..\n");
  if (prussdrv_open(PRU_EVTOUT_0) == -1) {
    printf("prussdrv_open() failed\n");
    return 1;
  }


  tpruss_intc_initdata pruss_intc_initdata = PRUSS_INTC_INITDATA;
  prussdrv_pruintc_init(&pruss_intc_initdata);

  prussdrv_map_prumem(PRUSS1_SHARED_DATARAM, &sharedMem);

  sharedMem_int = (unsigned int*) sharedMem;
  sharedMem_sample = (int16_t*) sharedMem + ADC_BUF_OFFSET / sizeof(int16_t);

  //fprintf(stderr, "loading sample count to shared memory..\n");
  sharedMem_int[1] = nsamples;

  if (prussdrv_exec_program(PRU_NUM, PRU_BIN) < 0) {
    fprintf(stderr, "Error loading %s\n", PRU_BIN);
    return 1;
  }

  //fprintf(stderr, "loaded adc reader.. waiting for PRU to initialize buffer status\n");

  //fprintf(stderr, "%d %d: %d\n", target_buffer, ADC_BUF_STATUS_IDX, sharedMem_int[ADC_BUF_STATUS_IDX]);
  while(sharedMem_int[ADC_BUF_STATUS_IDX] != ADC_BUF_STATUS_COMPLETE) {
    ;
  }

  //fprintf(stderr, "buffer is ready\n");
  uint32_t remaining_samples = nsamples;

  for(i = 0; i < nsamples; i++) {
    uint32_t mem_idx = i * 2;
    sample_buffer[sample_idx++] = sharedMem_sample[mem_idx];
    sample_buffer[sample_idx++] = sharedMem_sample[mem_idx+1];
  }

  prussdrv_pru_wait_event(PRU_EVTOUT_0);
  printf("All done\n");

  prussdrv_pru_clear_event(PRU_EVTOUT_0, PRU1_ARM_INTERRUPT);
  prussdrv_pru_disable(PRU_NUM);
  prussdrv_exit();

  return return_value;
}

int main(int argc, char **argv) {
  uint32_t i;
  uint32_t number_of_samples;
  int16_t sample_buffer[2 * MAX_SAMPLE_BUFFER]; 
  uint32_t pru_return;
  int32_t socket_desc , client_sock , c;
  struct sockaddr_in server , client;

  socket_desc = socket(AF_INET , SOCK_STREAM , 0);
  printf("created socket\n");
  i = 1;
  setsockopt(socket_desc, SOL_SOCKET, SO_REUSEADDR, &i, sizeof(i));
  server.sin_family = AF_INET;
  server.sin_addr.s_addr = INADDR_ANY;
  server.sin_port = htons(ADC_PORT);

  if( bind(socket_desc, (struct sockaddr *)&server, sizeof(server)) < 0 ) {
    printf("bind failed\n");
    return 1;
  }

  printf("bind complete\n");

  listen(socket_desc, 3);
  while(1) {  
      printf("waiting for incoming connections..");

      c = sizeof(struct sockaddr_in);
      client_sock = accept(socket_desc, (struct sockaddr *)&client, (socklen_t*)&c);

      if (client_sock < 0) {
        printf("socket accept failed!\n");
        return 1;
      }
      printf("accepted connection!\n");

      recv(client_sock, &number_of_samples, sizeof(number_of_samples), MSG_WAITALL);

      for(i = 0; i < MAX_PRU_RETRYS; i++) {
        if(grab_samples_pru(number_of_samples, sample_buffer) == 0) {
          break;
        }
        printf("pru launch failed, retrying..\n");
        sleep(.05);

      }

      if(i == MAX_PRU_RETRYS) {
        printf("exceeded max pru launch retry count, exiting..\n");
        return 1;
      }

      //for(i = 0; i < number_of_samples; i++) {
      //printf("[%d] %d +%dj\n", i, sample_buffer[2*i], sample_buffer[2*i+1]);
      //}
     
      i = ADC_BUF_LEN_SAMPLES;
      write(client_sock, &i, sizeof(i));
      for(i = 0; i < number_of_samples / ADC_BUF_LEN_SAMPLES; i++) {
        printf("sending %d bytes..\n", ADC_BUF_LEN_SAMPLES * 2 * 2);
        write(client_sock, sample_buffer + i * 2 * ADC_BUF_LEN_SAMPLES, ADC_BUF_LEN_SAMPLES * 4);
      }

      recv(client_sock, &number_of_samples, sizeof(number_of_samples), MSG_WAITALL);
      close(client_sock);
  }
  close(client_sock);
  close(socket_desc);
  return 0;
}

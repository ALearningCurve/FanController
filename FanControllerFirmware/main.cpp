#include "mbed.h"

int main() {
  // setup code here
  DigitalOut led(LED1);
  led = 0;

  while(1) {
    // main code here, to loop forever
    led = !led;
    ThisThread::sleep_for(1000ms);

  }
}

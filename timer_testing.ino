#define F_CPU 8_000_000UL

void setup() {
  // Set PB5 (digital pin 13) as output
  DDRB  = 0b00100000;
  PORTB = 0b00000000;  // Turn LED off

  // Timer0: CTC mode
  TCCR0A = (1 << WGM01);        // CTC mode (WGM01 = 1)
  TCCR0A = 0b00000101;  // Prescaler = 1024

  OCR0A = 250; // Compare value for ~16 ms
}

void loop() {
  PORTB = PORTB^(1<<5);
  toDelay();
}

void toDelay(){
  for(int i=0;i<=16;i++){
  TCNT0 = 0;
  TCCR0A = 0x0B;

  while((TIFR0 & (1<<OCR0A))==0);

  TCCR0A = 0;
  TIFR0 = 0x02;
  }
}
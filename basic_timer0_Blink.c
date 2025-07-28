#include <avr/io.h>

int main(void) {
    // Set pin 13 (PB5) as output
    DDRB |= (1 << PB5);

    // Setup Timer0
    TCCR0A = 0x00;             // Normal mode
    TCCR0B |= (1 << CS02);     // Prescaler = 256 → 62.5kHz timer tick
    TCNT0 = 0;                 // Start from 0

    while (1) {
        if (TCNT0 >= 244) {    // ~4ms @ 62.5kHz (244 ticks)
            PORTB ^= (1 << PB5); // Toggle LED
            TCNT0 = 0;           // Reset timer
        }
    }
}

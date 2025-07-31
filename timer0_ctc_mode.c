#include <avr/io.h>

int main(void) {
    // Set PB5 (pin 13) as output
    DDRB |= (1 << PB5);

    // Configure Timer0 in CTC mode
    TCCR0A |= (1 << WGM01);     // Set WGM01 for CTC mode
    TCCR0B |= (1 << CS02);      // Prescaler = 256 → 62.5 kHz timer tick

    OCR0A = 244;                // Compare match value (244 ticks = ~3.9ms)
    TCNT0 = 0;                  // Start counting from 0

    while (1) {
        if (TIFR0 & (1 << OCF0A)) {  // If compare match flag is set
            TIFR0 |= (1 << OCF0A);   // Clear the flag by writing 1
            PORTB ^= (1 << PB5);     // Toggle LED
        }
    }
}

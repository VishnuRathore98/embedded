#include <avr/io.h>

int main(void)
{
    // Set PB5 (digital pin 13) as output
    DDRB |= (1 << PB5);

    // Set Timer0 prescaler to 1024
    TCCR0A = 0x00;                         // Normal mode
    TCCR0B = (1 << CS02) | (1 << CS00);    // Prescaler = 1024

    while (1)
    {
        // Reset Timer0 counter
        TCNT0 = 0;

        // Toggle LED
        PORTB ^= (1 << PB5);

        // Wait until TCNT0 reaches ~250 (visible delay)
        while (TCNT0 < 250)
        {
            // Do nothing — just wait
        }
    }
}

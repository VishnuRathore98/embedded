#include <avr/io.h>
#include <util/delay.h>

int main(void) {
    // Set PD6 (OC0A, Pin 6) as output
    DDRD |= (1 << PD6);

    // Set Timer0 to Fast PWM mode
    TCCR0A |= (1 << WGM00) | (1 << WGM01);  // Fast PWM Mode
    TCCR0A |= (1 << COM0A1);                // Non-inverting mode (clear OC0A on compare match)
    TCCR0B |= (1 << CS01);                  // Prescaler = 8 → Fast PWM speed

    while (1) {
        // Increase brightness
        for (uint8_t duty = 0; duty < 255; duty++) {
            OCR0A = duty;   // Set duty cycle
            _delay_ms(10);
        }
        // Decrease brightness
        for (uint8_t duty = 255; duty > 0; duty--) {
            OCR0A = duty;   // Set duty cycle
            _delay_ms(10);
        }
    }
}


#include <avr/io.h>
#include <util/delay.h>

int main(void) {
    DDRD |= (1 << DDD6);  // Set PD6 (OC0A) as output

    // Fast PWM, non-inverting, prescaler 64
    TCCR0A |= (1 << WGM00) | (1 << WGM01);           // Fast PWM
    TCCR0A |= (1 << COM0A1);                         // Non-inverting mode
    TCCR0B |= (1 << CS01) | (1 << CS00);             // Prescaler 64

    while (1) {
        for (uint8_t i = 0; i < 255; i++) {
            OCR0A = i;  // Set duty cycle
            _delay_ms(5);
        }
        for (uint8_t i = 255; i > 0; i--) {
            OCR0A = i;
            _delay_ms(5);
        }
    }
}

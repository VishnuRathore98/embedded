#include <avr/io.h>

int main(void) {
    // Configure PB0 (pin 8 on Arduino Uno) as input
    DDRB &= ~(1 << DDB0);  // Clear bit 0 → input

    // Enable internal pull-up resistor on PB0
    PORTB |= (1 << PORTB0);  // Set bit 0 → pull-up on

    // Configure PB5 (Arduino Pin 13 / LED) as output
    DDRB |= (1 << DDB5);

    while (1) {
        // Check if button is pressed (PB0 reads LOW)
        if (!(PINB & (1 << PINB0))) {
            // Turn on LED
            PORTB |= (1 << PORTB5);
        } else {
            // Turn off LED
            PORTB &= ~(1 << PORTB5);
        }
    }
}

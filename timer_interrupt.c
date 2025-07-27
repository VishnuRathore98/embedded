#include <avr/io.h>
#include <avr/interrupt.h>

void setup_timer1()
{
    // Set Timer1 to Normal mode
    TCCR1A = 0;
    TCCR1B = (1 << CS12) | (1 << CS10); // Prescaler = 1024

    // Enable Timer1 overflow interrupt
    TIMSK1 |= (1 << TOIE1);

    // Initialize counter
    TCNT1 = 0;

    // Enable global interrupts
    sei();
}

// ISR = Interrupt Service Routine for Timer1 overflow
ISR(TIMER1_OVF_vect)
{
    // Toggle LED on PB5
    PORTB ^= (1 << PB5);
}

int main(void)
{
    // Set LED pin as output
    DDRB |= (1 << PB5);

    setup_timer1();

    while (1)
    {
        // Main loop can do other things here
    }
}

#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
    // Set pin 13 (PORTB5) as output
    DDRB = (DDRB) | (1 << DDB5); 
    
    while (1)
    {
    
        PORTB = (PORTB) | (1 << PORTB5);    // LED ON 
        _delay_ms(1000);                    // 1 second

        PORTB = (PORTB) & (~(1 << PORTB5)); // LED OFF
        _delay_ms(1000);
    
    }
}
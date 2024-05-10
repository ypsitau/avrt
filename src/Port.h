//------------------------------------------------------------------------------
// Port.h
//------------------------------------------------------------------------------
#ifndef AVRT_PORT_H
#define AVRT_PORT_H
#include <avr/io.h>
#include "Util.h"

namespace avrt {

//------------------------------------------------------------------------------
// InitPort
//------------------------------------------------------------------------------
template<
	uint8_t mode0	= In,	// D0: PD0(RXD/PCINT16)
	uint8_t mode1	= In,	// D1: PD1(TXD/PCINT17)
	uint8_t mode2	= In,	// D2: PD2(INT0/PCINT18)
	uint8_t mode3	= In,	// D3: PD3(INT1/OC2B/PCINT19)
	uint8_t mode4	= In,	// D4: PD4(XCK/T0/PCINT20)
	uint8_t mode5	= In,	// D5: PD5(T1/OC0B/PCINT21)
	uint8_t mode6	= In,	// D6: PD6(AIN0/OC0A/PCINT22)
	uint8_t mode7	= In,	// D7: PD7(AIN1/PCINT23)
	uint8_t mode8	= In,	// D8: PB0(ICP1/CLKO/PCINT0)
	uint8_t mode9	= In,	// D9: PB1(OC1A/PCINT1)
	uint8_t mode10	= In,	// D10: PB2(SS/OC1B/PCINT2)
	uint8_t mode11	= In,	// D11: PB3(MOSI/OC2A/PCINT3)
	uint8_t mode12	= In,	// D12: PB4(MISO/PCINT4)
	uint8_t mode13	= In,	// D13: PB5(SCK/PCINT5)
	uint8_t mode14	= In,	// D14: PC0(ADC0/PCINT8)
	uint8_t mode15	= In,	// D15: PC1(ADC1/PCINT9)
	uint8_t mode16	= In,	// D16: PC2(ADC2/PCINT10)
	uint8_t mode17	= In,	// D17: PC3(ADC3/PCINT11)
	uint8_t mode18	= In,	// D18: PC4(ADC4/SDA/PCINT12)
	uint8_t mode19	= In,	// D19: PC5(ADC5/SCL/PCINT13)
	uint8_t mode20	= In	// D20: PC6(RESET/PCINT14)
> void InitPort() {
	DDRD = ((mode0 & 1) << 0) | ((mode1 & 1) << 1) | ((mode2 & 1) << 2) | ((mode3 & 1) << 3) |
		((mode4 & 1) << 4) | ((mode5 & 1) << 5) | ((mode6 & 1) << 6) | ((mode7 & 1) << 7);
	DDRB = ((mode8 & 1) << 0) | ((mode9 & 1) << 1) | ((mode10 & 1) << 2) | ((mode11 & 1) << 3) |
		((mode12 & 1) << 4) | ((mode13 & 1) << 5);
	DDRC = ((mode14 & 1) << 0) | ((mode15 & 1) << 1) | ((mode16 & 1) << 2) | ((mode17 & 1) << 3) |
		((mode18 & 1) << 4) | ((mode19 & 1) << 5) | ((mode20 & 1) << 6);
	PORTD = ((mode0 >> 1) << 0) | ((mode1 >> 1) << 1) | ((mode2 >> 1) << 2) | ((mode3 >> 1) << 3) |
		((mode4 >> 1) << 4) | ((mode5 >> 1) << 5) | ((mode6 >> 1) << 6) | ((mode7 >> 1) << 7);
	PORTB = ((mode8 >> 1) << 0) | ((mode9 >> 1) << 1) | ((mode10 >> 1) << 2) | ((mode11 >> 1) << 3) |
		((mode12 >> 1) << 4) | ((mode13 >> 1) << 5);
	PORTC = ((mode14 >> 1) << 0) | ((mode15 >> 1) << 1) | ((mode16 >> 1) << 2) | ((mode17 >> 1) << 3) |
		((mode18 >> 1) << 4) | ((mode19 >> 1) << 5) | ((mode20 >> 1) << 6);
}

//------------------------------------------------------------------------------
// Port
//------------------------------------------------------------------------------
template<int pin_> class Port {
public:
	constexpr static int pin = pin_;
	template<int mode> void SetMode() const {
		if constexpr (pin == 0)         {
			if constexpr (mode & 1) { DDRD |= (1 << 0); } else { DDRD &= ~(1 << 0); if constexpr (mode >> 1) { PORTD |= (1 << 0); } else { PORTD &= ~(1 << 0); } }
		} else if constexpr (pin == 1)  {
			if constexpr (mode & 1) { DDRD |= (1 << 1); } else { DDRD &= ~(1 << 1); if constexpr (mode >> 1) { PORTD |= (1 << 1); } else { PORTD &= ~(1 << 1); } }
		} else if constexpr (pin == 2)  {
			if constexpr (mode & 1) { DDRD |= (1 << 2); } else { DDRD &= ~(1 << 2); if constexpr (mode >> 1) { PORTD |= (1 << 2); } else { PORTD &= ~(1 << 2); } }
		} else if constexpr (pin == 3)  {
			if constexpr (mode & 1) { DDRD |= (1 << 3); } else { DDRD &= ~(1 << 3); if constexpr (mode >> 1) { PORTD |= (1 << 3); } else { PORTD &= ~(1 << 3); } }
		} else if constexpr (pin == 4)  {
			if constexpr (mode & 1) { DDRD |= (1 << 4); } else { DDRD &= ~(1 << 4); if constexpr (mode >> 1) { PORTD |= (1 << 4); } else { PORTD &= ~(1 << 4); } }
		} else if constexpr (pin == 5)  {
			if constexpr (mode & 1) { DDRD |= (1 << 5); } else { DDRD &= ~(1 << 5); if constexpr (mode >> 1) { PORTD |= (1 << 5); } else { PORTD &= ~(1 << 5); } }
		} else if constexpr (pin == 6)  {
			if constexpr (mode & 1) { DDRD |= (1 << 6); } else { DDRD &= ~(1 << 6); if constexpr (mode >> 1) { PORTD |= (1 << 6); } else { PORTD &= ~(1 << 6); } }
		} else if constexpr (pin == 7)  {
			if constexpr (mode & 1) { DDRD |= (1 << 7); } else { DDRD &= ~(1 << 7); if constexpr (mode >> 1) { PORTD |= (1 << 7); } else { PORTD &= ~(1 << 7); } }
		} else if constexpr (pin == 8)  {
			if constexpr (mode & 1) { DDRB |= (1 << 0); } else { DDRB &= ~(1 << 0); if constexpr (mode >> 1) { PORTB |= (1 << 0); } else { PORTB &= ~(1 << 0); } }
		} else if constexpr (pin == 9)  {
			if constexpr (mode & 1) { DDRB |= (1 << 1); } else { DDRB &= ~(1 << 1); if constexpr (mode >> 1) { PORTB |= (1 << 1); } else { PORTB &= ~(1 << 1); } }
		} else if constexpr (pin == 10) {
			if constexpr (mode & 1) { DDRB |= (1 << 2); } else { DDRB &= ~(1 << 2); if constexpr (mode >> 1) { PORTB |= (1 << 2); } else { PORTB &= ~(1 << 2); } }
		} else if constexpr (pin == 11) {
			if constexpr (mode & 1) { DDRB |= (1 << 3); } else { DDRB &= ~(1 << 3); if constexpr (mode >> 1) { PORTB |= (1 << 3); } else { PORTB &= ~(1 << 3); } }
		} else if constexpr (pin == 12) {
			if constexpr (mode & 1) { DDRB |= (1 << 4); } else { DDRB &= ~(1 << 4); if constexpr (mode >> 1) { PORTB |= (1 << 4); } else { PORTB &= ~(1 << 4); } }
		} else if constexpr (pin == 13) {
			if constexpr (mode & 1) { DDRB |= (1 << 5); } else { DDRB &= ~(1 << 5); if constexpr (mode >> 1) { PORTB |= (1 << 5); } else { PORTB &= ~(1 << 5); } }
		} else if constexpr (pin == 14) {
			if constexpr (mode & 1) { DDRC |= (1 << 0); } else { DDRC &= ~(1 << 0); if constexpr (mode >> 1) { PORTC |= (1 << 0); } else { PORTC &= ~(1 << 0); } }
		} else if constexpr (pin == 15) {
			if constexpr (mode & 1) { DDRC |= (1 << 1); } else { DDRC &= ~(1 << 1); if constexpr (mode >> 1) { PORTC |= (1 << 1); } else { PORTC &= ~(1 << 1); } }
		} else if constexpr (pin == 16) {
			if constexpr (mode & 1) { DDRC |= (1 << 2); } else { DDRC &= ~(1 << 2); if constexpr (mode >> 1) { PORTC |= (1 << 2); } else { PORTC &= ~(1 << 2); } }
		} else if constexpr (pin == 17) {
			if constexpr (mode & 1) { DDRC |= (1 << 3); } else { DDRC &= ~(1 << 3); if constexpr (mode >> 1) { PORTC |= (1 << 3); } else { PORTC &= ~(1 << 3); } }
		} else if constexpr (pin == 18) {
			if constexpr (mode & 1) { DDRC |= (1 << 4); } else { DDRC &= ~(1 << 4); if constexpr (mode >> 1) { PORTC |= (1 << 4); } else { PORTC &= ~(1 << 4); } }
		} else if constexpr (pin == 19) {
			if constexpr (mode & 1) { DDRC |= (1 << 5); } else { DDRC &= ~(1 << 5); if constexpr (mode >> 1) { PORTC |= (1 << 5); } else { PORTC &= ~(1 << 5); } }
		} else if constexpr (pin == 20) {
			if constexpr (mode & 1) { DDRC |= (1 << 6); } else { DDRC &= ~(1 << 6); if constexpr (mode >> 1) { PORTC |= (1 << 6); } else { PORTC &= ~(1 << 6); } }
		}
	}
	template<Logic logic> void OutputDigital() const {
		if constexpr (pin == 0)         { if constexpr (logic) { PORTD |= (1 << 0); } else { PORTD &= ~(1 << 0); }
		} else if constexpr (pin == 1)  { if constexpr (logic) { PORTD |= (1 << 1); } else { PORTD &= ~(1 << 1); }
		} else if constexpr (pin == 2)  { if constexpr (logic) { PORTD |= (1 << 2); } else { PORTD &= ~(1 << 2); }
		} else if constexpr (pin == 3)  { if constexpr (logic) { PORTD |= (1 << 3); } else { PORTD &= ~(1 << 3); }
		} else if constexpr (pin == 4)  { if constexpr (logic) { PORTD |= (1 << 4); } else { PORTD &= ~(1 << 4); }
		} else if constexpr (pin == 5)  { if constexpr (logic) { PORTD |= (1 << 5); } else { PORTD &= ~(1 << 5); }
		} else if constexpr (pin == 6)  { if constexpr (logic) { PORTD |= (1 << 6); } else { PORTD &= ~(1 << 6); }
		} else if constexpr (pin == 7)  { if constexpr (logic) { PORTD |= (1 << 7); } else { PORTD &= ~(1 << 7); }
		} else if constexpr (pin == 8)  { if constexpr (logic) { PORTB |= (1 << 0); } else { PORTB &= ~(1 << 0); }
		} else if constexpr (pin == 9)  { if constexpr (logic) { PORTB |= (1 << 1); } else { PORTB &= ~(1 << 1); }
		} else if constexpr (pin == 10) { if constexpr (logic) { PORTB |= (1 << 2); } else { PORTB &= ~(1 << 2); }
		} else if constexpr (pin == 11) { if constexpr (logic) { PORTB |= (1 << 3); } else { PORTB &= ~(1 << 3); }
		} else if constexpr (pin == 12) { if constexpr (logic) { PORTB |= (1 << 4); } else { PORTB &= ~(1 << 4); }
		} else if constexpr (pin == 13) { if constexpr (logic) { PORTB |= (1 << 5); } else { PORTB &= ~(1 << 5); }
		} else if constexpr (pin == 14) { if constexpr (logic) { PORTC |= (1 << 0); } else { PORTC &= ~(1 << 0); }
		} else if constexpr (pin == 15) { if constexpr (logic) { PORTC |= (1 << 1); } else { PORTC &= ~(1 << 1); }
		} else if constexpr (pin == 16) { if constexpr (logic) { PORTC |= (1 << 2); } else { PORTC &= ~(1 << 2); }
		} else if constexpr (pin == 17) { if constexpr (logic) { PORTC |= (1 << 3); } else { PORTC &= ~(1 << 3); }
		} else if constexpr (pin == 18) { if constexpr (logic) { PORTC |= (1 << 4); } else { PORTC &= ~(1 << 4); }
		} else if constexpr (pin == 19) { if constexpr (logic) { PORTC |= (1 << 5); } else { PORTC &= ~(1 << 5); }
		} else if constexpr (pin == 20) { if constexpr (logic) { PORTC |= (1 << 6); } else { PORTC &= ~(1 << 6); }
		}
	}
	void OutputDigital(Logic logic) const {
		if constexpr (pin == 0) { if (logic) { PORTD |= (1 << 0); } else { PORTD &= ~(1 << 0); }
		} else if (pin == 1)    { if (logic) { PORTD |= (1 << 1); } else { PORTD &= ~(1 << 1); }
		} else if (pin == 2)    { if (logic) { PORTD |= (1 << 2); } else { PORTD &= ~(1 << 2); }
		} else if (pin == 3)    { if (logic) { PORTD |= (1 << 3); } else { PORTD &= ~(1 << 3); }
		} else if (pin == 4)    { if (logic) { PORTD |= (1 << 4); } else { PORTD &= ~(1 << 4); }
		} else if (pin == 5)    { if (logic) { PORTD |= (1 << 5); } else { PORTD &= ~(1 << 5); }
		} else if (pin == 6)    { if (logic) { PORTD |= (1 << 6); } else { PORTD &= ~(1 << 6); }
		} else if (pin == 7)    { if (logic) { PORTD |= (1 << 7); } else { PORTD &= ~(1 << 7); }
		} else if (pin == 8)    { if (logic) { PORTB |= (1 << 0); } else { PORTB &= ~(1 << 0); }
		} else if (pin == 9)    { if (logic) { PORTB |= (1 << 1); } else { PORTB &= ~(1 << 1); }
		} else if (pin == 10)   { if (logic) { PORTB |= (1 << 2); } else { PORTB &= ~(1 << 2); }
		} else if (pin == 11)   { if (logic) { PORTB |= (1 << 3); } else { PORTB &= ~(1 << 3); }
		} else if (pin == 12)   { if (logic) { PORTB |= (1 << 4); } else { PORTB &= ~(1 << 4); }
		} else if (pin == 13)   { if (logic) { PORTB |= (1 << 5); } else { PORTB &= ~(1 << 5); }
		} else if (pin == 14)   { if (logic) { PORTC |= (1 << 0); } else { PORTC &= ~(1 << 0); }
		} else if (pin == 15)   { if (logic) { PORTC |= (1 << 1); } else { PORTC &= ~(1 << 1); }
		} else if (pin == 16)   { if (logic) { PORTC |= (1 << 2); } else { PORTC &= ~(1 << 2); }
		} else if (pin == 17)   { if (logic) { PORTC |= (1 << 3); } else { PORTC &= ~(1 << 3); }
		} else if (pin == 18)   { if (logic) { PORTC |= (1 << 4); } else { PORTC &= ~(1 << 4); }
		} else if (pin == 19)   { if (logic) { PORTC |= (1 << 5); } else { PORTC &= ~(1 << 5); }
		} else if (pin == 20)   { if (logic) { PORTC |= (1 << 6); } else { PORTC &= ~(1 << 6); }
		}
	}
	void ToggleDigital() const {
		if constexpr (pin == 0)         { PORTD ^= (1 << 0);
		} else if constexpr (pin == 1)  { PORTD ^= (1 << 1);
		} else if constexpr (pin == 2)  { PORTD ^= (1 << 2);
		} else if constexpr (pin == 3)  { PORTD ^= (1 << 3);
		} else if constexpr (pin == 4)  { PORTD ^= (1 << 4);
		} else if constexpr (pin == 5)  { PORTD ^= (1 << 5);
		} else if constexpr (pin == 6)  { PORTD ^= (1 << 6);
		} else if constexpr (pin == 7)  { PORTD ^= (1 << 7);
		} else if constexpr (pin == 8)  { PORTB ^= (1 << 0);
		} else if constexpr (pin == 9)  { PORTB ^= (1 << 1);
		} else if constexpr (pin == 10) { PORTB ^= (1 << 2);
		} else if constexpr (pin == 11) { PORTB ^= (1 << 3);
		} else if constexpr (pin == 12) { PORTB ^= (1 << 4);
		} else if constexpr (pin == 13) { PORTB ^= (1 << 5);
		} else if constexpr (pin == 14) { PORTC ^= (1 << 0);
		} else if constexpr (pin == 15) { PORTC ^= (1 << 1);
		} else if constexpr (pin == 16) { PORTC ^= (1 << 2);
		} else if constexpr (pin == 17) { PORTC ^= (1 << 3);
		} else if constexpr (pin == 18) { PORTC ^= (1 << 4);
		} else if constexpr (pin == 19) { PORTC ^= (1 << 5);
		} else if constexpr (pin == 20) { PORTC ^= (1 << 6);
		}
	}
	Logic InputDigital() const {
		if constexpr (pin == 0) return (PIND >> 0) & 1;
		else if (pin == 1)      return (PIND >> 1) & 1;
		else if (pin == 2)      return (PIND >> 2) & 1;
		else if (pin == 3)      return (PIND >> 3) & 1;
		else if (pin == 4)      return (PIND >> 4) & 1;
		else if (pin == 5)      return (PIND >> 5) & 1;
		else if (pin == 6)      return (PIND >> 6) & 1;
		else if (pin == 7)      return (PIND >> 7) & 1;
		else if (pin == 8)      return (PINB >> 0) & 1;
		else if (pin == 9)      return (PINB >> 1) & 1;
		else if (pin == 10)     return (PINB >> 2) & 1;
		else if (pin == 11)     return (PINB >> 3) & 1;
		else if (pin == 12)     return (PINB >> 4) & 1;
		else if (pin == 13)     return (PINB >> 5) & 1;
		else if (pin == 14)     return (PINC >> 0) & 1;
		else if (pin == 15)     return (PINC >> 1) & 1;
		else if (pin == 16)     return (PINC >> 2) & 1;
		else if (pin == 17)     return (PINC >> 3) & 1;
		else if (pin == 18)     return (PINC >> 4) & 1;
		else if (pin == 19)     return (PINC >> 5) & 1;
		else if (pin == 20)     return (PINC >> 6) & 1;
		return Low;
	}
	uint8_t ProbeDigital() const {
		if constexpr (pin == 0) return PIND & (1 << 0);
		else if (pin == 1)      return PIND & (1 << 1);
		else if (pin == 2)      return PIND & (1 << 2);
		else if (pin == 3)      return PIND & (1 << 3);
		else if (pin == 4)      return PIND & (1 << 4);
		else if (pin == 5)      return PIND & (1 << 5);
		else if (pin == 6)      return PIND & (1 << 6);
		else if (pin == 7)      return PIND & (1 << 7);
		else if (pin == 8)      return PINB & (1 << 0);
		else if (pin == 9)      return PINB & (1 << 1);
		else if (pin == 10)     return PINB & (1 << 2);
		else if (pin == 11)     return PINB & (1 << 3);
		else if (pin == 12)     return PINB & (1 << 4);
		else if (pin == 13)     return PINB & (1 << 5);
		else if (pin == 14)     return PINC & (1 << 0);
		else if (pin == 15)     return PINC & (1 << 1);
		else if (pin == 16)     return PINC & (1 << 2);
		else if (pin == 17)     return PINC & (1 << 3);
		else if (pin == 18)     return PINC & (1 << 4);
		else if (pin == 19)     return PINC & (1 << 5);
		else if (pin == 20)     return PINC & (1 << 6);
		return 0x00;
	}
	void EnablePWM() const {
		if constexpr (pin == 3) { // PD3 is controlled by OC2B
			TCCR2A |= (1 << COM2B1);
		} else if (pin == 5) { // PD5 is controlled by OC0B
			TCCR0A |= (1 << COM0B1);
		} else if (pin == 6) { // PD6 is controlled by OC0A
			TCCR0A |= (1 << COM0A1);
		} else if (pin == 9) { // PB1 is controlled by OC1A
			TCCR1A |= (1 << COM1A1);
		} else if (pin == 10) { // PB2 is controlled by OC1B
			TCCR1A |= (1 << COM1B1);
		} else if (pin == 11) { // PB3 is controlled by OC2A
			TCCR2A |= (1 << COM2A1);
		}
	}
	void DisablePWM() const {
		if constexpr (pin == 3) { // PD3 is controlled by OC2B
			TCCR2A &= ~(1 << COM2B1);
		} else if (pin == 5) { // PD5 is controlled by OC0B
			TCCR0A &= ~(1 << COM0B1);
		} else if (pin == 6) { // PD6 is controlled by OC0A
			TCCR0A &= ~(1 << COM0A1);
		} else if (pin == 9) { // PB1 is controlled by OC1A
			TCCR1A &= ~(1 << COM1A1);
		} else if (pin == 10) { // PB2 is controlled by OC1B
			TCCR1A &= ~(1 << COM1B1);
		} else if (pin == 11) { // PB3 is controlled by OC2A
			TCCR2A &= ~(1 << COM2A1);
		}
	}
	void OutputPWM(uint8_t value) const {
		if constexpr (pin == 3) { // PD3 is controlled by OC2B
			OCR2B = value;
		} else if (pin == 5) { // PD5 is controlled by OC0B
			OCR0B = value;
		} else if (pin == 6) { // PD6 is controlled by OC0A
			OCR0A = value;
		} else if (pin == 9) { // PB1 is controlled by OC1A
			OCR1A = value;
		} else if (pin == 10) { // PB2 is controlled by OC1B
			OCR1B = value;
		} else if (pin == 11) { // PB3 is controlled by OC2A
			OCR2A = value;
		}
	}
	void OutputFinePWM(uint8_t value) const {
		if (value == 0) {
			DisablePWM();
			OutputDigital<Low>();
		} else if (value == 255) {
			DisablePWM();
			OutputDigital<High>();
		} else {
			EnablePWM();
			OutputPWM(value);
		}
	}
	static uint8_t PinToADCChannel(int pin) { return static_cast<uint8_t>(pin - A0); }
	void StartADC() const {
		ADMUX = ADMUX & (~0b1111 << MUX0) | (PinToADCChannel(pin) << MUX0);
		ADCSRA |= (0b1 << ADSC);	// ADSC: ADC Start Conversion = 1
	}
	void WaitADC() const {
		while (ADCSRA & (0b1 << ADSC)) ;
	}
	static uint16_t GetADC() { return ADC; }
	static uint8_t GetADC_8bit() { return ADCH; }
	uint16_t InputAnalog() const {
		ADMUX = ADMUX & (~0b1111 << MUX0) | (PinToADCChannel(pin) << MUX0);
		ADCSRA |= (0b1 << ADSC);	// ADSC: ADC Start Conversion = 1
		while (ADCSRA & (0b1 << ADSC)) ;
		return ADC;
	}
	uint8_t InputAnalog_8bit() const {
		ADMUX = ADMUX & (~0b1111 << MUX0) | (PinToADCChannel(pin) << MUX0);
		ADCSRA |= (0b1 << ADSC);	// ADSC: ADC Start Conversion = 1
		while (ADCSRA & (0b1 << ADSC)) ;
		return ADCH;
	}
};

}

#endif

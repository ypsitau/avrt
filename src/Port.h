//------------------------------------------------------------------------------
// Port.h
//------------------------------------------------------------------------------
#ifndef AVRT_PORT_H
#define AVRT_PORT_H
#include <avr/pgmspace.h>
#include <avr/io.h>
#include "Util.h"

namespace avrt {

//------------------------------------------------------------------------------
// Ports
//------------------------------------------------------------------------------
class Ports {
public:
	static uint8_t dataDDRD;
	static uint8_t dataDDRB;
	static uint8_t dataDDRC;
	static uint8_t dataPORTD;
	static uint8_t dataPORTB;
	static uint8_t dataPORTC;
public:
	static void Init() {
		DDRD = dataDDRD;
		DDRB = dataDDRB;
		DDRC = dataDDRC;
		PORTD =	dataPORTD;
		PORTB = dataPORTB;
		PORTC =	dataPORTC;
	}
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
	> static void ChangeMode() {
		DDRD = dataDDRD =
			((mode0 & 1) << 0) | ((mode1 & 1) << 1) | ((mode2 & 1) << 2) | ((mode3 & 1) << 3) |
			((mode4 & 1) << 4) | ((mode5 & 1) << 5) | ((mode6 & 1) << 6) | ((mode7 & 1) << 7);
		DDRB = dataDDRB =
			((mode8 & 1) << 0) | ((mode9 & 1) << 1) | ((mode10 & 1) << 2) | ((mode11 & 1) << 3) |
			((mode12 & 1) << 4) | ((mode13 & 1) << 5);
		DDRC = dataDDRC =
			((mode14 & 1) << 0) | ((mode15 & 1) << 1) | ((mode16 & 1) << 2) | ((mode17 & 1) << 3) |
			((mode18 & 1) << 4) | ((mode19 & 1) << 5) | ((mode20 & 1) << 6);
		PORTD =	dataPORTD =
			((mode0 >> 1) << 0) | ((mode1 >> 1) << 1) | ((mode2 >> 1) << 2) | ((mode3 >> 1) << 3) |
			((mode4 >> 1) << 4) | ((mode5 >> 1) << 5) | ((mode6 >> 1) << 6) | ((mode7 >> 1) << 7);
		PORTB = dataPORTB =
			((mode8 >> 1) << 0) | ((mode9 >> 1) << 1) | ((mode10 >> 1) << 2) | ((mode11 >> 1) << 3) |
			((mode12 >> 1) << 4) | ((mode13 >> 1) << 5);
		PORTC =	dataPORTC =
			((mode14 >> 1) << 0) | ((mode15 >> 1) << 1) | ((mode16 >> 1) << 2) | ((mode17 >> 1) << 3) |
			((mode18 >> 1) << 4) | ((mode19 >> 1) << 5) | ((mode20 >> 1) << 6);
	}
#if 0
	void ChangeMode(uint8_t pin, uint8_t mode) {
		if (pin == 0) {
			if (mode & 1) { Ports::dataDDRD |= (1 << 0); } else { Ports::dataDDRD &= ~(1 << 0); }
			if (mode >> 1) { Ports::dataPORTD |= (1 << 0); } else { Ports::dataPORTD &= ~(1 << 0); }
		} else if (pin == 1)  {
			if (mode & 1) { Ports::dataDDRD |= (1 << 1); } else { Ports::dataDDRD &= ~(1 << 1); }
			if (mode >> 1) { Ports::dataPORTD |= (1 << 1); } else { Ports::dataPORTD &= ~(1 << 1); }
		} else if (pin == 2)  {
			if (mode & 1) { Ports::dataDDRD |= (1 << 2); } else { Ports::dataDDRD &= ~(1 << 2); }
			if (mode >> 1) { Ports::dataPORTD |= (1 << 2); } else { Ports::dataPORTD &= ~(1 << 2); }
		} else if (pin == 3)  {
			if (mode & 1) { Ports::dataDDRD |= (1 << 3); } else { Ports::dataDDRD &= ~(1 << 3); }
			if (mode >> 1) { Ports::dataPORTD |= (1 << 3); } else { Ports::dataPORTD &= ~(1 << 3); }
		} else if (pin == 4)  {
			if (mode & 1) { Ports::dataDDRD |= (1 << 4); } else { Ports::dataDDRD &= ~(1 << 4); }
			if (mode >> 1) { Ports::dataPORTD |= (1 << 4); } else { Ports::dataPORTD &= ~(1 << 4); }
		} else if (pin == 5)  {
			if (mode & 1) { Ports::dataDDRD |= (1 << 5); } else { Ports::dataDDRD &= ~(1 << 5); }
			if (mode >> 1) { Ports::dataPORTD |= (1 << 5); } else { Ports::dataPORTD &= ~(1 << 5); }
		} else if (pin == 6)  {
			if (mode & 1) { Ports::dataDDRD |= (1 << 6); } else { Ports::dataDDRD &= ~(1 << 6); }
			if (mode >> 1) { Ports::dataPORTD |= (1 << 6); } else { Ports::dataPORTD &= ~(1 << 6); }
		} else if (pin == 7)  {
			if (mode & 1) { Ports::dataDDRD |= (1 << 7); } else { Ports::dataDDRD &= ~(1 << 7); }
			if (mode >> 1) { Ports::dataPORTD |= (1 << 7); } else { Ports::dataPORTD &= ~(1 << 7); }
		} else if (pin == 8)  {
			if (mode & 1) { Ports::dataDDRB |= (1 << 0); } else { Ports::dataDDRB &= ~(1 << 0); }
			if (mode >> 1) { Ports::dataPORTB |= (1 << 0); } else { Ports::dataPORTB &= ~(1 << 0); }
		} else if (pin == 9)  {
			if (mode & 1) { Ports::dataDDRB |= (1 << 1); } else { Ports::dataDDRB &= ~(1 << 1); }
			if (mode >> 1) { Ports::dataPORTB |= (1 << 1); } else { Ports::dataPORTB &= ~(1 << 1); }
		} else if (pin == 10) {
			if (mode & 1) { Ports::dataDDRB |= (1 << 2); } else { Ports::dataDDRB &= ~(1 << 2); }
			if (mode >> 1) { Ports::dataPORTB |= (1 << 2); } else { Ports::dataPORTB &= ~(1 << 2); }
		} else if (pin == 11) {
			if (mode & 1) { Ports::dataDDRB |= (1 << 3); } else { Ports::dataDDRB &= ~(1 << 3); }
			if (mode >> 1) { Ports::dataPORTB |= (1 << 3); } else { Ports::dataPORTB &= ~(1 << 3); }
		} else if (pin == 12) {
			if (mode & 1) { Ports::dataDDRB |= (1 << 4); } else { Ports::dataDDRB &= ~(1 << 4); }
			if (mode >> 1) { Ports::dataPORTB |= (1 << 4); } else { Ports::dataPORTB &= ~(1 << 4); }
		} else if (pin == 13) {
			if (mode & 1) { Ports::dataDDRB |= (1 << 5); } else { Ports::dataDDRB &= ~(1 << 5); }
			if (mode >> 1) { Ports::dataPORTB |= (1 << 5); } else { Ports::dataPORTB &= ~(1 << 5); }
		} else if (pin == 14) {
			if (mode & 1) { Ports::dataDDRC |= (1 << 0); } else { Ports::dataDDRC &= ~(1 << 0); }
			if (mode >> 1) { Ports::dataPORTC |= (1 << 0); } else { Ports::dataPORTC &= ~(1 << 0); }
		} else if (pin == 15) {
			if (mode & 1) { Ports::dataDDRC |= (1 << 1); } else { Ports::dataDDRC &= ~(1 << 1); }
			if (mode >> 1) { Ports::dataPORTC |= (1 << 1); } else { Ports::dataPORTC &= ~(1 << 1); }
		} else if (pin == 16) {
			if (mode & 1) { Ports::dataDDRC |= (1 << 2); } else { Ports::dataDDRC &= ~(1 << 2); }
			if (mode >> 1) { Ports::dataPORTC |= (1 << 2); } else { Ports::dataPORTC &= ~(1 << 2); }
		} else if (pin == 17) {
			if (mode & 1) { Ports::dataDDRC |= (1 << 3); } else { Ports::dataDDRC &= ~(1 << 3); }
			if (mode >> 1) { Ports::dataPORTC |= (1 << 3); } else { Ports::dataPORTC &= ~(1 << 3); }
		} else if (pin == 18) {
			if (mode & 1) { Ports::dataDDRC |= (1 << 4); } else { Ports::dataDDRC &= ~(1 << 4); }
			if (mode >> 1) { Ports::dataPORTC |= (1 << 4); } else { Ports::dataPORTC &= ~(1 << 4); }
		} else if (pin == 19) {
			if (mode & 1) { Ports::dataDDRC |= (1 << 5); } else { Ports::dataDDRC &= ~(1 << 5); }
			if (mode >> 1) { Ports::dataPORTC |= (1 << 5); } else { Ports::dataPORTC &= ~(1 << 5); }
		} else if (pin == 20) {
			if (mode & 1) { Ports::dataDDRC |= (1 << 6); } else { Ports::dataDDRC &= ~(1 << 6); }
			if (mode >> 1) { Ports::dataPORTC |= (1 << 6); } else { Ports::dataPORTC &= ~(1 << 6); }
		}
	}
#endif
	static void DigitalHigh(uint8_t pin) {
		if (pin == 0)		{ PORTD |= (1 << 0); }
		else if (pin == 1)	{ PORTD |= (1 << 1); }
		else if (pin == 2)	{ PORTD |= (1 << 2); }
		else if (pin == 3)	{ PORTD |= (1 << 3); }
		else if (pin == 4)	{ PORTD |= (1 << 4); }
		else if (pin == 5)	{ PORTD |= (1 << 5); }
		else if (pin == 6)	{ PORTD |= (1 << 6); }
		else if (pin == 7)	{ PORTD |= (1 << 7); }
		else if (pin == 8)	{ PORTB |= (1 << 0); }
		else if (pin == 9)	{ PORTB |= (1 << 1); }
		else if (pin == 10)	{ PORTB |= (1 << 2); }
		else if (pin == 11)	{ PORTB |= (1 << 3); }
		else if (pin == 12)	{ PORTB |= (1 << 4); }
		else if (pin == 13)	{ PORTB |= (1 << 5); }
		else if (pin == 14)	{ PORTC |= (1 << 0); }
		else if (pin == 15)	{ PORTC |= (1 << 1); }
		else if (pin == 16)	{ PORTC |= (1 << 2); }
		else if (pin == 17)	{ PORTC |= (1 << 3); }
		else if (pin == 18)	{ PORTC |= (1 << 4); }
		else if (pin == 19)	{ PORTC |= (1 << 5); }
		else if (pin == 20)	{ PORTC |= (1 << 6); }
	}
	static DigitalLow(uint8_t pin) {
		if (pin == 0)		{ PORTD &= ~(1 << 0); }
		else if (pin == 1)	{ PORTD &= ~(1 << 1); }
		else if (pin == 2)	{ PORTD &= ~(1 << 2); }
		else if (pin == 3)	{ PORTD &= ~(1 << 3); }
		else if (pin == 4)	{ PORTD &= ~(1 << 4); }
		else if (pin == 5)	{ PORTD &= ~(1 << 5); }
		else if (pin == 6)	{ PORTD &= ~(1 << 6); }
		else if (pin == 7)	{ PORTD &= ~(1 << 7); }
		else if (pin == 8)	{ PORTB &= ~(1 << 0); }
		else if (pin == 9)	{ PORTB &= ~(1 << 1); }
		else if (pin == 10)	{ PORTB &= ~(1 << 2); }
		else if (pin == 11)	{ PORTB &= ~(1 << 3); }
		else if (pin == 12)	{ PORTB &= ~(1 << 4); }
		else if (pin == 13)	{ PORTB &= ~(1 << 5); }
		else if (pin == 14)	{ PORTC &= ~(1 << 0); }
		else if (pin == 15)	{ PORTC &= ~(1 << 1); }
		else if (pin == 16)	{ PORTC &= ~(1 << 2); }
		else if (pin == 17)	{ PORTC &= ~(1 << 3); }
		else if (pin == 18)	{ PORTC &= ~(1 << 4); }
		else if (pin == 19)	{ PORTC &= ~(1 << 5); }
		else if (pin == 20)	{ PORTC &= ~(1 << 6); }
	}
	static void DigitalOutput(uint8_t pin, Logic logic) {
		if (logic) {
			DigitalHigh(pin);
		} else {
			DigitalLow(pin);
		}
	}
	static Logic DigitalInput(uint8_t pin) {
		if (pin == 0)			return (PIND >> 0) & 1;
		else if (pin == 1)		return (PIND >> 1) & 1;
		else if (pin == 2)		return (PIND >> 2) & 1;
		else if (pin == 3)		return (PIND >> 3) & 1;
		else if (pin == 4)		return (PIND >> 4) & 1;
		else if (pin == 5)		return (PIND >> 5) & 1;
		else if (pin == 6)		return (PIND >> 6) & 1;
		else if (pin == 7)		return (PIND >> 7) & 1;
		else if (pin == 8)		return (PINB >> 0) & 1;
		else if (pin == 9)		return (PINB >> 1) & 1;
		else if (pin == 10)		return (PINB >> 2) & 1;
		else if (pin == 11)		return (PINB >> 3) & 1;
		else if (pin == 12)		return (PINB >> 4) & 1;
		else if (pin == 13)		return (PINB >> 5) & 1;
		else if (pin == 14)		return (PINC >> 0) & 1;
		else if (pin == 15)		return (PINC >> 1) & 1;
		else if (pin == 16)		return (PINC >> 2) & 1;
		else if (pin == 17)		return (PINC >> 3) & 1;
		else if (pin == 18)		return (PINC >> 4) & 1;
		else if (pin == 19)		return (PINC >> 5) & 1;
		else if (pin == 20)		return (PINC >> 6) & 1;
		return Low;
	}
	static uint8_t DigitalProbe(uint8_t pin) {
		if (pin == 0)			return PIND & (1 << 0);
		else if (pin == 1)		return PIND & (1 << 1);
		else if (pin == 2)		return PIND & (1 << 2);
		else if (pin == 3)		return PIND & (1 << 3);
		else if (pin == 4)		return PIND & (1 << 4);
		else if (pin == 5)		return PIND & (1 << 5);
		else if (pin == 6)		return PIND & (1 << 6);
		else if (pin == 7)		return PIND & (1 << 7);
		else if (pin == 8)		return PINB & (1 << 0);
		else if (pin == 9)		return PINB & (1 << 1);
		else if (pin == 10)		return PINB & (1 << 2);
		else if (pin == 11)		return PINB & (1 << 3);
		else if (pin == 12)		return PINB & (1 << 4);
		else if (pin == 13)		return PINB & (1 << 5);
		else if (pin == 14)		return PINC & (1 << 0);
		else if (pin == 15)		return PINC & (1 << 1);
		else if (pin == 16)		return PINC & (1 << 2);
		else if (pin == 17)		return PINC & (1 << 3);
		else if (pin == 18)		return PINC & (1 << 4);
		else if (pin == 19)		return PINC & (1 << 5);
		else if (pin == 20)		return PINC & (1 << 6);
		return 0x00;
	}
};

//------------------------------------------------------------------------------
// Port
//------------------------------------------------------------------------------
template<int pin_, int mode_ = In> class Port {
public:
	constexpr static uint8_t pin = pin_;
	constexpr static uint8_t mode = mode_;
	template<int n> constexpr static bool false_v = false;
public:
	Port() {
		if constexpr (pin == 0) {
			if constexpr (mode & 1) { Ports::dataDDRD |= (1 << 0); } else { Ports::dataDDRD &= ~(1 << 0); }
			if constexpr (mode >> 1) { Ports::dataPORTD |= (1 << 0); } else { Ports::dataPORTD &= ~(1 << 0); }
		} else if constexpr (pin == 1)  {
			if constexpr (mode & 1) { Ports::dataDDRD |= (1 << 1); } else { Ports::dataDDRD &= ~(1 << 1); }
			if constexpr (mode >> 1) { Ports::dataPORTD |= (1 << 1); } else { Ports::dataPORTD &= ~(1 << 1); }
		} else if constexpr (pin == 2)  {
			if constexpr (mode & 1) { Ports::dataDDRD |= (1 << 2); } else { Ports::dataDDRD &= ~(1 << 2); }
			if constexpr (mode >> 1) { Ports::dataPORTD |= (1 << 2); } else { Ports::dataPORTD &= ~(1 << 2); }
		} else if constexpr (pin == 3)  {
			if constexpr (mode & 1) { Ports::dataDDRD |= (1 << 3); } else { Ports::dataDDRD &= ~(1 << 3); }
			if constexpr (mode >> 1) { Ports::dataPORTD |= (1 << 3); } else { Ports::dataPORTD &= ~(1 << 3); }
		} else if constexpr (pin == 4)  {
			if constexpr (mode & 1) { Ports::dataDDRD |= (1 << 4); } else { Ports::dataDDRD &= ~(1 << 4); }
			if constexpr (mode >> 1) { Ports::dataPORTD |= (1 << 4); } else { Ports::dataPORTD &= ~(1 << 4); }
		} else if constexpr (pin == 5)  {
			if constexpr (mode & 1) { Ports::dataDDRD |= (1 << 5); } else { Ports::dataDDRD &= ~(1 << 5); }
			if constexpr (mode >> 1) { Ports::dataPORTD |= (1 << 5); } else { Ports::dataPORTD &= ~(1 << 5); }
		} else if constexpr (pin == 6)  {
			if constexpr (mode & 1) { Ports::dataDDRD |= (1 << 6); } else { Ports::dataDDRD &= ~(1 << 6); }
			if constexpr (mode >> 1) { Ports::dataPORTD |= (1 << 6); } else { Ports::dataPORTD &= ~(1 << 6); }
		} else if constexpr (pin == 7)  {
			if constexpr (mode & 1) { Ports::dataDDRD |= (1 << 7); } else { Ports::dataDDRD &= ~(1 << 7); }
			if constexpr (mode >> 1) { Ports::dataPORTD |= (1 << 7); } else { Ports::dataPORTD &= ~(1 << 7); }
		} else if constexpr (pin == 8)  {
			if constexpr (mode & 1) { Ports::dataDDRB |= (1 << 0); } else { Ports::dataDDRB &= ~(1 << 0); }
			if constexpr (mode >> 1) { Ports::dataPORTB |= (1 << 0); } else { Ports::dataPORTB &= ~(1 << 0); }
		} else if constexpr (pin == 9)  {
			if constexpr (mode & 1) { Ports::dataDDRB |= (1 << 1); } else { Ports::dataDDRB &= ~(1 << 1); }
			if constexpr (mode >> 1) { Ports::dataPORTB |= (1 << 1); } else { Ports::dataPORTB &= ~(1 << 1); }
		} else if constexpr (pin == 10) {
			if constexpr (mode & 1) { Ports::dataDDRB |= (1 << 2); } else { Ports::dataDDRB &= ~(1 << 2); }
			if constexpr (mode >> 1) { Ports::dataPORTB |= (1 << 2); } else { Ports::dataPORTB &= ~(1 << 2); }
		} else if constexpr (pin == 11) {
			if constexpr (mode & 1) { Ports::dataDDRB |= (1 << 3); } else { Ports::dataDDRB &= ~(1 << 3); }
			if constexpr (mode >> 1) { Ports::dataPORTB |= (1 << 3); } else { Ports::dataPORTB &= ~(1 << 3); }
		} else if constexpr (pin == 12) {
			if constexpr (mode & 1) { Ports::dataDDRB |= (1 << 4); } else { Ports::dataDDRB &= ~(1 << 4); }
			if constexpr (mode >> 1) { Ports::dataPORTB |= (1 << 4); } else { Ports::dataPORTB &= ~(1 << 4); }
		} else if constexpr (pin == 13) {
			if constexpr (mode & 1) { Ports::dataDDRB |= (1 << 5); } else { Ports::dataDDRB &= ~(1 << 5); }
			if constexpr (mode >> 1) { Ports::dataPORTB |= (1 << 5); } else { Ports::dataPORTB &= ~(1 << 5); }
		} else if constexpr (pin == 14) {
			if constexpr (mode & 1) { Ports::dataDDRC |= (1 << 0); } else { Ports::dataDDRC &= ~(1 << 0); }
			if constexpr (mode >> 1) { Ports::dataPORTC |= (1 << 0); } else { Ports::dataPORTC &= ~(1 << 0); }
		} else if constexpr (pin == 15) {
			if constexpr (mode & 1) { Ports::dataDDRC |= (1 << 1); } else { Ports::dataDDRC &= ~(1 << 1); }
			if constexpr (mode >> 1) { Ports::dataPORTC |= (1 << 1); } else { Ports::dataPORTC &= ~(1 << 1); }
		} else if constexpr (pin == 16) {
			if constexpr (mode & 1) { Ports::dataDDRC |= (1 << 2); } else { Ports::dataDDRC &= ~(1 << 2); }
			if constexpr (mode >> 1) { Ports::dataPORTC |= (1 << 2); } else { Ports::dataPORTC &= ~(1 << 2); }
		} else if constexpr (pin == 17) {
			if constexpr (mode & 1) { Ports::dataDDRC |= (1 << 3); } else { Ports::dataDDRC &= ~(1 << 3); }
			if constexpr (mode >> 1) { Ports::dataPORTC |= (1 << 3); } else { Ports::dataPORTC &= ~(1 << 3); }
		} else if constexpr (pin == 18) {
			if constexpr (mode & 1) { Ports::dataDDRC |= (1 << 4); } else { Ports::dataDDRC &= ~(1 << 4); }
			if constexpr (mode >> 1) { Ports::dataPORTC |= (1 << 4); } else { Ports::dataPORTC &= ~(1 << 4); }
		} else if constexpr (pin == 19) {
			if constexpr (mode & 1) { Ports::dataDDRC |= (1 << 5); } else { Ports::dataDDRC &= ~(1 << 5); }
			if constexpr (mode >> 1) { Ports::dataPORTC |= (1 << 5); } else { Ports::dataPORTC &= ~(1 << 5); }
		} else if constexpr (pin == 20) {
			if constexpr (mode & 1) { Ports::dataDDRC |= (1 << 6); } else { Ports::dataDDRC &= ~(1 << 6); }
			if constexpr (mode >> 1) { Ports::dataPORTC |= (1 << 6); } else { Ports::dataPORTC &= ~(1 << 6); }
		}
	}
	template<int mode> void ChangeMode() const {
		if constexpr (pin == 0)         {
			if constexpr (mode & 1) { DDRD |= (1 << 0); } else { DDRD &= ~(1 << 0); }
			if constexpr (mode >> 1) { PORTD |= (1 << 0); } else { PORTD &= ~(1 << 0); }
		} else if constexpr (pin == 1)  {
			if constexpr (mode & 1) { DDRD |= (1 << 1); } else { DDRD &= ~(1 << 1); }
			if constexpr (mode >> 1) { PORTD |= (1 << 1); } else { PORTD &= ~(1 << 1); }
		} else if constexpr (pin == 2)  {
			if constexpr (mode & 1) { DDRD |= (1 << 2); } else { DDRD &= ~(1 << 2); }
			if constexpr (mode >> 1) { PORTD |= (1 << 2); } else { PORTD &= ~(1 << 2); }
		} else if constexpr (pin == 3)  {
			if constexpr (mode & 1) { DDRD |= (1 << 3); } else { DDRD &= ~(1 << 3); }
			if constexpr (mode >> 1) { PORTD |= (1 << 3); } else { PORTD &= ~(1 << 3); }
		} else if constexpr (pin == 4)  {
			if constexpr (mode & 1) { DDRD |= (1 << 4); } else { DDRD &= ~(1 << 4); }
			if constexpr (mode >> 1) { PORTD |= (1 << 4); } else { PORTD &= ~(1 << 4); }
		} else if constexpr (pin == 5)  {
			if constexpr (mode & 1) { DDRD |= (1 << 5); } else { DDRD &= ~(1 << 5); }
			if constexpr (mode >> 1) { PORTD |= (1 << 5); } else { PORTD &= ~(1 << 5); }
		} else if constexpr (pin == 6)  {
			if constexpr (mode & 1) { DDRD |= (1 << 6); } else { DDRD &= ~(1 << 6); }
			if constexpr (mode >> 1) { PORTD |= (1 << 6); } else { PORTD &= ~(1 << 6); }
		} else if constexpr (pin == 7)  {
			if constexpr (mode & 1) { DDRD |= (1 << 7); } else { DDRD &= ~(1 << 7); }
			if constexpr (mode >> 1) { PORTD |= (1 << 7); } else { PORTD &= ~(1 << 7); }
		} else if constexpr (pin == 8)  {
			if constexpr (mode & 1) { DDRB |= (1 << 0); } else { DDRB &= ~(1 << 0); }
			if constexpr (mode >> 1) { PORTB |= (1 << 0); } else { PORTB &= ~(1 << 0); }
		} else if constexpr (pin == 9)  {
			if constexpr (mode & 1) { DDRB |= (1 << 1); } else { DDRB &= ~(1 << 1); }
			if constexpr (mode >> 1) { PORTB |= (1 << 1); } else { PORTB &= ~(1 << 1); }
		} else if constexpr (pin == 10) {
			if constexpr (mode & 1) { DDRB |= (1 << 2); } else { DDRB &= ~(1 << 2); }
			if constexpr (mode >> 1) { PORTB |= (1 << 2); } else { PORTB &= ~(1 << 2); }
		} else if constexpr (pin == 11) {
			if constexpr (mode & 1) { DDRB |= (1 << 3); } else { DDRB &= ~(1 << 3); }
			if constexpr (mode >> 1) { PORTB |= (1 << 3); } else { PORTB &= ~(1 << 3); }
		} else if constexpr (pin == 12) {
			if constexpr (mode & 1) { DDRB |= (1 << 4); } else { DDRB &= ~(1 << 4); }
			if constexpr (mode >> 1) { PORTB |= (1 << 4); } else { PORTB &= ~(1 << 4); }
		} else if constexpr (pin == 13) {
			if constexpr (mode & 1) { DDRB |= (1 << 5); } else { DDRB &= ~(1 << 5); }
			if constexpr (mode >> 1) { PORTB |= (1 << 5); } else { PORTB &= ~(1 << 5); }
		} else if constexpr (pin == 14) {
			if constexpr (mode & 1) { DDRC |= (1 << 0); } else { DDRC &= ~(1 << 0); }
			if constexpr (mode >> 1) { PORTC |= (1 << 0); } else { PORTC &= ~(1 << 0); }
		} else if constexpr (pin == 15) {
			if constexpr (mode & 1) { DDRC |= (1 << 1); } else { DDRC &= ~(1 << 1); }
			if constexpr (mode >> 1) { PORTC |= (1 << 1); } else { PORTC &= ~(1 << 1); }
		} else if constexpr (pin == 16) {
			if constexpr (mode & 1) { DDRC |= (1 << 2); } else { DDRC &= ~(1 << 2); }
			if constexpr (mode >> 1) { PORTC |= (1 << 2); } else { PORTC &= ~(1 << 2); }
		} else if constexpr (pin == 17) {
			if constexpr (mode & 1) { DDRC |= (1 << 3); } else { DDRC &= ~(1 << 3); }
			if constexpr (mode >> 1) { PORTC |= (1 << 3); } else { PORTC &= ~(1 << 3); }
		} else if constexpr (pin == 18) {
			if constexpr (mode & 1) { DDRC |= (1 << 4); } else { DDRC &= ~(1 << 4); }
			if constexpr (mode >> 1) { PORTC |= (1 << 4); } else { PORTC &= ~(1 << 4); }
		} else if constexpr (pin == 19) {
			if constexpr (mode & 1) { DDRC |= (1 << 5); } else { DDRC &= ~(1 << 5); }
			if constexpr (mode >> 1) { PORTC |= (1 << 5); } else { PORTC &= ~(1 << 5); }
		} else if constexpr (pin == 20) {
			if constexpr (mode & 1) { DDRC |= (1 << 6); } else { DDRC &= ~(1 << 6); }
			if constexpr (mode >> 1) { PORTC |= (1 << 6); } else { PORTC &= ~(1 << 6); }
		}
	}
	void DigitalHigh() const {
		if constexpr (pin == 0)			{ PORTD |= (1 << 0); }
		else if constexpr (pin == 1)	{ PORTD |= (1 << 1); }
		else if constexpr (pin == 2)	{ PORTD |= (1 << 2); }
		else if constexpr (pin == 3)	{ PORTD |= (1 << 3); }
		else if constexpr (pin == 4)	{ PORTD |= (1 << 4); }
		else if constexpr (pin == 5)	{ PORTD |= (1 << 5); }
		else if constexpr (pin == 6)	{ PORTD |= (1 << 6); }
		else if constexpr (pin == 7)	{ PORTD |= (1 << 7); }
		else if constexpr (pin == 8)	{ PORTB |= (1 << 0); }
		else if constexpr (pin == 9)	{ PORTB |= (1 << 1); }
		else if constexpr (pin == 10)	{ PORTB |= (1 << 2); }
		else if constexpr (pin == 11)	{ PORTB |= (1 << 3); }
		else if constexpr (pin == 12)	{ PORTB |= (1 << 4); }
		else if constexpr (pin == 13)	{ PORTB |= (1 << 5); }
		else if constexpr (pin == 14)	{ PORTC |= (1 << 0); }
		else if constexpr (pin == 15)	{ PORTC |= (1 << 1); }
		else if constexpr (pin == 16)	{ PORTC |= (1 << 2); }
		else if constexpr (pin == 17)	{ PORTC |= (1 << 3); }
		else if constexpr (pin == 18)	{ PORTC |= (1 << 4); }
		else if constexpr (pin == 19)	{ PORTC |= (1 << 5); }
		else if constexpr (pin == 20)	{ PORTC |= (1 << 6); }
	}
	void DigitalLow() const {
		if constexpr (pin == 0)			{ PORTD &= ~(1 << 0); }
		else if constexpr (pin == 1)	{ PORTD &= ~(1 << 1); }
		else if constexpr (pin == 2)	{ PORTD &= ~(1 << 2); }
		else if constexpr (pin == 3)	{ PORTD &= ~(1 << 3); }
		else if constexpr (pin == 4)	{ PORTD &= ~(1 << 4); }
		else if constexpr (pin == 5)	{ PORTD &= ~(1 << 5); }
		else if constexpr (pin == 6)	{ PORTD &= ~(1 << 6); }
		else if constexpr (pin == 7)	{ PORTD &= ~(1 << 7); }
		else if constexpr (pin == 8)	{ PORTB &= ~(1 << 0); }
		else if constexpr (pin == 9)	{ PORTB &= ~(1 << 1); }
		else if constexpr (pin == 10)	{ PORTB &= ~(1 << 2); }
		else if constexpr (pin == 11)	{ PORTB &= ~(1 << 3); }
		else if constexpr (pin == 12)	{ PORTB &= ~(1 << 4); }
		else if constexpr (pin == 13)	{ PORTB &= ~(1 << 5); }
		else if constexpr (pin == 14)	{ PORTC &= ~(1 << 0); }
		else if constexpr (pin == 15)	{ PORTC &= ~(1 << 1); }
		else if constexpr (pin == 16)	{ PORTC &= ~(1 << 2); }
		else if constexpr (pin == 17)	{ PORTC &= ~(1 << 3); }
		else if constexpr (pin == 18)	{ PORTC &= ~(1 << 4); }
		else if constexpr (pin == 19)	{ PORTC &= ~(1 << 5); }
		else if constexpr (pin == 20)	{ PORTC &= ~(1 << 6); }
	}
	void DigitalOutput(Logic logic) const {
		if constexpr (pin == 0)			{ PORTD = (PORTD & ~(1 << 0)) | (logic << 0); }
		else if constexpr (pin == 1)	{ PORTD = (PORTD & ~(1 << 1)) | (logic << 1); }
		else if constexpr (pin == 2)	{ PORTD = (PORTD & ~(1 << 2)) | (logic << 2); }
		else if constexpr (pin == 3)	{ PORTD = (PORTD & ~(1 << 3)) | (logic << 3); }
		else if constexpr (pin == 4)	{ PORTD = (PORTD & ~(1 << 4)) | (logic << 4); }
		else if constexpr (pin == 5)	{ PORTD = (PORTD & ~(1 << 5)) | (logic << 5); }
		else if constexpr (pin == 6)	{ PORTD = (PORTD & ~(1 << 6)) | (logic << 6); }
		else if constexpr (pin == 7)	{ PORTD = (PORTD & ~(1 << 7)) | (logic << 7); }
		else if constexpr (pin == 8)	{ PORTB = (PORTB & ~(1 << 0)) | (logic << 0); }
		else if constexpr (pin == 9)	{ PORTB = (PORTB & ~(1 << 1)) | (logic << 1); }
		else if constexpr (pin == 10)	{ PORTB = (PORTB & ~(1 << 2)) | (logic << 2); }
		else if constexpr (pin == 11)	{ PORTB = (PORTB & ~(1 << 3)) | (logic << 3); }
		else if constexpr (pin == 12)	{ PORTB = (PORTB & ~(1 << 4)) | (logic << 4); }
		else if constexpr (pin == 13)	{ PORTB = (PORTB & ~(1 << 5)) | (logic << 5); }
		else if constexpr (pin == 14)	{ PORTC = (PORTC & ~(1 << 0)) | (logic << 0); }
		else if constexpr (pin == 15)	{ PORTC = (PORTC & ~(1 << 1)) | (logic << 1); }
		else if constexpr (pin == 16)	{ PORTC = (PORTC & ~(1 << 2)) | (logic << 2); }
		else if constexpr (pin == 17)	{ PORTC = (PORTC & ~(1 << 3)) | (logic << 3); }
		else if constexpr (pin == 18)	{ PORTC = (PORTC & ~(1 << 4)) | (logic << 4); }
		else if constexpr (pin == 19)	{ PORTC = (PORTC & ~(1 << 5)) | (logic << 5); }
		else if constexpr (pin == 20)	{ PORTC = (PORTC & ~(1 << 6)) | (logic << 6); }
	}
	void DigitalImpulse() const {
		DigitalHigh();
		DigitalLow();
	}
	void DigitalToggle() const {
		if constexpr (pin == 0)			{ PORTD ^= (1 << 0); }
		else if constexpr (pin == 1)	{ PORTD ^= (1 << 1); }
		else if constexpr (pin == 2)	{ PORTD ^= (1 << 2); }
		else if constexpr (pin == 3)	{ PORTD ^= (1 << 3); }
		else if constexpr (pin == 4)	{ PORTD ^= (1 << 4); }
		else if constexpr (pin == 5)	{ PORTD ^= (1 << 5); }
		else if constexpr (pin == 6)	{ PORTD ^= (1 << 6); }
		else if constexpr (pin == 7)	{ PORTD ^= (1 << 7); }
		else if constexpr (pin == 8)	{ PORTB ^= (1 << 0); }
		else if constexpr (pin == 9)	{ PORTB ^= (1 << 1); }
		else if constexpr (pin == 10)	{ PORTB ^= (1 << 2); }
		else if constexpr (pin == 11)	{ PORTB ^= (1 << 3); }
		else if constexpr (pin == 12)	{ PORTB ^= (1 << 4); }
		else if constexpr (pin == 13)	{ PORTB ^= (1 << 5); }
		else if constexpr (pin == 14)	{ PORTC ^= (1 << 0); }
		else if constexpr (pin == 15)	{ PORTC ^= (1 << 1); }
		else if constexpr (pin == 16)	{ PORTC ^= (1 << 2); }
		else if constexpr (pin == 17)	{ PORTC ^= (1 << 3); }
		else if constexpr (pin == 18)	{ PORTC ^= (1 << 4); }
		else if constexpr (pin == 19)	{ PORTC ^= (1 << 5); }
		else if constexpr (pin == 20)	{ PORTC ^= (1 << 6); }
	}
	Logic DigitalInput() const {
		if constexpr (pin == 0)			{ return (PIND >> 0) & 1; }
		else if constexpr (pin == 1)	{ return (PIND >> 1) & 1; }
		else if constexpr (pin == 2)	{ return (PIND >> 2) & 1; }
		else if constexpr (pin == 3)	{ return (PIND >> 3) & 1; }
		else if constexpr (pin == 4)	{ return (PIND >> 4) & 1; }
		else if constexpr (pin == 5)	{ return (PIND >> 5) & 1; }
		else if constexpr (pin == 6)	{ return (PIND >> 6) & 1; }
		else if constexpr (pin == 7)	{ return (PIND >> 7) & 1; }
		else if constexpr (pin == 8)	{ return (PINB >> 0) & 1; }
		else if constexpr (pin == 9)	{ return (PINB >> 1) & 1; }
		else if constexpr (pin == 10)	{ return (PINB >> 2) & 1; }
		else if constexpr (pin == 11)	{ return (PINB >> 3) & 1; }
		else if constexpr (pin == 12)	{ return (PINB >> 4) & 1; }
		else if constexpr (pin == 13)	{ return (PINB >> 5) & 1; }
		else if constexpr (pin == 14)	{ return (PINC >> 0) & 1; }
		else if constexpr (pin == 15)	{ return (PINC >> 1) & 1; }
		else if constexpr (pin == 16)	{ return (PINC >> 2) & 1; }
		else if constexpr (pin == 17)	{ return (PINC >> 3) & 1; }
		else if constexpr (pin == 18)	{ return (PINC >> 4) & 1; }
		else if constexpr (pin == 19)	{ return (PINC >> 5) & 1; }
		else if constexpr (pin == 20)	{ return (PINC >> 6) & 1; }
		return Low;
	}
	uint8_t DigitalProbe() const {
		if constexpr (pin == 0)			{ return PIND & (1 << 0); }
		else if constexpr (pin == 1)	{ return PIND & (1 << 1); }
		else if constexpr (pin == 2)	{ return PIND & (1 << 2); }
		else if constexpr (pin == 3)	{ return PIND & (1 << 3); }
		else if constexpr (pin == 4)	{ return PIND & (1 << 4); }
		else if constexpr (pin == 5)	{ return PIND & (1 << 5); }
		else if constexpr (pin == 6)	{ return PIND & (1 << 6); }
		else if constexpr (pin == 7)	{ return PIND & (1 << 7); }
		else if constexpr (pin == 8)	{ return PINB & (1 << 0); }
		else if constexpr (pin == 9)	{ return PINB & (1 << 1); }
		else if constexpr (pin == 10)	{ return PINB & (1 << 2); }
		else if constexpr (pin == 11)	{ return PINB & (1 << 3); }
		else if constexpr (pin == 12)	{ return PINB & (1 << 4); }
		else if constexpr (pin == 13)	{ return PINB & (1 << 5); }
		else if constexpr (pin == 14)	{ return PINC & (1 << 0); }
		else if constexpr (pin == 15)	{ return PINC & (1 << 1); }
		else if constexpr (pin == 16)	{ return PINC & (1 << 2); }
		else if constexpr (pin == 17)	{ return PINC & (1 << 3); }
		else if constexpr (pin == 18)	{ return PINC & (1 << 4); }
		else if constexpr (pin == 19)	{ return PINC & (1 << 5); }
		else if constexpr (pin == 20)	{ return PINC & (1 << 6); }
		return 0x00;
	}
	void PWMEnable(bool invertFlag = false) const {
		uint8_t data = 0b10 | static_cast<uint8_t>(invertFlag);
		if constexpr (pin == 3) {
			TCCR2A = TCCR2A & ~(0b11 << COM2B0) | (data << COM2B0);	// Connects OC2B pin to PD3
		} else if constexpr (pin == 5) {
			TCCR0A = TCCR0A & ~(0b11 << COM0B0) | (data << COM0B0);	// Connects OC0B pin to PD5
		} else if constexpr (pin == 6) {
			TCCR0A = TCCR0A & ~(0b11 << COM0A0) | (data << COM0A0);	// Connects OC0A pin to PD6
		} else if constexpr (pin == 9) {
			TCCR1A = TCCR1A & ~(0b11 << COM1A0) | (data << COM1A0);	// Connects OC1A pin to PB1
		} else if constexpr (pin == 10) {
			TCCR1A = TCCR1A & ~(0b11 << COM1B0) | (data << COM1B0);	// Connects OC1B pin to PB2
		} else if constexpr (pin == 11) {
			TCCR2A = TCCR2A & ~(0b11 << COM2A0) | (data << COM2A0);	// Connects OC2A pin to PB3
		} else {
			static_assert(false_v<pin>, "the pin doesn't have PWM function");
		}
	}
	void PWMDisable() const {
		if constexpr (pin == 3) {
			TCCR2A = TCCR2A & ~(0b11 << COM2B0);					// Disconnects OC2B pin to PD3
		} else if constexpr (pin == 5) {
			TCCR0A = TCCR0A & ~(0b11 << COM0B0);					// Disconnects OC0B pin to PD5
		} else if constexpr (pin == 6) {
			TCCR0A = TCCR0A & ~(0b11 << COM0A0);					// Disconnects OC0A pin to PD6
		} else if constexpr (pin == 9) {
			TCCR1A = TCCR1A & ~(0b11 << COM1A0);					// Disconnects OC1A pin to PB1
		} else if constexpr (pin == 10) {
			TCCR1A = TCCR1A & ~(0b11 << COM1B0);					// Disconnects OC1B pin to PB2
		} else if constexpr (pin == 11) {
			TCCR2A = TCCR2A & ~(0b11 << COM2A0);					// Disconnects OC2A pin to PB3
		} else {
			static_assert(false_v<pin>, "the pin doesn't have PWM function");
		}
	}
	void PWMOutput(uint8_t value) const {
		if constexpr (pin == 3) {
			OCR2B = value;											// Set compare value for OC2B
		} else if constexpr (pin == 5) {
			OCR0B = value;											// Set compare value for OC0B
		} else if constexpr (pin == 6) {
			OCR0A = value;											// Set compare value for OC0A
		} else if constexpr (pin == 9) {
			OCR1A = value;											// Set compare value for OC1A
		} else if constexpr (pin == 10) {
			OCR1B = value;											// Set compare value for OC1B
		} else if constexpr (pin == 11) {
			OCR2A = value;											// Set compare value for OC2A
		} else {
			static_assert(false_v<pin>, "the pin doesn't have PWM function");
		}
	}
	uint16_t AnalogInput() const {
		if constexpr (pin == A0 || pin == A1 || pin == A2 || pin == A3 || pin == A4 || pin == A5 || pin == A6) {
			ADMUX = ADMUX & ~(0b1111 << MUX0) & ~(0b1 << ADLAR) | (PinToADCMux(pin) << MUX0);
			ADCSRA |= (0b1 << ADSC);	// ADSC: ADC Start Conversion = 1
			while (ADCSRA & (0b1 << ADSC)) ;
			return ADC;
		} else {
			static_assert(false_v<pin>, "the pin doesn't have A/D function");
		}
	}
	uint8_t AnalogInput8bit() const {
		if constexpr (pin == A0 || pin == A1 || pin == A2 || pin == A3 || pin == A4 || pin == A5 || pin == A6) {
			ADMUX = ADMUX & ~(0b1111 << MUX0) | (0b1 << ADLAR) | (PinToADCMux(pin) << MUX0);
			ADCSRA |= (0b1 << ADSC);	// ADSC: ADC Start Conversion = 1
			while (ADCSRA & (0b1 << ADSC)) ;
			return ADCH;
		} else {
			static_assert(false_v<pin>, "the pin doesn't have A/D function");
		}
	}
	void EnableExternalInt(Sense sense) const {
		if constexpr (pin == 2) {			// INT0
			EICRA = EICRA & ~(0b11 << ISC00) | (static_cast<uint8_t>(sense) << ISC00);
			EIMSK |= 0b1 << INT0;
		} else if constexpr (pin == 3) {	// INT1
			EICRA = EICRA & ~(0b11 << ISC10) | (static_cast<uint8_t>(sense) << ISC10);
			EIMSK |= 0b1 << INT1;
		} else {
			static_assert(false_v<pin>, "the pin is not assigned as External Int");
		}
	}
	void DisableExternalInt(Sense sense) const {
		if constexpr (pin == 2) {			// INT0
			EIMSK &= ~(0b1 << INT0);
		} else if constexpr (pin == 3) {	// INT1
			EIMSK &= ~(0b1 << INT1);
		} else {
			static_assert(false_v<pin>, "the pin is not assigned as External Int");
		}
	}
	void EnablePinChangeInt() const {
		if constexpr (pin == 0)			{ PCICR |= (1 << PCIE2); PCMSK2 |= (1 << 0); } // PCINT16
		else if constexpr (pin == 1)	{ PCICR |= (1 << PCIE2); PCMSK2 |= (1 << 1); } // PCINT17
		else if constexpr (pin == 2)	{ PCICR |= (1 << PCIE2); PCMSK2 |= (1 << 2); } // PCINT18
		else if constexpr (pin == 3)	{ PCICR |= (1 << PCIE2); PCMSK2 |= (1 << 3); } // PCINT19
		else if constexpr (pin == 4)	{ PCICR |= (1 << PCIE2); PCMSK2 |= (1 << 4); } // PCINT20
		else if constexpr (pin == 5)	{ PCICR |= (1 << PCIE2); PCMSK2 |= (1 << 5); } // PCINT21
		else if constexpr (pin == 6)	{ PCICR |= (1 << PCIE2); PCMSK2 |= (1 << 6); } // PCINT22
		else if constexpr (pin == 7)	{ PCICR |= (1 << PCIE2); PCMSK2 |= (1 << 7); } // PCINT23
		else if constexpr (pin == 8)	{ PCICR |= (1 << PCIE0); PCMSK0 |= (1 << 0); } // PCINT0
		else if constexpr (pin == 9)	{ PCICR |= (1 << PCIE0); PCMSK0 |= (1 << 1); } // PCINT1
		else if constexpr (pin == 10)	{ PCICR |= (1 << PCIE0); PCMSK0 |= (1 << 2); } // PCINT2
		else if constexpr (pin == 11)	{ PCICR |= (1 << PCIE0); PCMSK0 |= (1 << 3); } // PCINT3
		else if constexpr (pin == 12)	{ PCICR |= (1 << PCIE0); PCMSK0 |= (1 << 4); } // PCINT4
		else if constexpr (pin == 13)	{ PCICR |= (1 << PCIE0); PCMSK0 |= (1 << 5); } // PCINT5
		else if constexpr (pin == 14)	{ PCICR |= (1 << PCIE1); PCMSK1 |= (1 << 0); } // PCINT8
		else if constexpr (pin == 15)	{ PCICR |= (1 << PCIE1); PCMSK1 |= (1 << 1); } // PCINT9
		else if constexpr (pin == 16)	{ PCICR |= (1 << PCIE1); PCMSK1 |= (1 << 2); } // PCINT10
		else if constexpr (pin == 17)	{ PCICR |= (1 << PCIE1); PCMSK1 |= (1 << 3); } // PCINT11
		else if constexpr (pin == 18)	{ PCICR |= (1 << PCIE1); PCMSK1 |= (1 << 4); } // PCINT12
		else if constexpr (pin == 19)	{ PCICR |= (1 << PCIE1); PCMSK1 |= (1 << 5); } // PCINT13
		else if constexpr (pin == 20)	{ PCICR |= (1 << PCIE1); PCMSK1 |= (1 << 6); } // PCINT14
	}
	void DisablePinChangeInt() const {
		if constexpr (pin == 0)			{ PCMSK2 &= ~(1 << 0); } // PCINT16
		else if constexpr (pin == 1)	{ PCMSK2 &= ~(1 << 1); } // PCINT17
		else if constexpr (pin == 2)	{ PCMSK2 &= ~(1 << 2); } // PCINT18
		else if constexpr (pin == 3)	{ PCMSK2 &= ~(1 << 3); } // PCINT19
		else if constexpr (pin == 4)	{ PCMSK2 &= ~(1 << 4); } // PCINT20
		else if constexpr (pin == 5)	{ PCMSK2 &= ~(1 << 5); } // PCINT21
		else if constexpr (pin == 6)	{ PCMSK2 &= ~(1 << 6); } // PCINT22
		else if constexpr (pin == 7)	{ PCMSK2 &= ~(1 << 7); } // PCINT23
		else if constexpr (pin == 8)	{ PCMSK0 &= ~(1 << 0); } // PCINT0
		else if constexpr (pin == 9)	{ PCMSK0 &= ~(1 << 1); } // PCINT1
		else if constexpr (pin == 10)	{ PCMSK0 &= ~(1 << 2); } // PCINT2
		else if constexpr (pin == 11)	{ PCMSK0 &= ~(1 << 3); } // PCINT3
		else if constexpr (pin == 12)	{ PCMSK0 &= ~(1 << 4); } // PCINT4
		else if constexpr (pin == 13)	{ PCMSK0 &= ~(1 << 5); } // PCINT5
		else if constexpr (pin == 14)	{ PCMSK1 &= ~(1 << 0); } // PCINT8
		else if constexpr (pin == 15)	{ PCMSK1 &= ~(1 << 1); } // PCINT9
		else if constexpr (pin == 16)	{ PCMSK1 &= ~(1 << 2); } // PCINT10
		else if constexpr (pin == 17)	{ PCMSK1 &= ~(1 << 3); } // PCINT11
		else if constexpr (pin == 18)	{ PCMSK1 &= ~(1 << 4); } // PCINT12
		else if constexpr (pin == 19)	{ PCMSK1 &= ~(1 << 5); } // PCINT13
		else if constexpr (pin == 20)	{ PCMSK1 &= ~(1 << 6); } // PCINT14
	}
};

}

#endif

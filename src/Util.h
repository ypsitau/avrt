//------------------------------------------------------------------------------
// Util.h
//------------------------------------------------------------------------------
#ifndef AVRT_UTIL_H
#define AVRT_UTIL_H
#include <avr/pgmspace.h>
#include <avr/interrupt.h>

class __FlashStringHelper;
#ifndef F
#define F(string_literal) (reinterpret_cast<const __FlashStringHelper*>(PSTR(string_literal)))
#endif

#define ArraySizeOf(array) (sizeof(array) / sizeof(array[0]))

namespace avrt {

template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }

using Logic = uint8_t;

constexpr uint8_t Low		= 0;
constexpr uint8_t High		= 1;

constexpr uint8_t In		= (0b0 << 0);
constexpr uint8_t Out		= (0b1 << 0);
constexpr uint8_t InPullup	= (0b1 << 1) | (0b0 << 0);
constexpr uint8_t OutHigh	= (0b1 << 1) | (0b1 << 0);
constexpr uint8_t PWM		= (0b0 << 3) | (0b1 << 2) | (0b1 << 0);
constexpr uint8_t PWMInv	= (0b1 << 3) | (0b1 << 2) | (0b1 << 0);

enum class Sense {
	Low		= 0,
	Change	= 1,
	Falling	= 2,
	Rising	= 3,
};

constexpr uint8_t D0	= 0;
constexpr uint8_t D1	= 1;
constexpr uint8_t D2	= 2;
constexpr uint8_t D3	= 3;
constexpr uint8_t D4	= 4;
constexpr uint8_t D5	= 5;
constexpr uint8_t D6	= 6;
constexpr uint8_t D7	= 7;
constexpr uint8_t D8	= 8;
constexpr uint8_t D9	= 9;
constexpr uint8_t D10	= 10;
constexpr uint8_t D11	= 11;
constexpr uint8_t D12	= 12;
constexpr uint8_t D13	= 13;
constexpr uint8_t D14	= 14;
constexpr uint8_t D15	= 15;
constexpr uint8_t D16	= 16;
constexpr uint8_t D17	= 17;
constexpr uint8_t D18	= 18;
constexpr uint8_t D19	= 19;
constexpr uint8_t D20	= 20;

constexpr uint8_t A0			= 14;
constexpr uint8_t A1			= 15;
constexpr uint8_t A2			= 16;
constexpr uint8_t A3			= 17;
constexpr uint8_t A4			= 18;
constexpr uint8_t A5			= 19;
constexpr uint8_t A6			= 20;

constexpr uint8_t PinToADCMux(uint8_t pin) { return pin - A0; }

//------------------------------------------------------------------------------
// InterruptDisabledSection
//------------------------------------------------------------------------------
class InterruptDisabledSection {
private:
	uint8_t savedSREG_;
public:
	InterruptDisabledSection() { savedSREG_ = SREG; cli(); }
	~InterruptDisabledSection() { SREG = savedSREG_; }
};

//------------------------------------------------------------------------------
// StringPtr
//------------------------------------------------------------------------------
class StringPtr {
public:
	virtual char Next() = 0;
};

class StringPtr_SRAM : public StringPtr {
private:
	const char* p_;
public:
	StringPtr_SRAM(const char* p) : p_(p) {}
	virtual char Next() override { return *p_++; }
};

class StringPtr_Flash : public StringPtr {
private:
	const char* p_;
public:
	StringPtr_Flash(const __FlashStringHelper* p) : p_(reinterpret_cast<const char*>(p)) {}
	virtual char Next() override { char ch = pgm_read_byte(p_); p_++; return ch; }
};

}

#endif

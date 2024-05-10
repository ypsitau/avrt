//------------------------------------------------------------------------------
// AnalogComparator.h
//------------------------------------------------------------------------------
#ifndef AVRT_ANALOGCOMPARATOR_H
#define AVRT_ANALOGCOMPARATOR_H
#include <avr/io.h>

namespace avrt {

//------------------------------------------------------------------------------
// AnalogComparator
//------------------------------------------------------------------------------
template <
	uint8_t dataACME	= 0b0,		// ACME: Analog Comparator Multiplexer Enable = false
	uint8_t dataACD		= 0b0,		// ACD: Analog Comparator Disable = false
	uint8_t dataACBG	= 0b0,		// ACBG: Analog Comparator Bandgap Select = AIN0 is applied to the positive input
	uint8_t dataACO		= 0b0,		// ACO: Analog Comparator Output (Read only)
	uint8_t dataACI		= 0b0,		// ACI: Analog Comparator Interrupt Flag = false
	uint8_t dataACIE	= 0b0,		// ACIE: Analog Comparator Interrupt Enable = false
	uint8_t dataACIC	= 0b0,		// ACIC: Analog Comparator Input Capture Enable = false
	uint8_t dataACIS	= 0b00,		// ACIS: Analog Comparator Interrupt Mode Select = Comparator Interrupt on Output Toggle
	uint8_t dataAIN0D	= 0b0,		// AIN0 Digital Input Disable
	uint8_t dataAIN1D	= 0b0		// AIN1 Digital Input Disable
> class AnalogComparator {
public:
	AnalogComparator() {}
	static void Init() {
		ADCSRB = ADCSRB & ~(0b1 << ACME) | (dataACME << ACME);
		ACSR = (dataACD << ACD) | (dataACBG << ACBG) | (dataACO << ACO) | (dataACI << ACI) |
			(dataACIE << ACIE) | (dataACIC << ACIC) | (dataACIS << ACIS0);
		DIDR1 = (dataAIN1D << AIN1D) | (dataAIN0D << AIN0D);
	}
};

}

#endif

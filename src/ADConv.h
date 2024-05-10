//------------------------------------------------------------------------------
// ADConv.h
//------------------------------------------------------------------------------
#ifndef AVRT_ADCONV_H
#define AVRT_ADCONV_H
#include <avr/io.h>

namespace avrt {

//------------------------------------------------------------------------------
// ADConv
//------------------------------------------------------------------------------
template <
	uint8_t dataMUX		= 0b0000,	// MUX: Analog Channel Selection Bits = ADC0
	uint8_t dataADPS	= 0b111,	// ADPS: ADC Prescaler Select Bits = 1/128
	uint8_t dataADATE	= 0b0,		// ADATE: ADC Auto Trigger Enable = false .. Single conversion triggered by ADSC
	uint8_t dataADTS	= 0b000,	// ADTS: ADC Auto Trigger Source = Free Running mode
	uint8_t dataADIE	= 0b0,		// ADIE: ADC Interrupt Enable = false
	uint8_t dataREFS	= 0b01,		// REFS: Reference Selction Bits = AVcc with external capacitor at AREF pin 
	uint8_t dataADLAR	= 0b0,		// ADLAR: ADC Left Adjust Result = false
	uint8_t dataADSC	= 0b0,		// ADSC: ADC Start Conversion = false
	uint8_t dataADIF	= 0b1,		// ADIF: ADC Interrupt Flag .. set one to clear
	uint8_t dataADEN	= 0b1		// ADEN: ADC Enable = true
> class ADConv {
public:
	static void Init() {
		ADMUX = (dataREFS << REFS0) | (dataADLAR << ADLAR) | (dataMUX << MUX0);
		ADCSRA = (dataADEN << ADEN) | (dataADSC << ADSC) | (dataADATE << ADATE) |
			(dataADIF << ADIF) | (dataADIE << ADIE) | (dataADPS << ADPS0);
		ADCSRB = ADCSRB & ~(0b111 << ADTS0) | (dataADTS << ADTS0);
	}
};

//------------------------------------------------------------------------------
// ADConv_8bit
//------------------------------------------------------------------------------
template <
	uint8_t dataMUX		= 0b0000,	// MUX: Analog Channel Selection Bits = ADC0
	uint8_t dataADPS	= 0b111,	// ADPS: ADC Prescaler Select Bits = 1/128
	uint8_t dataADATE	= 0b0,		// ADATE: ADC Auto Trigger Enable = false .. Single conversion triggered by ADSC
	uint8_t dataADTS	= 0b000,	// ADTS: ADC Auto Trigger Source = Free Running mode
	uint8_t dataADIE	= 0b0,		// ADIE: ADC Interrupt Enable = false
	uint8_t dataREFS	= 0b01,		// REFS: Reference Selction Bits = AVcc with external capacitor at AREF pin 
	uint8_t dataADLAR	= 0b1,		// ADLAR: ADC Left Adjust Result = true
	uint8_t dataADSC	= 0b0,		// ADSC: ADC Start Conversion = false
	uint8_t dataADIF	= 0b1,		// ADIF: ADC Interrupt Flag .. set one to clear
	uint8_t dataADEN	= 0b1		// ADEN: ADC Enable = true
> class ADConv_8bit : public ADConv<
	dataMUX, dataADPS, dataADATE, dataADTS, dataADIE, dataREFS, dataADLAR, dataADSC, dataADIF, dataADEN
> {};

}

#endif

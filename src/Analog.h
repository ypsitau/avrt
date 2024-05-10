//------------------------------------------------------------------------------
// Analog.h
//------------------------------------------------------------------------------
#ifndef AVRT_ANALOG_H
#define AVRT_ANALOG_H
#include <avr/io.h>

namespace avrt {

//------------------------------------------------------------------------------
// InitADC
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
> void InitADC() {
	ADMUX = (dataREFS << REFS0) | (dataADLAR << ADLAR) | (dataMUX << MUX0);
	ADCSRA = (dataADEN << ADEN) | (dataADSC << ADSC) | (dataADATE << ADATE) |
		(dataADIF << ADIF) | (dataADIE << ADIE) | (dataADPS << ADPS0);
	ADCSRB = ADCSRB & ~(0b111 << ADTS0) | (dataADTS << ADTS0);
}

//------------------------------------------------------------------------------
// InitADC_8bit
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
> void InitADC_8bit() {
	ADMUX = (dataREFS << REFS0) | (dataADLAR << ADLAR) | (dataMUX << MUX0);
	ADCSRA = (dataADEN << ADEN) | (dataADSC << ADSC) | (dataADATE << ADATE) |
		(dataADIF << ADIF) | (dataADIE << ADIE) | (dataADPS << ADPS0);
	ADCSRB = ADCSRB & ~(0b111 << ADTS0) | (dataADTS << ADTS0);
}

//------------------------------------------------------------------------------
// InitAnalogComparator
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
> void InitAnalogComparator() {
	ADCSRB = ADCSRB & ~(0b1 << ACME) | (dataACME << ACME);
	ACSR = (dataACD << ACD) | (dataACBG << ACBG) | (dataACO << ACO) | (dataACI << ACI) |
		(dataACIE << ACIE) | (dataACIC << ACIC) | (dataACIS << ACIS0);
	DIDR1 = (dataAIN1D << AIN1D) | (dataAIN0D << AIN0D);
}

}

#endif

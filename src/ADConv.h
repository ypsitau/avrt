//------------------------------------------------------------------------------
// ADConv.h
//------------------------------------------------------------------------------
#ifndef AVRT_ADCONV_H
#define AVRT_ADCONV_H
#include <avr/io.h>
#include "FIFOBuff.h"
namespace avrt {

#define AVRT_IMPLEMENT_ADConv(variableName, prescalerSel) \
avrt::ADConv<false, prescalerSel> variableName;

#define AVRT_IMPLEMENT_ADConv_AutoTrigger(variableName, prescalerSel) \
avrt::ADConv<true, prescalerSel> variableName; \
ISR(ADC_vect) { variableName.HandleIRQ_ADC(); }

//------------------------------------------------------------------------------
// ADConv
//------------------------------------------------------------------------------
template <
	bool enableAutoTrigger	= false,
	uint8_t dataADPS		= 0b111,	// ADPS: ADC Prescaler Select Bits = 1/128
	uint8_t dataREFS		= 0b01		// REFS: Reference Selction Bits = AVcc with external capacitor at AREF pin 
> class ADConv {
public:
	using FIFOBuffEx = FIFOBuff<uint16_t, 32>;
private:
	FIFOBuffEx buffs_[enableAutoTrigger? 1 : 0];
public:
	ADConv() {}
	FIFOBuffEx& GetBuffForAutoTrigger() { return buffs_[0]; }
	void Init() const {
		constexpr uint8_t dataADLAR = 0b0;		// ADLAR: ADC Left Adjust Result = false
		constexpr uint8_t dataMUX	= 0b0000;	// MUX: Analog Channel Selection Bits = ADC0
		constexpr uint8_t dataADATE	= 0b0;		// ADATE: ADC Auto Trigger Enable = false .. Single conversion triggered by ADSC
		constexpr uint8_t dataADTS	= 0b000;	// ADTS: ADC Auto Trigger Source = Free Running mode
		constexpr uint8_t dataADSC	= 0b0;		// ADSC: ADC Start Conversion = false
		constexpr uint8_t dataADIE	= enableAutoTrigger? 0b1 : 0b0; // ADIE: ADC Interrupt Enable = false
		constexpr uint8_t dataADIF	= 0b1;		// ADIF: ADC Interrupt Flag .. set one to clear
		constexpr uint8_t dataADEN	= 0b1;		// ADEN: ADC Enable = true
		ADMUX = (dataREFS << REFS0) | (dataADLAR << ADLAR) | (dataMUX << MUX0);
		ADCSRA = (dataADEN << ADEN) | (dataADSC << ADSC) | (dataADATE << ADATE) |
			(dataADIF << ADIF) | (dataADIE << ADIE) | (dataADPS << ADPS0);
		ADCSRB = ADCSRB & ~(0b111 << ADTS0) | (dataADTS << ADTS0);
	}
	void InitAs8bit() const {
		constexpr uint8_t dataADLAR = 0b1;		// ADLAR: ADC Left Adjust Result = true
		constexpr uint8_t dataMUX	= 0b0000;	// MUX: Analog Channel Selection Bits = ADC0
		constexpr uint8_t dataADATE	= 0b0;		// ADATE: ADC Auto Trigger Enable = false .. Single conversion triggered by ADSC
		constexpr uint8_t dataADTS	= 0b000;	// ADTS: ADC Auto Trigger Source = Free Running mode
		constexpr uint8_t dataADSC	= 0b0;		// ADSC: ADC Start Conversion = false
		constexpr uint8_t dataADIE	= enableAutoTrigger? 0b1 : 0b0; // ADIE: ADC Interrupt Enable = false
		constexpr uint8_t dataADIF	= 0b1;		// ADIF: ADC Interrupt Flag .. set one to clear
		constexpr uint8_t dataADEN	= 0b1;		// ADEN: ADC Enable = true
		ADMUX = (dataREFS << REFS0) | (dataADLAR << ADLAR) | (dataMUX << MUX0);
		ADCSRA = (dataADEN << ADEN) | (dataADSC << ADSC) | (dataADATE << ADATE) |
			(dataADIF << ADIF) | (dataADIE << ADIE) | (dataADPS << ADPS0);
		ADCSRB = ADCSRB & ~(0b111 << ADTS0) | (dataADTS << ADTS0);
	}
	void StartAutoTrigger(uint8_t mux, uint8_t autoTriggerSource) const {
		constexpr uint8_t dataADSC = 0b1;	// ADSC: ADC Start Conversion = true
		ADMUX = ADMUX & ~(0b1111 << MUX0) | (mux << MUX0);
		ADCSRB = ADCSRB & ~(0b111 << ADTS0) | (autoTriggerSource << ADTS0);
		ADCSRA |= dataADSC << ADSC;
	}
	void HandleIRQ_ADC() {
		GetBuffForAutoTrigger().WriteData(ADC);
	}

};

}

#endif

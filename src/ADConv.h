//------------------------------------------------------------------------------
// ADConv.h
//------------------------------------------------------------------------------
#ifndef AVRT_ADCONV_H
#define AVRT_ADCONV_H
#include <avr/io.h>
#include "FIFOBuff.h"

#define AVRT_IMPLEMENT_ADConv(variableName) \
avrt::ADConv<> variableName;

#define AVRT_IMPLEMENT_ADConv8bit(variableName) \
avrt::ADConv8bit<> variableName;

#define AVRT_IMPLEMENT_ADConv_AutoTrigger(variableName) \
avrt::ADConv<32> variableName; \
ISR(ADC_vect) { variableName.HandleISR_ADC(); }

#define AVRT_IMPLEMENT_ADConv8bit_AutoTrigger(variableName) \
avrt::ADConv8bit<32> variableName; \
ISR(ADC_vect) { variableName.HandleISR_ADC(); }

namespace avrt {

//------------------------------------------------------------------------------
// ADConvBase
//------------------------------------------------------------------------------
template <typename T_Result, bool data8bitFlag = false, int buffSize = 0> class ADConvBase {
public:
	using FIFOBuffEx = FIFOBuff<T_Result, buffSize>;
public:
	constexpr static uint8_t Div2	= 0b001;
	constexpr static uint8_t Div4	= 0b010;
	constexpr static uint8_t Div8	= 0b011;
	constexpr static uint8_t Div16	= 0b100;
	constexpr static uint8_t Div32	= 0b101;
	constexpr static uint8_t Div64	= 0b110;
	constexpr static uint8_t Div128	= 0b111;
public:
	enum class VoltRef {
		AREF			= 0b00,
		AVcc			= 0b01,
		Int1V1			= 0b11
	};
public:
	enum class TrigSrc {
		FreeRunning		= 0x0,
		ANALOG_COMP		= 0x1,
		PINT0			= 0x2,
		TIMER0_COMPA	= 0x3,
		TIMER0_OVF		= 0x4,
		TIMER1_COMPB	= 0x5,
		TIMER1_OVF		= 0x6,
		TIMER1_CAPT		= 0x7
	};
private:
	FIFOBuffEx buffs_[(buffSize > 0)? 1 : 0];
public:
	ADConvBase() {}
	FIFOBuffEx& GetBuff() { return buffs_[0]; }
	void Init(uint8_t div = Div128, VoltRef voltRef = VoltRef::AVcc) const {
												// REFS: Reference Selction Bits = AVcc with external capacitor at AREF pin
		uint8_t dataADPS = div;					// ADPS: ADC Prescaler Select Bits
		uint8_t dataREFS = static_cast<uint8_t>(voltRef);
												// REFS: Reference Selection Bits
		constexpr uint8_t dataADLAR = data8bitFlag? 0b1 : 0b0;
												// ADLAR: ADC Left Adjust Result
		constexpr uint8_t dataADIE	= 0b0;		// ADIE: ADC Interrupt Enable = false
		constexpr uint8_t dataMUX	= 0b0000;	// MUX: Analog Channel Selection Bits = ADC0
		constexpr uint8_t dataADATE	= 0b0;		// ADATE: ADC Auto Trigger Enable = false .. Single conversion triggered by ADSC
		constexpr uint8_t dataADTS	= 0b000;	// ADTS: ADC Auto Trigger Source = Free Running mode
		constexpr uint8_t dataADSC	= 0b0;		// ADSC: ADC Start Conversion
		constexpr uint8_t dataADIF	= 0b1;		// ADIF: ADC Interrupt Flag .. set one to clear
		constexpr uint8_t dataADEN	= 0b1;		// ADEN: ADC Enable = true
		ADMUX = (dataREFS << REFS0) | (dataADLAR << ADLAR) | (dataMUX << MUX0);
		ADCSRA = (dataADEN << ADEN) | (dataADSC << ADSC) | (dataADATE << ADATE) |
			(dataADIF << ADIF) | (dataADIE << ADIE) | (dataADPS << ADPS0);
		ADCSRB = ADCSRB & ~(0b111 << ADTS0) | (dataADTS << ADTS0);
	}
	template<uint8_t pin, TrigSrc trigSrc> void StartAutoTrigger() const {
		uint8_t dataADTS = static_cast<uint8_t>(trigSrc);
		ADMUX = ADMUX & ~(0b1111 << MUX0) | (PinToADCMux(pin) << MUX0);
		ADCSRB = ADCSRB & ~(0b111 << ADTS0) | (dataADTS << ADTS0);
		ADCSRA = ADCSRA | (0b1 << ADATE) | (0b1 << ADIE) | (0b1 << ADSC);	// ADSC: ADC Start Conversion
	}
	void HandleISR_ADC() {
		volatile T_Result result = ReadRawResult();
		GetBuff().WriteData(result);
	}
	bool IsResultReady() const {
		if constexpr (buffSize > 0) {
			return GetBuff().HasData();
		} else {
			return !(ADCSRA & (0b1 << ADSC));
		}
	}
	T_Result ReadRawResult() const { if constexpr (data8bitFlag) { return ADCH; } else { return ADC; } }
	T_Result ReadResult() const {
		if constexpr (buffSize > 0) { return GetBuff().ReadData(); } else { return ReadRawResult(); }
	}
	template<uint8_t pin> T_Result InputSingle() const {
		ADMUX = ADMUX & (~0b1111 << MUX0) | (PinToADCMux(pin) << MUX0);
		ADCSRA |= (0b1 << ADSC);							// ADSC: ADC Start Conversion
		while (ADCSRA & (0b1 << ADSC)) ;
		return ReadRawResult();
	}
};

template<int buffSize = 0> using ADConv = ADConvBase<uint16_t, false, buffSize>;
template<int buffSize = 0> using ADConv8bit = ADConvBase<uint8_t, true, buffSize>;

}

#endif

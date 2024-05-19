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

#define AVRT_IMPLEMENT_ADConv_AutoTrigger(variableName, buffSize) \
avrt::ADConv<buffSize> variableName; \
ISR(ADC_vect) { variableName.HandleISR_ADC(); }

#define AVRT_IMPLEMENT_ADConv8bit_AutoTrigger(variableName, buffSize) \
avrt::ADConv8bit<buffSize> variableName; \
ISR(ADC_vect) { variableName.HandleISR_ADC(); }

namespace avrt {

//------------------------------------------------------------------------------
// ADConvBase
//------------------------------------------------------------------------------
template <typename T_Result, bool data8bitFlag = false, int buffSize = 0> class ADConvBase {
public:
	using FIFOBuffEx = FIFOBuff<T_Result, buffSize>;
public:
	enum class Clock {
		Div2			= 1,
		Div4			= 2,
		Div8			= 3,
		Div16			= 4,
		Div32			= 5,
		Div64			= 6,
		Div128			= 7,
	};
public:
	enum class VoltRef {
		ARef			= 0b00,
		AVcc			= 0b01,
		Int1V1			= 0b11
	};
public:
	enum class Trigger {
		FreeRunning			= 0x0,
		Rising_ANALOG_COMP	= 0x1,
		Rising_INT0			= 0x2,
		Rising_TIMER0_COMPA	= 0x3,
		Rising_TIMER1_COMPB	= 0x5,
		Rising_TIMER1_OVF	= 0x6,
		Rising_TIMER_CAPT	= 0x7
	};
private:
	FIFOBuffEx buffs_[(buffSize > 0)? 1 : 0];
public:
	ADConvBase() {}
	FIFOBuffEx& GetBuff() { return buffs_[0]; }
	void Init(Clock clock = Clock::Div128, VoltRef voltRef = VoltRef::AVcc) const {
												// REFS: Reference Selction Bits = AVcc with external capacitor at AREF pin
		uint8_t dataADPS = static_cast<uint8_t>(clock);
												// ADPS: ADC Prescaler Select Bits
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
	void StartAutoTrigger(uint8_t pin, Trigger trigger) const {
		uint8_t dataADTS = static_cast<uint8_t>(trigger);
		ADMUX = ADMUX & ~(0b1111 << MUX0) | (PinToADCMux(pin) << MUX0);
		ADCSRB = ADCSRB & ~(0b111 << ADTS0) | (dataADTS << ADTS0);
		ADCSRA = ADCSRA | (0b1 << ADATE) | (0b1 << ADIE) | (0b1 << ADSC);	// ADSC: ADC Start Conversion
	}
	void StartSingle(uint8_t pin) const {
		ADMUX = ADMUX & (~0b1111 << MUX0) | (PinToADCMux(pin) << MUX0);
		ADCSRA |= (0b1 << ADSC);							// ADSC: ADC Start Conversion
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
		if constexpr (buffSize > 0) {
			return GetBuff().ReadData();
		} else {
			T_Result result = ReadRawResult();
			ADCSRA |= (0b1 << ADSC);						// ADSC: ADC Start Conversion
			return result;
		}
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

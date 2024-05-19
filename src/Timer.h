//------------------------------------------------------------------------------
// Timer.h
//------------------------------------------------------------------------------
#ifndef AVRT_TIMER_H
#define AVRT_TIMER_H
#include <avr/io.h>
#include <avr/interrupt.h>
#include "Util.h"

namespace avrt {

//------------------------------------------------------------------------------
// Timer0
//------------------------------------------------------------------------------
template<
	uint8_t dataCOM0A			= 0b00,		// COM0A: Compare Match Output A Mode
	uint8_t dataCOM0B			= 0b00,		// COM0B: Compare Match OUtput B Mode
	uint8_t dataFOC0A			= 0b0,		// FOC0A: Force Output Compare A
	uint8_t dataFOC0B			= 0b0		// FOC0B: Force Output Compare B
> class Timer0 {
public:
	constexpr static uint8_t EnableInt_None			= 0;
	constexpr static uint8_t EnableInt_TIMER0_OVF	= (1 << 0);
	constexpr static uint8_t EnableInt_TIMER0_COMPA	= (1 << 1);
	constexpr static uint8_t EnableInt_TIMER0_COMPB	= (1 << 2);
	enum class Clock {
		None					= 0,
		Div1					= 1,
		Div8					= 2,
		Div64					= 3,
		Div256					= 4,
		Div1024					= 5,
		T0_Falling				= 6,
		T0_Rising				= 7,
	};
	enum class Waveform {
		Normal						= 0,
		PhaseCorrectPWM_UptoFF		= 1,
		CTC							= 2,
		FastPWM_UptoFF				= 3,
		PhaseCorrectPWM_UptoOCR0A	= 5,
		FastPWM_UptoOCR0A			= 7,
	};
public:
	void Start(Clock clock, Waveform waveform, uint8_t flags = 0) const {
		uint8_t dataCS0 = static_cast<uint8_t>(clock);
											// CS0: Clock Select
		uint8_t dataWGM0 = static_cast<uint8_t>(waveform);
											// WGM0: Waveform Generation Mode
		uint8_t dataTOIE0 = (flags >> 0) & 1;	// TOIE0: Timer/Counter0 Overflow Interrupt Enable (TIMER0_OVF)
		uint8_t dataOCIE0A = (flags >> 1) & 1;	// OCIE0A: Timer/Counter0 Output Compare Match A Interrupt Enable (TIMER0_COMPA)
		uint8_t dataOCIE0B = (flags >> 2) & 1;	// OCIE0B: Timer/Counter0 Output Compare Match B Interrupt Enable (TIMER0_COMPB)
		constexpr uint8_t dataOCF0A	= 0b1;	// OCF0A: Timer/Counter0 Output Compare A Match Flag = Set One to Clear
		constexpr uint8_t dataOCF0B	= 0b1;	// OCF0B: Timer/Counter0 Output Compare B Match Flag = Set One to Clear
		constexpr uint8_t dataTOV0	= 0b1;	// TOV0: Timer/Counter0 Overflow Flag = Set One to Clear
		TCCR0A = (dataCOM0A << COM0A0) | (dataCOM0B << COM0B0) | ((dataWGM0 & 0b11) << WGM00);
		TCCR0B = (dataFOC0A << FOC0A) | (dataFOC0B << FOC0B) | ((dataWGM0 >> 2) << WGM02) | (dataCS0 << CS00);
		TCNT0 = 0x00;
		OCR0A = 0x00;
		OCR0B = 0x00;
		TIMSK0 = (dataOCIE0B << OCIE0B) | (dataOCIE0A << OCIE0A) | (dataTOIE0 << TOIE0);
		TIFR0 = (dataOCF0B << OCF0B) | (dataOCF0A << OCF0A) | (dataTOV0 << TOV0);
	}
};

//------------------------------------------------------------------------------
// Timer1
//------------------------------------------------------------------------------
template<
	uint8_t dataCOM1A			= 0b00,		// COM1A: Compare Match Output A Mode
	uint8_t dataCOM1B			= 0b00,		// COM1B: Compare Match OUtput B Mode
	uint8_t dataFOC1A			= 0b0,		// FOC1A: Force Output Compare A
	uint8_t dataFOC1B			= 0b0,		// FOC1B: Force Output Compare B
	// Timer1-specific parameters
	uint8_t dataICNC1			= 0b0,		// ICNC1: Input Capture Noice Canceler
	uint8_t dataICES1			= 0b0,		// ICES1: Input Capture Edge Select
	uint8_t dataICIE1			= 0b0,		// ICIE1: Timer/Counter1 Input Capture Interrupt Enable
	uint8_t dataICF1			= 0b0		// ICF1: Timer/Counter1 Input Capture Flag
> class Timer1 {
public:
	constexpr static uint8_t EnableInt_None			= 0;
	constexpr static uint8_t EnableInt_TIMER1_OVF	= (1 << 0);
	constexpr static uint8_t EnableInt_TIMER1_COMPA	= (1 << 1);
	constexpr static uint8_t EnableInt_TIMER1_COMPB	= (1 << 2);
	enum class Clock {
		None					= 0,
		Div1					= 1,
		Div8					= 2,
		Div64					= 3,
		Div256					= 4,
		Div1024					= 5,
		T1_Falling				= 6,
		T1_Rising				= 7,
	};
	enum class Waveform {
		Normal								= 0,
		PhaseCorrectPWM_Upto00FF			= 1,
		PhaseCorrectPWM_Upto01FF			= 2,
		PhaseCorrectPWM_Upto03FF			= 3,
		CTC									= 4,
		FastPWM_Upto00FF					= 5,
		FastPWM_Upto01FF					= 6,
		FastPWM_Upto03FF					= 7,
		PhaseAndFreqCorrectPWM_UptoICR1		= 8,
		PhaseAndFreqCorrectPWM_UptoOCR1A	= 9,
		PhaseCorrectPWM_UptoICR1			= 10,
		PhaseCorrectPWM_UptoOCR1A			= 11,
		CTC_UptoICR1						= 12,
		FastPWM_UptoICR1					= 13,
		FastPWM_UptoOCR1A					= 14,
	};
public:
	void Start(Clock clock, Waveform waveform, uint8_t flags = 0) const {
		uint8_t dataTOIE1 = (flags >> 0) & 1;	// TOIE1: Timer/Counter1 Overflow Interrupt Enable .. (TIMER1_OVF)
		uint8_t dataOCIE1A = (flags >> 1) & 1;	// OCIE1A: Timer/Counter1 Output Compare Match A Interrupt Enable (TIMER1_COMPA)
		uint8_t dataOCIE1B = (flags >> 2) & 1;	// OCIE1B: Timer/Counter1 Output Compare Match B Interrupt Enable (TIMER1_COMPB)
		uint8_t dataCS1 = static_cast<uint8_t>(clock);	
											// CS1: Clock Select
		uint8_t dataWGM1 = static_cast<uint8_t>(waveform);
											// WGM1: Waveform Generation Mode
		constexpr uint8_t dataOCF1A	= 0b1;	// OCF10A: Timer/Counter1 Output Compare A Match Flag = Set One to Clear
		constexpr uint8_t dataOCF1B	= 0b1;	// OCF1B: Timer/Counter1 Output Compare B Match Flag = Set One to Clear
		constexpr uint8_t dataTOV1	= 0b1;	// TOV1: Timer/Counter1 Overflow Flag = Set One to Clear
		TCCR1A = (dataCOM1A << COM1A0) | (dataCOM1B << COM1B0) | ((dataWGM1 & 0b11) << WGM10);
		TCCR1B = (dataICNC1 << ICNC1) | (dataICES1 << ICES1) | ((dataWGM1 >> 2) << WGM12) | (dataCS1 << CS10);
		TCCR1C = (dataFOC1A << FOC1A) | (dataFOC1B << FOC1B);
		TCNT1H = 0x00, TCNT1L = 0x00;
		OCR1AH = 0x00, OCR1AL = 0x00;
		OCR1BH = 0x00, OCR1BL = 0x00;
		ICR1H = 0x00, ICR1L = 0x00;
		TIMSK1 = (dataICIE1 << ICIE1) | (dataOCIE1B << OCIE1B) | (dataOCIE1A << OCIE1A) | (dataTOIE1 << TOIE1);
		TIFR1 = (dataICF1 << ICF1) | (dataOCF1B << OCF1B) | (dataOCF1A << OCF1A) | (dataTOV1 << TOV1);
	}
};

//------------------------------------------------------------------------------
// Timer2
//------------------------------------------------------------------------------
template<
	uint8_t dataCOM2A			= 0b00,		// COM2A: Compare Match Output A Mode
	uint8_t dataCOM2B			= 0b00,		// COM2B: Compare Match OUtput B Mode
	uint8_t dataFOC2A			= 0b0,		// FOC2A: Force Output Compare A
	uint8_t dataFOC2B			= 0b0,		// FOC2B: Force Output Compare B
	// Timer2-specific parameters
	uint8_t dataEXCLK			= 0b0,		// EXCLK: Enable External Clock Input
	uint8_t dataAS2				= 0b0,		// AS2: ASynchronous Timer/Counter2
	uint8_t dataTCN2UB			= 0b0,		// TCN2UB: Timer/Counter2 Update Busy
	uint8_t dataOCR2AUB			= 0b0,		// OCR2AUB: Output Compare Register2 A Update Busy
	uint8_t dataOCR2BUB			= 0b0,		// OCR2BUB: Output Compare Register2 B Update Busy
	uint8_t dataTCR2AUB			= 0b0,		// TCR2AUB: Timer/Counter Control Register2 A Update Busy
	uint8_t dataTCR2BUB			= 0b0,		// TCR2BUB: Timer/Counter Control Register2 B Update BUsy
	uint8_t dataTSM				= 0b0,		// TSM: Timer/Counter Synchronization Mode
	uint8_t dataPSRASY			= 0b0,		// PSRASY: Prescaler Reset Timer/Counter2
	uint8_t dataPSRSYNC			= 0b0		// PSRSYNC:
> class Timer2 {
public:
	constexpr static uint8_t EnableInt_None			= 0;
	constexpr static uint8_t EnableInt_TIMER2_OVF	= (1 << 0);
	constexpr static uint8_t EnableInt_TIMER2_COMPA	= (1 << 1);
	constexpr static uint8_t EnableInt_TIMER2_COMPB	= (1 << 2);
	enum class Clock {
		None						= 0,
		Div1						= 1,
		Div8						= 2,
		Div32						= 3,
		Div64						= 4,
		Div128						= 5,
		Div256						= 6,
		Div1024						= 7,
	};
	enum class Waveform {
		Normal						= 0,
		PhaseCorrectPWM_UptoFF		= 1,
		CTC							= 2,
		FastPWM_UptoFF				= 3,
		PhaseCorrectPWM_UptoOCR2A	= 5,
		FastPWM_UptoOCR2A			= 7,
	};
public:
	void Start(Clock clock, Waveform waveform, uint8_t flags = 0) const {
		uint8_t dataCS2 = static_cast<uint8_t>(clock);
											// CS2: Clock Select
		uint8_t dataWGM2 = static_cast<uint8_t>(waveform);
											// WGM2: Waveform Generation Mode
		uint8_t dataTOIE2 = (flags >> 0) & 1;	// TOIE2: Timer/Counter2 Overflow Interrupt Enable .. (TIMER2_OVF)
		uint8_t dataOCIE2A = (flags >> 1) & 1;	// OCIE2A: Timer/Counter2 Output Compare Match A Interrupt Enable (TIMER2_COMPA)
		uint8_t dataOCIE2B = (flags >> 2) & 1;	// OCIE2B: Timer/Counter2 Output Compare Match B Interrupt Enable (TIMER2_COMPB)
		constexpr uint8_t dataOCF2A	= 0b1;	// OCF2A: Timer/Counter2 Output Compare A Match Flag = Set One to Clear
		constexpr uint8_t dataOCF2B	= 0b1;	// OCF2B: Timer/Counter2 Output Compare B Match Flag = Set One to Clear
		constexpr uint8_t dataTOV2	= 0b1;	// TOV2: Timer/Counter2 Overflow Flag = Set One to Clear
		TCCR2A = (dataCOM2A << COM2A0) | (dataCOM2B << COM2B0) | ((dataWGM2 & 0b11) << WGM20);
		TCCR2B = (dataFOC2A << FOC2A) | (dataFOC2B << FOC2B) | ((dataWGM2 >> 2) << WGM22) | (dataCS2 << CS20);
		TCNT2 = 0x00;
		OCR2A = 0x00;
		OCR2B = 0x00;
		TIMSK2 = (dataOCIE2B << OCIE2B) | (dataOCIE2A << OCIE2A) | (dataTOIE2 << TOIE2);
		TIFR2 = (dataOCF2B << OCF2B) | (dataOCF2A << OCF2A) | (dataTOV2 << TOV2);
		ASSR = (dataEXCLK << EXCLK) | (dataAS2 << AS2) | (dataTCN2UB << TCN2UB) |
			(dataOCR2AUB << OCR2AUB) | (dataOCR2BUB << OCR2BUB) | (dataTCR2AUB << TCR2AUB) | (dataTCR2BUB << TCR2BUB);
		GTCCR = (dataTSM << TSM) | (dataPSRASY << PSRASY) | (dataPSRSYNC << PSRSYNC);	
	}
};

}

#endif

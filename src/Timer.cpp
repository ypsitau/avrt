//==============================================================================
// Timer.cpp
//==============================================================================
#include "Timer.h"

namespace avrt {

//------------------------------------------------------------------------------
// Timer
//------------------------------------------------------------------------------
void Timer::AddAlarm(Alarm* pAlarm)
{
	pAlarm->SetAlarmNext(pAlarmTop_);
	pAlarmTop_ = pAlarm;
}

void Timer::RemoveAlarm(Alarm* pAlarm)
{
	if (pAlarmTop_ == pAlarm) {
		pAlarmTop_ = pAlarm->GetAlarmNext();
	} else {
		for (Alarm* pAlarmIter = pAlarmTop_; pAlarmIter; pAlarmIter = pAlarmIter->GetAlarmNext()) {
			if (pAlarmIter->GetAlarmNext() == pAlarm) {
				pAlarmIter->SetAlarmNext(pAlarm->GetAlarmNext());
				break;
			}
		}
	}
	pAlarm->SetAlarmNext(nullptr);
}

void Timer::AdvanceTickCur()
{
	// This function is supposed to be called in the interrupt context.
	tickCur_++;
	uint32_t tickCur = tickCur_;
	for (Alarm* pAlarmIter = pAlarmTop_; pAlarmIter; ) {
		Alarm* pAlarmNext = pAlarmIter->GetAlarmNext();
		if (pAlarmIter->Check(tickCur)) {
			RemoveAlarm(pAlarmIter);
			pAlarmIter->SetExpired();
		}
		pAlarmIter = pAlarmNext;
	}
}

void Timer::DelayTicks(uint32_t ticks)
{
	AddAlarm(&alarmForDelay_);
	alarmForDelay_.StartTicks(ticks);
	while (!alarmForDelay_.IsExpired()) ;
}

void Timer::DelayClocks(uint32_t clocks)
{
}

void Timer::DelayUSec(uint32_t usec)
{

}

//------------------------------------------------------------------------------
// Timer::Alarm
//------------------------------------------------------------------------------
void Timer::Alarm::Start()
{
	InterruptDisabledSection section;
	tickStart_ = pTimer_->GetTickCur();
	expiredFlag_ = false;
	pTimer_->AddAlarm(this);
}

void Timer::Alarm::Cancel()
{
	pTimer_->RemoveAlarm(this);
}

//------------------------------------------------------------------------------
// Timer0
//------------------------------------------------------------------------------
void Timer0::Start(Clock clock, Waveform waveform, uint8_t flags) const
{
	uint8_t dataCS0 = static_cast<uint8_t>(clock);		// CS0: Clock Select
	uint8_t dataWGM0 = static_cast<uint8_t>(waveform);	// WGM0: Waveform Generation Mode
	uint8_t dataTOIE0 = (flags >> 0) & 1;	// TOIE0: Timer/Counter0 Overflow Interrupt Enable (TIMER0_OVF)
	uint8_t dataOCIE0A = (flags >> 1) & 1;	// OCIE0A: Timer/Counter0 Output Compare Match A Interrupt Enable (TIMER0_COMPA)
	uint8_t dataOCIE0B = (flags >> 2) & 1;	// OCIE0B: Timer/Counter0 Output Compare Match B Interrupt Enable (TIMER0_COMPB)
	constexpr uint8_t dataOCF0A	= 0b1;		// OCF0A: Timer/Counter0 Output Compare A Match Flag = Set One to Clear
	constexpr uint8_t dataOCF0B	= 0b1;		// OCF0B: Timer/Counter0 Output Compare B Match Flag = Set One to Clear
	constexpr uint8_t dataTOV0	= 0b1;		// TOV0: Timer/Counter0 Overflow Flag = Set One to Clear
	constexpr uint8_t dataCOM0A = 0b00;		// COM0A: Compare Match Output A Mode
	constexpr uint8_t dataCOM0B = 0b00;		// COM0B: Compare Match OUtput B Mode
	constexpr uint8_t dataFOC0A = 0b0;		// FOC0A: Force Output Compare A
	constexpr uint8_t dataFOC0B = 0b0;		// FOC0B: Force Output Compare B
	TCCR0A = (dataCOM0A << COM0A0) | (dataCOM0B << COM0B0) | ((dataWGM0 & 0b11) << WGM00);
	TCCR0B = (dataFOC0A << FOC0A) | (dataFOC0B << FOC0B) | ((dataWGM0 >> 2) << WGM02) | (dataCS0 << CS00);
	TCNT0 = 0x00;
	OCR0A = 0x00;
	OCR0B = 0x00;
	TIMSK0 = (dataOCIE0B << OCIE0B) | (dataOCIE0A << OCIE0A) | (dataTOIE0 << TOIE0);
	TIFR0 = (dataOCF0B << OCF0B) | (dataOCF0A << OCF0A) | (dataTOV0 << TOV0);
}

uint32_t Timer0::CalcFreqOVF() const
{
	Clock clock = static_cast<Clock>((TCCR0B >> CS00) & 0b111);
	Waveform waveform = static_cast<Waveform>(((TCCR0A >> WGM00) & 0b11) + (((TCCR0B >> WGM02) & 0b1) << 2));
	int prescale = (clock == Clock::Div1)? 0 : (clock == Clock::Div8)? 3 : (clock == Clock::Div64)? 6 :
		(clock == Clock::Div256)? 8 : (clock == Clock::Div1024)? 10 : 0;
	uint32_t freq = F_CPU >> prescale;
	uint32_t dataOCR0A = static_cast<uint32_t>(OCR0A);
	uint32_t dataOCR0ASafe = (dataOCR0A == 0)? 1 : dataOCR0A;
	return
		(waveform == Waveform::Normal)? freq / (1 + 0xff) :
		(waveform == Waveform::PhaseCorrectPWM_UptoFF)? freq / (2 * 0xff) :				// 15.7.4
		(waveform == Waveform::CTC)? freq / (1 + dataOCR0A) :							// 15.7.2 (corrected)
		(waveform == Waveform::FastPWM_UptoFF)? freq / (1 + 0xff) :						// 15.7.3
		(waveform == Waveform::PhaseCorrectPWM_UptoOCR0A)? freq / (2 * dataOCR0ASafe) :	// 15.7.4
		(waveform == Waveform::FastPWM_UptoOCR0A)? freq / (1 + dataOCR0A) :				// 15.7.3
		freq;
}

//------------------------------------------------------------------------------
// Timer1
//------------------------------------------------------------------------------
void Timer1::Start(Clock clock, Waveform waveform, uint8_t flags) const
{
	uint8_t dataCS1 = static_cast<uint8_t>(clock);		// CS1: Clock Select
	uint8_t dataWGM1 = static_cast<uint8_t>(waveform);	// WGM1: Waveform Generation Mode
	uint8_t dataTOIE1 = (flags >> 0) & 1;	// TOIE1: Timer/Counter1 Overflow Interrupt Enable .. (TIMER1_OVF)
	uint8_t dataOCIE1A = (flags >> 1) & 1;	// OCIE1A: Timer/Counter1 Output Compare Match A Interrupt Enable (TIMER1_COMPA)
	uint8_t dataOCIE1B = (flags >> 2) & 1;	// OCIE1B: Timer/Counter1 Output Compare Match B Interrupt Enable (TIMER1_COMPB)
	uint8_t dataICIE1 = (flags >> 3) & 1;	// ICIE1: Timer/Counter1 Input Capture Interrupt Enable
	constexpr uint8_t dataOCF1A	= 0b1;		// OCF10A: Timer/Counter1 Output Compare A Match Flag = Set One to Clear
	constexpr uint8_t dataOCF1B	= 0b1;		// OCF1B: Timer/Counter1 Output Compare B Match Flag = Set One to Clear
	constexpr uint8_t dataTOV1	= 0b1;		// TOV1: Timer/Counter1 Overflow Flag = Set One to Clear
	constexpr uint8_t dataCOM1A = 0b00;		// COM1A: Compare Match Output A Mode
	constexpr uint8_t dataCOM1B = 0b00;		// COM1B: Compare Match OUtput B Mode
	constexpr uint8_t dataFOC1A = 0b0;		// FOC1A: Force Output Compare A
	constexpr uint8_t dataFOC1B = 0b0;		// FOC1B: Force Output Compare B
	constexpr uint8_t dataICNC1 = 0b0;		// ICNC1: Input Capture Noice Canceler
	constexpr uint8_t dataICES1 = 0b0;		// ICES1: Input Capture Edge Select
	constexpr uint8_t dataICF1 = 0b1;		// ICF1: Timer/Counter1 Input Capture Flag = Set One to Clear
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

uint32_t Timer1::CalcFreqOVF() const
{
	Clock clock = static_cast<Clock>((TCCR1B >> CS10) & 0b111);
	Waveform waveform = static_cast<Waveform>(((TCCR1A >> WGM10) & 0b11) + (((TCCR1B >> WGM12) & 0b1) << 2));
	int prescale = (clock == Clock::Div1)? 0 : (clock == Clock::Div8)? 3 : (clock == Clock::Div64)? 6 :
		(clock == Clock::Div256)? 8 : (clock == Clock::Div1024)? 10 : 0;
	uint32_t freq = F_CPU >> prescale;
	uint32_t dataICR1 = static_cast<uint32_t>(ICR1);
	uint32_t dataOCR1A = static_cast<uint32_t>(OCR1A);
	uint32_t dataICR1Safe = (dataICR1 == 0)? 1 : dataICR1;
	uint32_t dataOCR1ASafe = (dataOCR1A == 0)? 1 : dataOCR1A;
	return
		(waveform == Waveform::Normal)? freq / (1 + 0xff) :
		(waveform == Waveform::PhaseCorrectPWM_Upto00FF)? freq / (2 * 0xff) :					// 16.9.4
		(waveform == Waveform::PhaseCorrectPWM_Upto01FF)? freq / (2 * 0x1ff) :					// 16.9.4
		(waveform == Waveform::PhaseCorrectPWM_Upto03FF)? freq / (2 * 0x3ff) :					// 16.9.4
		(waveform == Waveform::CTC)? freq / (1 + dataOCR1A) :									// 16.9.2 (corrected)
		(waveform == Waveform::FastPWM_Upto00FF)? freq / (1 + 0xff) :							// 16.9.3
		(waveform == Waveform::FastPWM_Upto01FF)? freq / (1 + 0x1ff) :							// 16.9.3
		(waveform == Waveform::FastPWM_Upto03FF)? freq / (1 + 0x3ff) :							// 16.9.3
		(waveform == Waveform::PhaseAndFreqCorrectPWM_UptoICR1)? freq / (2 * dataICR1Safe) :	// 16.9.5
		(waveform == Waveform::PhaseAndFreqCorrectPWM_UptoOCR1A)? freq / (2 * dataOCR1ASafe) :	// 16.9.5
		(waveform == Waveform::PhaseCorrectPWM_UptoICR1)? freq / (2 * dataICR1Safe) :			// 16.9.4
		(waveform == Waveform::PhaseCorrectPWM_UptoOCR1A)? freq / (2 * dataOCR1ASafe) :			// 16.9.4
		(waveform == Waveform::CTC_UptoICR1)? freq / (1 + dataICR1) :							// 16.9.2 (corrected)
		(waveform == Waveform::FastPWM_UptoICR1)? freq / (1 + dataICR1) :						// 16.9.3
		(waveform == Waveform::FastPWM_UptoOCR1A)? freq / (1 + dataOCR1A) :						// 16.9.3
		freq;
}

//------------------------------------------------------------------------------
// Timer2
//------------------------------------------------------------------------------
void Timer2::Start(Clock clock, Waveform waveform, uint8_t flags = 0) const
{
	uint8_t dataCS2 = static_cast<uint8_t>(clock);		// CS2: Clock Select
	uint8_t dataWGM2 = static_cast<uint8_t>(waveform);	// WGM2: Waveform Generation Mode
	uint8_t dataTOIE2 = (flags >> 0) & 1;	// TOIE2: Timer/Counter2 Overflow Interrupt Enable .. (TIMER2_OVF)
	uint8_t dataOCIE2A = (flags >> 1) & 1;	// OCIE2A: Timer/Counter2 Output Compare Match A Interrupt Enable (TIMER2_COMPA)
	uint8_t dataOCIE2B = (flags >> 2) & 1;	// OCIE2B: Timer/Counter2 Output Compare Match B Interrupt Enable (TIMER2_COMPB)
	constexpr uint8_t dataOCF2A	= 0b1;		// OCF2A: Timer/Counter2 Output Compare A Match Flag = Set One to Clear
	constexpr uint8_t dataOCF2B	= 0b1;		// OCF2B: Timer/Counter2 Output Compare B Match Flag = Set One to Clear
	constexpr uint8_t dataTOV2	= 0b1;		// TOV2: Timer/Counter2 Overflow Flag = Set One to Clear
	constexpr uint8_t dataCOM2A = 0b00;		// COM2A: Compare Match Output A Mode
	constexpr uint8_t dataCOM2B = 0b00;		// COM2B: Compare Match OUtput B Mode
	constexpr uint8_t dataFOC2A = 0b0;		// FOC2A: Force Output Compare A
	constexpr uint8_t dataFOC2B = 0b0;		// FOC2B: Force Output Compare B
	constexpr uint8_t dataEXCLK = 0b0;		// EXCLK: Enable External Clock Input
	constexpr uint8_t dataAS2 = 0b0;		// AS2: ASynchronous Timer/Counter2
	constexpr uint8_t dataTCN2UB = 0b0;		// TCN2UB: Timer/Counter2 Update Busy
	constexpr uint8_t dataOCR2AUB = 0b0;	// OCR2AUB: Output Compare Register2 A Update Busy
	constexpr uint8_t dataOCR2BUB = 0b0;	// OCR2BUB: Output Compare Register2 B Update Busy
	constexpr uint8_t dataTCR2AUB = 0b0;	// TCR2AUB: Timer/Counter Control Register2 A Update Busy
	constexpr uint8_t dataTCR2BUB = 0b0;	// TCR2BUB: Timer/Counter Control Register2 B Update BUsy
	constexpr uint8_t dataTSM = 0b0;		// TSM: Timer/Counter Synchronization Mode
	constexpr uint8_t dataPSRASY = 0b0;		// PSRASY: Prescaler Reset Timer/Counter2
	constexpr uint8_t dataPSRSYNC = 0b0;	// PSRSYNC:
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

uint32_t Timer2::CalcFreqOVF() const
{
	Clock clock = static_cast<Clock>((TCCR2B >> CS20) & 0b111);
	Waveform waveform = static_cast<Waveform>(((TCCR2A >> WGM20) & 0b11) + (((TCCR2B >> WGM22) & 0b1) << 2));
	int prescale = (clock == Clock::Div1)? 0 : (clock == Clock::Div8)? 3 : (clock == Clock::Div32)? 5 :
		(clock == Clock::Div64)? 6 : (clock == Clock::Div128)? 7 : (clock == Clock::Div256)? 8 :
		(clock == Clock::Div1024)? 10 : 0;
	uint32_t freq = F_CPU >> prescale;
	uint32_t dataOCR2A = static_cast<uint32_t>(OCR2A);
	uint32_t dataOCR2ASafe = (dataOCR2A == 0)? 1 : dataOCR2A;
	return
		(waveform == Waveform::Normal)? freq / (1 + 0xff) :
		(waveform == Waveform::PhaseCorrectPWM_UptoFF)? freq / (2 * 0xff) :				// 18.7.4
		(waveform == Waveform::CTC)? freq / (1 + dataOCR2A) :							// 18.7.2 (corrected)
		(waveform == Waveform::FastPWM_UptoFF)? freq / (1 + 0xff) :						// 18.7.3
		(waveform == Waveform::PhaseCorrectPWM_UptoOCR2A)? freq / (2 * dataOCR2ASafe) :	// 18.7.4
		(waveform == Waveform::FastPWM_UptoOCR2A)? freq / (1 + dataOCR2A) :				// 18.7.3
		freq;
}

}

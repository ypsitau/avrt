//==============================================================================
// Timer.h
//==============================================================================
#ifndef AVRT_TIMER_H
#define AVRT_TIMER_H
#include <avr/io.h>
#include <avr/interrupt.h>
#include "Util.h"

#define AVRT_IMPLEMENT_Timer0(variableName) \
avrt::Timer0 variableName; \
ISR(TIMER0_COMPA_vect) { variableName.HandleIRQ_TIMER0_COMPA(); } \
ISR(TIMER0_COMPB_vect) { variableName.HandleIRQ_TIMER0_COMPB(); } \
ISR(TIMER0_OVF_vect) { variableName.HandleIRQ_TIMER0_OVF(); }

#define AVRT_DECLARE_Timer0(variableName) \
extern avrt::Timer0 variableName;

#define AVRT_IMPLEMENT_Timer1(variableName) \
avrt::Timer1 variableName; \
ISR(TIMER1_CAPT_vect) { variableName.HandleIRQ_TIMER1_CAPT(); } \
ISR(TIMER1_COMPA_vect) { variableName.HandleIRQ_TIMER1_COMPA(); } \
ISR(TIMER1_COMPB_vect) { variableName.HandleIRQ_TIMER1_COMPB(); } \
ISR(TIMER1_OVF_vect) { variableName.HandleIRQ_TIMER1_OVF(); }

#define AVRT_DECLARE_Timer1(variableName) \
extern avrt::Timer1 variableName;

#define AVRT_IMPLEMENT_Timer2(variableName) \
avrt::Timer2 variableName; \
ISR(TIMER2_COMPA_vect) { variableName.HandleIRQ_TIMER2_COMPA(); } \
ISR(TIMER2_COMPB_vect) { variableName.HandleIRQ_TIMER2_COMPB(); } \
ISR(TIMER2_OVF_vect) { variableName.HandleIRQ_TIMER2_OVF(); }

#define AVRT_DECLARE_Timer2(variableName) \
extern avrt::Timer2 variableName;

namespace avrt {

//------------------------------------------------------------------------------
// Timer
//------------------------------------------------------------------------------
class Timer {
public:
	class Alarm {
	public:
		Timer* pTimer_;
		uint32_t tickStart_;
		uint32_t ticksToAlarm_;
		Alarm* pAlarmNext_;
		volatile bool expiredFlag_;
	public:
		Alarm(Timer& timer) : pTimer_(&timer), tickStart_(0), ticksToAlarm_(-1), pAlarmNext_(nullptr), expiredFlag_(false) {}
		Alarm(const Alarm& alarm) : pTimer_(alarm.pTimer_), tickStart_(alarm.tickStart_),
			ticksToAlarm_(alarm.ticksToAlarm_), pAlarmNext_(alarm.pAlarmNext_), expiredFlag_(alarm.expiredFlag_) {}
		void SetAlarmNext(Alarm* pAlarmNext) { pAlarmNext_ = pAlarmNext; }
		Alarm* GetAlarmNext() { return pAlarmNext_; }
		Timer& GetTimer() { return *pTimer_; }
		void SetTimeoutTicks(uint32_t ticks) { ticksToAlarm_ = ticks; }
		void SetTimeout(uint32_t msec) { SetTimeoutTicks(pTimer_->ConvMSecToTicks(msec)); }
		void Start();
		void StartTicks(uint32_t ticks) { SetTimeoutTicks(ticks); Start(); }
		void Start(uint32_t msec) { SetTimeout(msec); Start(); }
		void Cancel();
		void SetExpired() { expiredFlag_ = true; }
		bool IsExpired() const { return expiredFlag_; }
		bool Check(uint32_t tickCur) { return tickCur - tickStart_ > ticksToAlarm_; }
	};
protected:
	volatile uint32_t tickCur_;
	Alarm alarmForDelay_;
	Alarm *pAlarmTop_;
public:
	Timer() : tickCur_(0), alarmForDelay_(*this), pAlarmTop_(nullptr) {}
	uint32_t GetTickCur() const { return tickCur_; }
	uint32_t ConvMSecToTicks(uint32_t msec) const { return (msec * CalcFreqOVF() + 500) / 1000; }
	static uint32_t ConvUSecToClocks(uint32_t usec) { return usec * ((F_CPU + 500000) / 1000000); }
	void DelayTicks(uint32_t ticks);
	void DelayMSec(uint32_t msec) { DelayTicks(ConvMSecToTicks(msec)); }
	void AddAlarm(Alarm* pAlarm);
	void RemoveAlarm(Alarm* pAlarm);
	void AdvanceTickCur();
	static void DelayClocks(uint32_t clocks);
	static void DelayUSec(uint32_t usec);
public:
	virtual uint32_t CalcFreqOVF() const = 0;
};


//------------------------------------------------------------------------------
// Timer0
//------------------------------------------------------------------------------
class Timer0 : public Timer {
public:
	class Handler {
	public:
		virtual void HandleIRQ_TIMER0_COMPA(void) {}
		virtual void HandleIRQ_TIMER0_COMPB(void) {}
		virtual void HandleIRQ_TIMER0_OVF(void) {}
	};
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
private:
	Handler* pHandler_;
public:
	Timer0() : pHandler_(nullptr) {}
	void SetHandler(Handler* pHandler) { pHandler_ = pHandler; }
	void Start(Clock clock, Waveform waveform, uint8_t flags = 0) const;
	void HandleIRQ_TIMER0_COMPA() {
		if (pHandler_) pHandler_->HandleIRQ_TIMER0_COMPA();
	}
	void HandleIRQ_TIMER0_COMPB() {
		if (pHandler_) pHandler_->HandleIRQ_TIMER0_COMPB();
	}
	void HandleIRQ_TIMER0_OVF() {
		AdvanceTickCur();
		if (pHandler_) pHandler_->HandleIRQ_TIMER0_OVF();
	}
public:
	virtual uint32_t CalcFreqOVF() const override;
};

//------------------------------------------------------------------------------
// Timer1
//------------------------------------------------------------------------------
class Timer1 : public Timer {
public:
	class Handler {
	public:
		virtual void HandleIRQ_TIMER1_CAPT(void) {}
		virtual void HandleIRQ_TIMER1_COMPA(void) {}
		virtual void HandleIRQ_TIMER1_COMPB(void) {}
		virtual void HandleIRQ_TIMER1_OVF(void) {}
	};
public:
	constexpr static uint8_t EnableInt_None			= 0;
	constexpr static uint8_t EnableInt_TIMER1_OVF	= (1 << 0);
	constexpr static uint8_t EnableInt_TIMER1_COMPA	= (1 << 1);
	constexpr static uint8_t EnableInt_TIMER1_COMPB	= (1 << 2);
	constexpr static uint8_t EnableInt_TIMER1_CAPT	= (1 << 3);
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
private:
	Handler* pHandler_;
public:
	Timer1() : pHandler_(nullptr) {}
	void SetHandler(Handler* pHandler) { pHandler_ = pHandler; }
	void Start(Clock clock, Waveform waveform, uint8_t flags = 0) const;
	void HandleIRQ_TIMER1_CAPT() {
		if (pHandler_) pHandler_->HandleIRQ_TIMER1_CAPT();
	}
	void HandleIRQ_TIMER1_COMPA() {
		if (pHandler_) pHandler_->HandleIRQ_TIMER1_COMPA();
	}
	void HandleIRQ_TIMER1_COMPB() {
		if (pHandler_) pHandler_->HandleIRQ_TIMER1_COMPB();
	}
	void HandleIRQ_TIMER1_OVF() {
		AdvanceTickCur();
		if (pHandler_) pHandler_->HandleIRQ_TIMER1_OVF();
	}
	uint32_t CalcFreqOVF() const override;
};

//------------------------------------------------------------------------------
// Timer2
//------------------------------------------------------------------------------
class Timer2 : public Timer {
public:
	class Handler {
	public:
		virtual void HandleIRQ_TIMER2_COMPA(void) {}
		virtual void HandleIRQ_TIMER2_COMPB(void) {}
		virtual void HandleIRQ_TIMER2_OVF(void) {}
	};
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
private:
	Handler* pHandler_;
public:
	Timer2() : pHandler_(nullptr) {}
	void SetHandler(Handler* pHandler) { pHandler_ = pHandler; }
	void Start(Clock clock, Waveform waveform, uint8_t flags = 0) const;
	void HandleIRQ_TIMER2_COMPA() {
		if (pHandler_) pHandler_->HandleIRQ_TIMER2_COMPA();
	}
	void HandleIRQ_TIMER2_COMPB() {
		if (pHandler_) pHandler_->HandleIRQ_TIMER2_COMPB();
	}
	void HandleIRQ_TIMER2_OVF() {
		AdvanceTickCur();
		if (pHandler_) pHandler_->HandleIRQ_TIMER2_OVF();
	}
public:
	uint32_t CalcFreqOVF() const override;
};

}

#endif

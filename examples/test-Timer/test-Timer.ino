#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::D2, av::Out> portD2;
av::Port<av::D3, av::Out> portD3;
av::Port<av::D4, av::Out> portLED1;
av::Port<av::D5, av::Out> portLED2;
av::Port<av::D6, av::Out> portLED3;

av::Timer0 timer0;
av::Timer1 timer1;
av::Timer2 timer2;

av::Timer::Alarm alarm1(timer1);
av::Timer::Alarm alarm2(timer1);
av::Timer::Alarm alarm3(timer1);

ISR(TIMER1_OVF_vect)
{
	portD2.DigitalImpulse();
	timer1.HandleIRQ_TIMER1_OVF();
}

ISR(TIMER2_OVF_vect)
{
	portD3.DigitalToggle();
	timer2.HandleIRQ_TIMER2_OVF();
}

void setup()
{
	av::Ports::Init();
	serial.Open(serial.Speed::Bps57600);
	//--------------------------------------------------------------------------
	do {
		uint8_t flags = timer0.EnableInt_TIMER0_OVF;
		//timer0.Start(timer0.Clock::Div64, timer0.Waveform::Normal, flags);
		timer0.Start(timer0.Clock::Div64, timer0.Waveform::PhaseCorrectPWM_UptoFF, flags);
		//timer0.Start(timer0.Clock::Div64, timer0.Waveform::CTC, flags);
		//timer0.Start(timer0.Clock::Div64, timer0.Waveform::FastPWM_UptoFF, flags);
		//timer0.Start(timer0.Clock::Div64, timer0.Waveform::PhaseCorrectPWM_UptoOCR0A, flags);
		//timer0.Start(timer0.Clock::Div64, timer0.Waveform::FastPWM_UptoOCR0A, flags);
		//OCR0A = 0x20;
	} while (0);
	//--------------------------------------------------------------------------
	do {
		uint8_t flags = timer1.EnableInt_TIMER1_OVF;
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::Normal, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::PhaseCorrectPWM_Upto00FF, flags);
		timer1.Start(timer1.Clock::Div64, timer1.Waveform::PhaseCorrectPWM_Upto01FF, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::PhaseCorrectPWM_Upto03FF, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::CTC, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::FastPWM_Upto00FF, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::FastPWM_Upto01FF, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::FastPWM_Upto03FF, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::PhaseAndFreqCorrectPWM_UptoICR1, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::PhaseAndFreqCorrectPWM_UptoOCR1A, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::PhaseCorrectPWM_UptoICR1, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::PhaseCorrectPWM_UptoOCR1A, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::CTC_UptoICR1, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::FastPWM_UptoICR1, flags);
		//timer1.Start(timer1.Clock::Div64, timer1.Waveform::FastPWM_UptoOCR1A, flags);
		//OCR1A = 0x20;
	} while (0);
	//--------------------------------------------------------------------------
	do {
		uint8_t flags = timer2.EnableInt_TIMER2_OVF;
		timer2.Start(timer2.Clock::Div64, timer2.Waveform::Normal, flags);
		//timer2.Start(timer2.Clock::Div64, timer2.Waveform::PhaseCorrectPWM_UptoFF, flags);
		//timer2.Start(timer2.Clock::Div64, timer2.Waveform::CTC, flags);
		//timer2.Start(timer2.Clock::Div64, timer2.Waveform::FastPWM_UptoFF, flags);
		//timer2.Start(timer2.Clock::Div64, timer2.Waveform::PhaseCorrectPWM_UptoOCR2A, flags);
		//timer2.Start(timer2.Clock::Div64, timer2.Waveform::FastPWM_UptoOCR2A, flags);
		OCR2A = 0xff;
	} while (0);
	serial.Printf(F("#### test-Timer ####\n"));
	alarm1.Start(300);
	alarm2.Start(500);
	alarm3.Start(100);
}

void loop()
{
#if 1
	if (alarm1.IsExpired()) {
		portLED1.DigitalToggle();
		alarm1.Start();
	}
	if (alarm2.IsExpired()) {
		portLED2.DigitalToggle();
		alarm2.Start();
	}
	if (alarm3.IsExpired()) {
		portLED3.DigitalToggle();
		alarm3.Start();
	}
#else
	portLED1.DigitalHigh();
	timer1.DelayMSec(500);
	portLED1.DigitalLow();
	timer1.DelayMSec(500);
#endif
}

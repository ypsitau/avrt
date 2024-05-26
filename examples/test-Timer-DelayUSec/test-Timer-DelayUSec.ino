#include <avrt.h>

namespace av = avrt;

av::Port<av::D2, av::Out> portD2;
av::Port<av::D3, av::Out> portD3;

avrt::Timer1 timer;

ISR(TIMER1_OVF_vect)
{
	portD3.DigitalToggle();
	timer.HandleIRQ_TIMER1_OVF();
}

void setup()
{
	av::Ports::Init();
	timer.Start(timer.Clock::Div64, timer.Waveform::PhaseCorrectPWM_Upto00FF, timer.EnableInt_TIMER1_OVF);
	//timer.Start(timer.Clock::Div64, timer.Waveform::Normal, timer.EnableInt_TIMER2_OVF);
	//timer.Start(timer.Clock::Div64, timer.Waveform::FastPWM_UptoFF, timer.EnableInt_TIMER2_OVF);
}

void loop()
{
	portD2.DigitalToggle();
	//av::Timer::DelayUSec(100);
	timer.DelayMSec(10);
}

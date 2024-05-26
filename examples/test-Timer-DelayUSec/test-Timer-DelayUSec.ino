#include <avrt.h>

namespace av = avrt;

av::Port<av::D2, av::Out> portD2;
av::Port<av::D3, av::Out> portD3;

avrt::Timer1 timer;

AVRT_IMPLEMENT_Serial0(serial)

ISR(TIMER1_OVF_vect)
{
	portD3.DigitalToggle();
	timer.HandleIRQ_TIMER1_OVF();
}

void setup()
{
	serial.Open(serial.Speed::Bps57600);
	av::Ports::Init();
	timer.Start(timer.Clock::Div64, timer.Waveform::PhaseCorrectPWM_Upto00FF, timer.EnableInt_TIMER1_OVF);
	//timer.Start(timer.Clock::Div64, timer.Waveform::Normal, timer.EnableInt_TIMER1_OVF);
	//timer.Start(timer.Clock::Div64, timer.Waveform::FastPWM_UptoFF, timer.EnableInt_TIMER1_OVF);
	//serial.Printf("%ld\n", F_CPU);
	serial.Printf("clocks = %ld\n", av::Timer::ConvUSecToClocks(1000));
	//serial.Printf(F("clocks = %xaaaa\n"), 100);
}

void loop()
{
	portD2.DigitalToggle();
	//av::Timer::DelayClocks(1600 * 10);
	//av::Timer::DelayUSec(200);
	av::Timer::DelayUSec(100);
	//timer.DelayMSec(20);
}

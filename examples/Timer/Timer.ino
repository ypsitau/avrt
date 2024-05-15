//#include <MsTimer2.h>
#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::D2> portD2;
av::Port<av::D3> portD3;

av::Timer0<true> timer0;	// enable interrupt: TIMER0_OVF 
av::Timer1<true> timer1;	// enable interrupt: TIMER1_OVF
av::Timer2<true> timer2;	// enable interrupt: TIMER2_OVF

ISR(TIMER1_OVF_vect)
{
	//serial.Printf("TIMER1_OVF\n");
	portD2.ToggleDigital();
}

ISR(TIMER2_OVF_vect)
{
	//serial.Printf("TIMER2_OVF\n");
	portD3.ToggleDigital();
}

void setup()
{
	serial.Open(serial.BaudRate57600);
	portD2.SetMode<av::Out>();
	portD3.SetMode<av::Out>();
	timer0.Start(timer0.Clock::Div64, timer0.Waveform::FastPWM_UptoFF);
	timer1.Start(timer1.Clock::Div64, timer1.Waveform::FastPWM_Upto00FF);
	timer2.Start(timer2.Clock::Div64, timer2.Waveform::FastPWM_UptoFF);
}

void loop()
{
}

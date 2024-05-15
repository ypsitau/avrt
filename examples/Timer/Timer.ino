//#include <MsTimer2.h>
#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::D2> portD2;

av::Timer0<true> timer0;	// enable interrupt: TIMER0_OVF 
av::Timer1<true> timer1;	// enable interrupt: TIMER1_OVF

ISR(TIMER1_OVF_vect)
{
	//serial.Printf("TIMER1_OVF\n");
	portD2.ToggleDigital();
}

av::Timer2<
	0b100,	// CS2: Clock Select = clk/64
	0b001,	// WGM2: Waveform Generation Mode = PWM, Phase Correct
	0b1		// TOIE2: Timer/Counter2 Overflow Interrupt Enable (TIMER2_OVF) = enable
> timer2;

ISR(TIMER2_OVF_vect)
{
	//serial.Printf("TIMER1_OVF\n");
	//portD2.ImpulseDigital();
}

void setup()
{
	serial.Open(serial.BaudRate57600);
	portD2.SetMode<av::Out>();
	timer0.Start(timer0.Clock::Div64, timer0.Waveform::FastPWM_UptoFF);
	timer1.Start(timer1.Clock::Div64, timer1.Waveform::FastPWM_Upto00FF);
	timer2.Start(timer2.Clock::Div64, timer2.Waveform::FastPWM_UptoFF);
}

void loop()
{
}

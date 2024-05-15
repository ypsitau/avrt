//#include <MsTimer2.h>
#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

av::Port<av::D2> portD2;

av::Timer0<
	0b1		// TOIE0: Timer/Counter0 Overflow Interrupt Enable (TIMER0_OVF) = enable
> timer0;

av::Timer1<
	//0b011,	// CS1: Clock Select = clk/64
	0b001,	// CS1: Clock Select = clk/1
	0b001,	// WGM1: Waveform Generation Mode = PWM, Phase Correct, 8-bit
	//0b101,	// WGM1: Waveform Generation Mode = Fast PWM, 8-bit
	0b1		// TOIE1: Timer/Counter1 Overflow Interrupt Enable (TIMER1_OVF) = enable
> timer1;

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
	timer1.Start();
	timer2.Start();
}

void loop()
{
}

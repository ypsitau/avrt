#include <avrt.h>

namespace av = avrt;

av::Port<av::D3, av::Out> portD3;
av::Port<av::D5, av::Out> portD5;
av::Port<av::D6, av::Out> portD6;
av::Port<av::D9, av::Out> portD9;
av::Port<av::D10, av::Out> portD10;
av::Port<av::D11, av::Out> portD11;

av::Port<av::A0> portA0;

av::ADConv<> adConv;

uint8_t valuePrev = 0;

AVRT_IMPLEMENT_Serial0(serial)

av::Timer0<> timer0;
av::Timer1<> timer1;
av::Timer2<> timer2;

const __FlashStringHelper* ClockSelToString_OC0_OC1(uint8_t clockSel)
{
	return
		(clockSel == 0)? F("No Clock") :
		(clockSel == 1)? F("clk/1") :
		(clockSel == 2)? F("clk/8") :
		(clockSel == 3)? F("clk/64") :
		(clockSel == 4)? F("clk/256") :
		(clockSel == 5)? F("clk/1024") :
		(clockSel == 6)? F("External Falling Edge") :
		(clockSel == 7)? F("External Rising Edge") : F("");
}

const __FlashStringHelper* ClockSelToString_OC2(uint8_t clockSel)
{
	return
		(clockSel == 0)? F("No Clock") :
		(clockSel == 1)? F("clk/1") :
		(clockSel == 2)? F("clk/8") :
		(clockSel == 3)? F("clk/32") :
		(clockSel == 4)? F("clk/64") :
		(clockSel == 5)? F("clk/128") :
		(clockSel == 6)? F("clk/256") :
		(clockSel == 7)? F("clk/1024") : F("");
}

void setup()
{
	av::Ports::Init();
	serial.Open(serial.Speed::Bps57600);
	adConv.Init();
	//timer0.Start(timer0.Clock::Div64, timer0.Waveform::FastPWM_UptoFF);
	timer0.Start(timer0.Clock::Div64, timer0.Waveform::PhaseCorrectPWM_UptoFF);
	timer1.Start(timer1.Clock::Div64, timer1.Waveform::PhaseCorrectPWM_Upto00FF);
	timer2.Start(timer2.Clock::Div64, timer2.Waveform::PhaseCorrectPWM_UptoFF);
	portD3.PWMEnable(true);
	portD5.PWMEnable();
	portD6.PWMEnable();
	portD9.PWMEnable();
	portD10.PWMEnable();
	portD11.PWMEnable();
	serial.Println("PWMOutput");
	serial.Printf("D5, D6  .. OC0:%S\n", ClockSelToString_OC0_OC1((TCCR0B >> CS00) & 0b111));
	serial.Printf("D9, D10 .. OC1:%S\n", ClockSelToString_OC0_OC1((TCCR1B >> CS10) & 0b111));
	serial.Printf("D3, D11 .. OC2:%S\n", ClockSelToString_OC2((TCCR2B >> CS20) & 0b111));
}

void loop()
{
	uint8_t value = portA0.AnalogInput8bit();
	if (valuePrev != value) {
		//serial.Printf("Duty: %3d/255\n", value);
		valuePrev = value;
	}
	portD3.PWMOutput(value);
	portD5.PWMOutput(value);
	portD6.PWMOutput(value);
	portD9.PWMOutput(value);
	portD10.PWMOutput(value);
	portD11.PWMOutput(value);
}

#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

int cnt = 0;

av::Port<av::D2> portD2;
av::Port<av::D3> portD3;
av::Port<av::D4> portD4;
av::Port<av::D8> portD8;
av::Port<av::D14> portD14;

ISR(INT0_vect) // External Interrupt Request 0: PD2
{
	serial.Printf(F("%d INT0\n"), cnt);
	cnt++;
}

ISR(INT1_vect) // External Interrupt Request 1: PD3
{
	serial.Printf(F("%d INT1\n"), cnt);
	cnt++;
}

ISR(PCINT0_vect) // Pin Change Interrupt 0: D8 .. D15
{
	serial.Printf(F("%d PCINT0\n"), cnt);
	cnt++;
}

ISR(PCINT1_vect) // Pin Change Interrupt 1: D16 .. D23
{
	serial.Printf(F("%d PCINT1\n"), cnt);
	cnt++;
}

ISR(PCINT2_vect) // Pin Change Interrupt 2: D0 .. D7
{
	serial.Printf(F("%d PCINT2\n"), cnt);
	cnt++;
}

void setup()
{
	serial.Open(serial.Speed::Bps57600);
	portD2.SetMode<av::InPullup>();
	portD3.SetMode<av::InPullup>();
	portD4.SetMode<av::InPullup>();
	portD8.SetMode<av::InPullup>();
	portD14.SetMode<av::InPullup>();
	portD2.EnableExternalInterrupt(av::Sense::Change);	// INT0
	portD3.EnableExternalInterrupt(av::Sense::Change);	// INT1
	portD4.EnablePinChangeInterrupt();					// PCINT2
	portD8.EnablePinChangeInterrupt();					// PCINT0
	portD14.EnablePinChangeInterrupt();					// PCINT2
}

void loop()
{
}

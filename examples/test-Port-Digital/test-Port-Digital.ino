#include <avrt.h>

namespace av = avrt;

av::Port<av::D0, av::In>		portD0;
av::Port<av::D1, av::Out>		portD1;
av::Port<av::D2, av::InPullup>	portD2;
av::Port<av::D3, av::OutHigh>	portD3;
av::Port<av::D4, av::In>		portD4;
av::Port<av::D5, av::Out>		portD5;
av::Port<av::D6, av::InPullup>	portD6;
av::Port<av::D7, av::OutHigh>	portD7;

av::Port<av::D8, av::In>		portD8;
av::Port<av::D9, av::Out>		portD9;
av::Port<av::D10, av::InPullup>	portD10;
av::Port<av::D11, av::OutHigh>	portD11;
av::Port<av::D12, av::In>		portD12;
av::Port<av::D13, av::Out>		portD13;

av::Port<av::D14, av::InPullup>	portD14;
av::Port<av::D15, av::OutHigh>	portD15;
av::Port<av::D16, av::In>		portD16;
av::Port<av::D17, av::Out>		portD17;
av::Port<av::D18, av::InPullup>	portD18;
av::Port<av::D19, av::OutHigh>	portD19;
av::Port<av::D20, av::In>		portD20;

AVRT_IMPLEMENT_Serial0(serial)

void setup()
{
	serial.Open(serial.Speed::Bps57600);
	serial.Printf(F("dataDDRD:  b%08b\n"), av::Ports::dataDDRD);
	serial.Printf(F("dataDDRB:  b%08b\n"), av::Ports::dataDDRB);
	serial.Printf(F("dataDDRC:  b%08b\n"), av::Ports::dataDDRC);
	serial.Printf(F("dataPORTD: b%08b\n"), av::Ports::dataPORTD);
	serial.Printf(F("dataPORTB: b%08b\n"), av::Ports::dataPORTB);
	serial.Printf(F("dataPORTC: b%08b\n"), av::Ports::dataPORTC);
	serial.Println();
	serial.Printf(F("DDRD:  b%08b\n"), DDRD);
	serial.Printf(F("DDRB:  b%08b\n"), DDRB);
	serial.Printf(F("DDRC:  b%08b\n"), DDRC);
	serial.Printf(F("PORTD: b%08b\n"), PORTD);
	serial.Printf(F("PORTB: b%08b\n"), PORTB);
	serial.Printf(F("PORTC: b%08b\n"), PORTC);
	av::Ports::Init();
	serial.Println();
	serial.Printf(F("DDRD:  b%08b\n"), DDRD);
	serial.Printf(F("DDRB:  b%08b\n"), DDRB);
	serial.Printf(F("DDRC:  b%08b\n"), DDRC);
	serial.Printf(F("PORTD: b%08b\n"), PORTD);
	serial.Printf(F("PORTB: b%08b\n"), PORTB);
	serial.Printf(F("PORTC: b%08b\n"), PORTC);
}

void loop()
{
}

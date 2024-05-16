#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Serial0(serial)

void setup()
{
	serial.Open(serial.Speed::Bps57600, serial.CharSize::Bits8, serial.StopBit::Bits1, serial.Parity::None);
	serial.Println("Test of RecvData: Echo back typed-in messages.");
}


void loop()
{
	if (serial.HasRecvData()) {
		serial.Print("Received: ");
		while (serial.HasRecvData()) {
			serial.SendData(serial.RecvData());
		}
		serial.Println();
	}
}

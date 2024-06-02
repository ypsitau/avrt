#include <avrt.h>

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

void setup()
{
	timer.Start();
	serial.Open(serial.Speed::Bps57600);
	serial.Printf(F("#### test-TwoWire-Slave ####\n"));
	twi.Open(0x08);
}

void loop()
{
	uint8_t buff[8];
	uint8_t lenRecv;
	if (twi.PeekRequest(buff, sizeof(buff), &lenRecv)) {
		if (lenRecv == 0) {
			serial.Println(F("(no data)"));
		} else {
			serial.Print(F("Received: "));
			serial.Dump(buff, lenRecv, false);
		}
		twi.Reply("ABCDE", 5);
		//twi.Reply(~buff[0]);
	}
}

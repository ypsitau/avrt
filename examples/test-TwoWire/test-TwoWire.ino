#include <avrt.h>
#include "avrt-MPU6000_TWI.h"

namespace av = avrt;

AVRT_IMPLEMENT_Timer1(timer)
AVRT_IMPLEMENT_TwoWire(twi, timer)
AVRT_IMPLEMENT_Serial0_NoRecv(serial)

av::Timer::Alarm alarm(timer);

av::MPU6000_TWI mpu6000(twi);

void setup()
{
	timer.Start();
	serial.Open(serial.Speed::Bps57600);
	serial.Printf(F("#### test-TwoWire ####\n"));
	twi.Open(0x08);
	//twi.Detect(serial);
	//mpu6000.Open();
	//mpu6000.DumpRegister(serial);
	//alarm.Start(500);
}

int y = 0;

void loop()
{
#if 1
	uint8_t buff[8];
	uint8_t lenRecv;
	if (twi.PeekRequest(buff, sizeof(buff), &lenRecv)) {
		if (lenRecv == 0) {
			serial.Println(F("(no data)"));
		} else {
			serial.Print(F("Received: "));
			serial.Dump(buff, lenRecv, false);
		}
		//twi.Reply("hello", 5);
		twi.Reply(0xba, 0x12);
		av::Timer::DelayUSec(1000);
	}
#endif
	//uint8_t dataX, dataY;
	//mpu6000.ReadByte(mpu6000.Addr_GYRO_XOUT_H, &dataX);
	//mpu6000.ReadByte(mpu6000.Addr_GYRO_YOUT_H, &dataY);
	//y += static_cast<int8_t>(dataY);
	//if (alarm.IsExpired()) {
	//	serial.Printf("%5d\n", y);
	//	alarm.Start();
	//}

}

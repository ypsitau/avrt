#include "LCD1602IIC.h"

namespace avrt {

bool LCD1602IIC::Open()
{
	if (twi_.Transmit(0x27)) {
		sla_ = 0x27;
		return true;
	} else if (twi_.Transmit(0x3f)) {
		sla_ = 0x27;
		return true;
	}
	return false;
}

void LCD1602IIC::SendGeneric(uint8_t code, uint8_t rsBit)
{
	Timer& timer = twi_.GetTimer();
	uint8_t codeHi = code & 0xf0;
	uint8_t codeLo = code << 4;
	timer.DelayMSec(1);
	twi_.Transmit(sla_, codeHi | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.Transmit(sla_, codeHi | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.Transmit(sla_, codeLo | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.Transmit(sla_, codeLo | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
}

}
#include "LCD1602IIC.h"

namespace avrt {

void LCD1602IIC::SendGeneric(uint8_t code, uint8_t rsBit)
{
	Timer& timer = twi_.GetTimer();
	uint8_t address = 0x27;
	uint8_t codeHi = code & 0xf0;
	uint8_t codeLo = code << 4;
	timer.DelayMSec(1);
	twi_.Transmit(address, codeHi | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.Transmit(address, codeHi | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.Transmit(address, codeLo | (0b1 << 3) | (0b1 << 2) | (0b0 << 1) | (rsBit << 0));
	timer.DelayMSec(1);
	twi_.Transmit(address, codeLo | (0b1 << 3) | (0b0 << 2) | (0b0 << 1) | (rsBit << 0));
}

}

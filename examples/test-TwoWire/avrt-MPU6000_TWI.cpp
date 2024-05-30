//==============================================================================
// avrt-MPU6000_TWI.cpp
//==============================================================================
#include "avrt-MPU6000_TWI.h"

namespace avrt {

//------------------------------------------------------------------------------
// MPU6000_TWI
//------------------------------------------------------------------------------
bool MPU6000_TWI::WriteByte(uint8_t addr, uint8_t data)
{
	return twi_.Transmit(sla_, addr, data);
}

bool MPU6000_TWI::WriteWord(uint8_t addr, uint16_t data)
{
	return twi_.Transmit(sla_, addr, static_cast<uint8_t>(data >> 8), static_cast<uint8_t>(data));
}

bool MPU6000_TWI::ReadByte(uint8_t addr, uint8_t* pData)
{
	return twi_.Transmit(sla_, addr, pData, sizeof(uint8_t));
}

bool MPU6000_TWI::ReadWord(uint8_t addr, uint16_t* pData)
{
	uint8_t buff[2];
	if (!twi_.Transmit(sla_, addr, buff, sizeof(buff))) return false;
	*pData = (static_cast<uint16_t>(buff[0]) << 8) + buff[1];
	return true;
}


}

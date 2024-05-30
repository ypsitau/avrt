//==============================================================================
// avrt-MPU6000_TWI
//==============================================================================
#ifndef AVRT_MPU6000_TWI_H
#define AVRT_MPU6000_TWI_H
#include "avrt-MPU6000.h"

namespace avrt {

//------------------------------------------------------------------------------
// MPU6000_TWI
//------------------------------------------------------------------------------
class MPU6000_TWI : public MPU6000 {
private:
	TwoWire& twi_;
	uint8_t sla_;
public:
	MPU6000_TWI(TwoWire& twi, uint8_t sla = 0x68) : twi_(twi), sla_(sla) {}
	virtual bool WriteByte(uint8_t addr, uint8_t data) override;
	virtual bool WriteWord(uint8_t addr, uint16_t data) override;
	virtual bool ReadByte(uint8_t addr, uint8_t* pData) override;
	virtual bool ReadWord(uint8_t addr, uint16_t* pData) override;
};

}

#endif

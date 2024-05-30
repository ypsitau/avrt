//==============================================================================
// avrt-MPU6000
//==============================================================================
#ifndef AVRT_MPU6000_H
#define AVRT_MPU6000_H
#include <avrt.h>

namespace avrt {

//------------------------------------------------------------------------------
// MPU6000
//------------------------------------------------------------------------------
class MPU6000 {
public:
	enum class Access { R, RW };
	struct RegisterDesc {
		uint8_t addr;
		__FlashStringHelper* name;
		Access access;
	};
public:
	constexpr static uint8_t Addr_SELF_TEST_X			= 0x0d;
	constexpr static uint8_t Addr_SELF_TEST_Y			= 0x0e;
	constexpr static uint8_t Addr_SELF_TEST_Z			= 0x0f;
	constexpr static uint8_t Addr_SELF_TEST_A			= 0x10;
	constexpr static uint8_t Addr_SMPLRT_DIV			= 0x19;
	constexpr static uint8_t Addr_CONFIG				= 0x1a;
	constexpr static uint8_t Addr_GYRO_CONFIG			= 0x1b;
	constexpr static uint8_t Addr_ACCEL_CONFIG			= 0x1c;
	constexpr static uint8_t Addr_FIFO_EN				= 0x23;
	constexpr static uint8_t Addr_I2C_MST_CTRL			= 0x24;
	constexpr static uint8_t Addr_I2C_SLV0_ADDR			= 0x25;
	constexpr static uint8_t Addr_I2C_SLV0_REG			= 0x26;
	constexpr static uint8_t Addr_I2C_SLV0_CTRL			= 0x27;
	constexpr static uint8_t Addr_I2C_SLV1_ADDR			= 0x28;
	constexpr static uint8_t Addr_I2C_SLV1_REG			= 0x29;
	constexpr static uint8_t Addr_I2C_SLV1_CTRL			= 0x2a;
	constexpr static uint8_t Addr_I2C_SLV2_ADDR			= 0x2b;
	constexpr static uint8_t Addr_I2C_SLV2_REG			= 0x2c;
	constexpr static uint8_t Addr_I2C_SLV2_CTRL			= 0x2d;
	constexpr static uint8_t Addr_I2C_SLV3_ADDR			= 0x2e;
	constexpr static uint8_t Addr_I2C_SLV3_REG			= 0x2f;
	constexpr static uint8_t Addr_I2C_SLV3_CTRL			= 0x30;
	constexpr static uint8_t Addr_I2C_SLV4_ADDR			= 0x31;
	constexpr static uint8_t Addr_I2C_SLV4_REG			= 0x32;
	constexpr static uint8_t Addr_I2C_SLV4_DO			= 0x33;
	constexpr static uint8_t Addr_I2C_SLV4_CTRL			= 0x34;
	constexpr static uint8_t Addr_I2C_SLV4_DI			= 0x35;
	constexpr static uint8_t Addr_I2C_MST_STATUS		= 0x36;
	constexpr static uint8_t Addr_INT_PIN_CFG			= 0x37;
	constexpr static uint8_t Addr_INT_ENABLE			= 0x38;
	constexpr static uint8_t Addr_INT_STATUS			= 0x3a;
	constexpr static uint8_t Addr_ACCEL_XOUT			= 0x3b;
	constexpr static uint8_t Addr_ACCEL_XOUT_H			= 0x3b;
	constexpr static uint8_t Addr_ACCEL_XOUT_L			= 0x3c;
	constexpr static uint8_t Addr_ACCEL_YOUT			= 0x3d;
	constexpr static uint8_t Addr_ACCEL_YOUT_H			= 0x3d;
	constexpr static uint8_t Addr_ACCEL_YOUT_L			= 0x3e;
	constexpr static uint8_t Addr_ACCEL_ZOUT			= 0x3f;
	constexpr static uint8_t Addr_ACCEL_ZOUT_H			= 0x3f;
	constexpr static uint8_t Addr_ACCEL_ZOUT_L			= 0x40;
	constexpr static uint8_t Addr_TEMP_OUT				= 0x41;
	constexpr static uint8_t Addr_TEMP_OUT_H			= 0x41;
	constexpr static uint8_t Addr_TEMP_OUT_L			= 0x42;
	constexpr static uint8_t Addr_GYRO_XOUT				= 0x43;
	constexpr static uint8_t Addr_GYRO_XOUT_H			= 0x43;
	constexpr static uint8_t Addr_GYRO_XOUT_L			= 0x44;
	constexpr static uint8_t Addr_GYRO_YOUT				= 0x45;
	constexpr static uint8_t Addr_GYRO_YOUT_H			= 0x45;
	constexpr static uint8_t Addr_GYRO_YOUT_L			= 0x46;
	constexpr static uint8_t Addr_GYRO_ZOUT				= 0x47;
	constexpr static uint8_t Addr_GYRO_ZOUT_H			= 0x47;
	constexpr static uint8_t Addr_GYRO_ZOUT_L			= 0x48;
	constexpr static uint8_t Addr_EXT_SENS_DATA_00		= 0x49;
	constexpr static uint8_t Addr_EXT_SENS_DATA_01		= 0x4a;
	constexpr static uint8_t Addr_EXT_SENS_DATA_02		= 0x4b;
	constexpr static uint8_t Addr_EXT_SENS_DATA_03		= 0x4c;
	constexpr static uint8_t Addr_EXT_SENS_DATA_04		= 0x4d;
	constexpr static uint8_t Addr_EXT_SENS_DATA_05		= 0x4e;
	constexpr static uint8_t Addr_EXT_SENS_DATA_06		= 0x4f;
	constexpr static uint8_t Addr_EXT_SENS_DATA_07		= 0x50;
	constexpr static uint8_t Addr_EXT_SENS_DATA_08		= 0x51;
	constexpr static uint8_t Addr_EXT_SENS_DATA_09		= 0x52;
	constexpr static uint8_t Addr_EXT_SENS_DATA_10		= 0x53;
	constexpr static uint8_t Addr_EXT_SENS_DATA_11		= 0x54;
	constexpr static uint8_t Addr_EXT_SENS_DATA_12		= 0x55;
	constexpr static uint8_t Addr_EXT_SENS_DATA_13		= 0x56;
	constexpr static uint8_t Addr_EXT_SENS_DATA_14		= 0x57;
	constexpr static uint8_t Addr_EXT_SENS_DATA_15		= 0x58;
	constexpr static uint8_t Addr_EXT_SENS_DATA_16		= 0x59;
	constexpr static uint8_t Addr_EXT_SENS_DATA_17		= 0x5a;
	constexpr static uint8_t Addr_EXT_SENS_DATA_18		= 0x5b;
	constexpr static uint8_t Addr_EXT_SENS_DATA_19		= 0x5c;
	constexpr static uint8_t Addr_EXT_SENS_DATA_20		= 0x5d;
	constexpr static uint8_t Addr_EXT_SENS_DATA_21		= 0x5e;
	constexpr static uint8_t Addr_EXT_SENS_DATA_22		= 0x5f;
	constexpr static uint8_t Addr_EXT_SENS_DATA_23		= 0x60;
	constexpr static uint8_t Addr_I2C_SLV0_DO			= 0x63;
	constexpr static uint8_t Addr_I2C_SLV1_DO			= 0x64;
	constexpr static uint8_t Addr_I2C_SLV2_DO			= 0x65;
	constexpr static uint8_t Addr_I2C_SLV3_DO			= 0x66;
	constexpr static uint8_t Addr_I2C_MST_DELAY_CTRL	= 0x67;
	constexpr static uint8_t Addr_SIGNAL_PATH_RESET		= 0x68;
	constexpr static uint8_t Addr_USER_CTRL				= 0x6a;
	constexpr static uint8_t Addr_PWR_MGMT_1			= 0x6b;
	constexpr static uint8_t Addr_PWR_MGMT_2			= 0x6c;
	constexpr static uint8_t Addr_FIFO_COUNTH			= 0x72;
	constexpr static uint8_t Addr_FIFO_COUNTL			= 0x73;
	constexpr static uint8_t Addr_FIFO_R_W				= 0x74;
	constexpr static uint8_t Addr_WHO_AM_I				= 0x75;
public:
	static const char regName0D[] PROGMEM;
	static const char regName0E[] PROGMEM;
	static const char regName0F[] PROGMEM;
	static const char regName10[] PROGMEM;
	static const char regName19[] PROGMEM;
	static const char regName1A[] PROGMEM;
	static const char regName1B[] PROGMEM;
	static const char regName1C[] PROGMEM;
	static const char regName23[] PROGMEM;
	static const char regName24[] PROGMEM;
	static const char regName25[] PROGMEM;
	static const char regName26[] PROGMEM;
	static const char regName27[] PROGMEM;
	static const char regName28[] PROGMEM;
	static const char regName29[] PROGMEM;
	static const char regName2A[] PROGMEM;
	static const char regName2B[] PROGMEM;
	static const char regName2C[] PROGMEM;
	static const char regName2D[] PROGMEM;
	static const char regName2E[] PROGMEM;
	static const char regName2F[] PROGMEM;
	static const char regName30[] PROGMEM;
	static const char regName31[] PROGMEM;
	static const char regName32[] PROGMEM;
	static const char regName33[] PROGMEM;
	static const char regName34[] PROGMEM;
	static const char regName35[] PROGMEM;
	static const char regName36[] PROGMEM;
	static const char regName37[] PROGMEM;
	static const char regName38[] PROGMEM;
	static const char regName3A[] PROGMEM;
	static const char regName3B[] PROGMEM;
	static const char regName3C[] PROGMEM;
	static const char regName3D[] PROGMEM;
	static const char regName3E[] PROGMEM;
	static const char regName3F[] PROGMEM;
	static const char regName40[] PROGMEM;
	static const char regName41[] PROGMEM;
	static const char regName42[] PROGMEM;
	static const char regName43[] PROGMEM;
	static const char regName44[] PROGMEM;
	static const char regName45[] PROGMEM;
	static const char regName46[] PROGMEM;
	static const char regName47[] PROGMEM;
	static const char regName48[] PROGMEM;
	static const char regName49[] PROGMEM;
	static const char regName4A[] PROGMEM;
	static const char regName4B[] PROGMEM;
	static const char regName4C[] PROGMEM;
	static const char regName4D[] PROGMEM;
	static const char regName4E[] PROGMEM;
	static const char regName4F[] PROGMEM;
	static const char regName50[] PROGMEM;
	static const char regName51[] PROGMEM;
	static const char regName52[] PROGMEM;
	static const char regName53[] PROGMEM;
	static const char regName54[] PROGMEM;
	static const char regName55[] PROGMEM;
	static const char regName56[] PROGMEM;
	static const char regName57[] PROGMEM;
	static const char regName58[] PROGMEM;
	static const char regName59[] PROGMEM;
	static const char regName5A[] PROGMEM;
	static const char regName5B[] PROGMEM;
	static const char regName5C[] PROGMEM;
	static const char regName5D[] PROGMEM;
	static const char regName5E[] PROGMEM;
	static const char regName5F[] PROGMEM;
	static const char regName60[] PROGMEM;
	static const char regName63[] PROGMEM;
	static const char regName64[] PROGMEM;
	static const char regName65[] PROGMEM;
	static const char regName66[] PROGMEM;
	static const char regName67[] PROGMEM;
	static const char regName68[] PROGMEM;
	static const char regName6A[] PROGMEM;
	static const char regName6B[] PROGMEM;
	static const char regName6C[] PROGMEM;
	static const char regName72[] PROGMEM;
	static const char regName73[] PROGMEM;
	static const char regName74[] PROGMEM;
	static const char regName75[] PROGMEM;
	static const RegisterDesc PROGMEM registerDescTbl[];
private:
	TwoWire& twi_;
	uint8_t sla_;
public:
	MPU6000() {}
	void Open();
	void DumpRegister(Stream& stream) const;
	virtual bool WriteByte(uint8_t addr, uint8_t data) = 0;
	virtual bool WriteWord(uint8_t addr, uint16_t data) = 0;
	virtual bool ReadByte(uint8_t addr, uint8_t* pData) = 0;
	virtual bool ReadWord(uint8_t addr, uint16_t* pData) = 0;
};

}

#endif

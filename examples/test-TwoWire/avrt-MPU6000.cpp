//==============================================================================
// avrt-MPU6000.cpp
//==============================================================================
#include "avrt-MPU6000.h"

namespace avrt {

//------------------------------------------------------------------------------
// MPU6000
//------------------------------------------------------------------------------
const char MPU6000::regName0D[] PROGMEM = "SELF_TEST_X";
const char MPU6000::regName0E[] PROGMEM = "SELF_TEST_Y";
const char MPU6000::regName0F[] PROGMEM = "SELF_TEST_Z";
const char MPU6000::regName10[] PROGMEM = "SELF_TEST_A";
const char MPU6000::regName19[] PROGMEM = "SMPLRT_DIV";
const char MPU6000::regName1A[] PROGMEM = "CONFIG";
const char MPU6000::regName1B[] PROGMEM = "GYRO_CONFIG";
const char MPU6000::regName1C[] PROGMEM = "ACCEL_CONFIG";
const char MPU6000::regName23[] PROGMEM = "FIFO_EN";
const char MPU6000::regName24[] PROGMEM = "I2C_MST_CTRL";
const char MPU6000::regName25[] PROGMEM = "I2C_SLV0_ADDR";
const char MPU6000::regName26[] PROGMEM = "I2C_SLV0_REG";
const char MPU6000::regName27[] PROGMEM = "I2C_SLV0_CTRL";
const char MPU6000::regName28[] PROGMEM = "I2C_SLV1_ADDR";
const char MPU6000::regName29[] PROGMEM = "I2C_SLV1_REG";
const char MPU6000::regName2A[] PROGMEM = "I2C_SLV1_CTRL";
const char MPU6000::regName2B[] PROGMEM = "I2C_SLV2_ADDR";
const char MPU6000::regName2C[] PROGMEM = "I2C_SLV2_REG";
const char MPU6000::regName2D[] PROGMEM = "I2C_SLV2_CTRL";
const char MPU6000::regName2E[] PROGMEM = "I2C_SLV3_ADDR";
const char MPU6000::regName2F[] PROGMEM = "I2C_SLV3_REG";
const char MPU6000::regName30[] PROGMEM = "I2C_SLV3_CTRL";
const char MPU6000::regName31[] PROGMEM = "I2C_SLV4_ADDR";
const char MPU6000::regName32[] PROGMEM = "I2C_SLV4_REG";
const char MPU6000::regName33[] PROGMEM = "I2C_SLV4_DO";
const char MPU6000::regName34[] PROGMEM = "I2C_SLV4_CTRL";
const char MPU6000::regName35[] PROGMEM = "I2C_SLV4_DI";
const char MPU6000::regName36[] PROGMEM = "I2C_MST_STATUS";
const char MPU6000::regName37[] PROGMEM = "INT_PIN_CFG";
const char MPU6000::regName38[] PROGMEM = "INT_ENABLE";
const char MPU6000::regName3A[] PROGMEM = "INT_STATUS";
const char MPU6000::regName3B[] PROGMEM = "ACCEL_XOUT_H";
const char MPU6000::regName3C[] PROGMEM = "ACCEL_XOUT_L";
const char MPU6000::regName3D[] PROGMEM = "ACCEL_YOUT_H";
const char MPU6000::regName3E[] PROGMEM = "ACCEL_YOUT_L";
const char MPU6000::regName3F[] PROGMEM = "ACCEL_ZOUT_H";
const char MPU6000::regName40[] PROGMEM = "ACCEL_ZOUT_L";
const char MPU6000::regName41[] PROGMEM = "TEMP_OUT_H";
const char MPU6000::regName42[] PROGMEM = "TEMP_OUT_L";
const char MPU6000::regName43[] PROGMEM = "GYRO_XOUT_H";
const char MPU6000::regName44[] PROGMEM = "GYRO_XOUT_L";
const char MPU6000::regName45[] PROGMEM = "GYRO_YOUT_H";
const char MPU6000::regName46[] PROGMEM = "GYRO_YOUT_L";
const char MPU6000::regName47[] PROGMEM = "GYRO_ZOUT_H";
const char MPU6000::regName48[] PROGMEM = "GYRO_ZOUT_L";
const char MPU6000::regName49[] PROGMEM = "EXT_SENS_DATA_00";
const char MPU6000::regName4A[] PROGMEM = "EXT_SENS_DATA_01";
const char MPU6000::regName4B[] PROGMEM = "EXT_SENS_DATA_02";
const char MPU6000::regName4C[] PROGMEM = "EXT_SENS_DATA_03";
const char MPU6000::regName4D[] PROGMEM = "EXT_SENS_DATA_04";
const char MPU6000::regName4E[] PROGMEM = "EXT_SENS_DATA_05";
const char MPU6000::regName4F[] PROGMEM = "EXT_SENS_DATA_06";
const char MPU6000::regName50[] PROGMEM = "EXT_SENS_DATA_07";
const char MPU6000::regName51[] PROGMEM = "EXT_SENS_DATA_08";
const char MPU6000::regName52[] PROGMEM = "EXT_SENS_DATA_09";
const char MPU6000::regName53[] PROGMEM = "EXT_SENS_DATA_10";
const char MPU6000::regName54[] PROGMEM = "EXT_SENS_DATA_11";
const char MPU6000::regName55[] PROGMEM = "EXT_SENS_DATA_12";
const char MPU6000::regName56[] PROGMEM = "EXT_SENS_DATA_13";
const char MPU6000::regName57[] PROGMEM = "EXT_SENS_DATA_14";
const char MPU6000::regName58[] PROGMEM = "EXT_SENS_DATA_15";
const char MPU6000::regName59[] PROGMEM = "EXT_SENS_DATA_16";
const char MPU6000::regName5A[] PROGMEM = "EXT_SENS_DATA_17";
const char MPU6000::regName5B[] PROGMEM = "EXT_SENS_DATA_18";
const char MPU6000::regName5C[] PROGMEM = "EXT_SENS_DATA_19";
const char MPU6000::regName5D[] PROGMEM = "EXT_SENS_DATA_20";
const char MPU6000::regName5E[] PROGMEM = "EXT_SENS_DATA_21";
const char MPU6000::regName5F[] PROGMEM = "EXT_SENS_DATA_22";
const char MPU6000::regName60[] PROGMEM = "EXT_SENS_DATA_23";
const char MPU6000::regName63[] PROGMEM = "I2C_SLV0_DO";
const char MPU6000::regName64[] PROGMEM = "I2C_SLV1_DO";
const char MPU6000::regName65[] PROGMEM = "I2C_SLV2_DO";
const char MPU6000::regName66[] PROGMEM = "I2C_SLV3_DO";
const char MPU6000::regName67[] PROGMEM = "I2C_MST_DELAY_CTRL";
const char MPU6000::regName68[] PROGMEM = "SIGNAL_PATH_RESET";
const char MPU6000::regName6A[] PROGMEM = "USER_CTRL";
const char MPU6000::regName6B[] PROGMEM = "PWR_MGMT_1";
const char MPU6000::regName6C[] PROGMEM = "PWR_MGMT_2";
const char MPU6000::regName72[] PROGMEM = "FIFO_COUNTH";
const char MPU6000::regName73[] PROGMEM = "FIFO_COUNTL";
const char MPU6000::regName74[] PROGMEM = "FIFO_R_W";
const char MPU6000::regName75[] PROGMEM = "WHO_AM_I";

const MPU6000::RegisterDesc MPU6000::registerDescTbl[] PROGMEM = {
	{ 0x0D, reinterpret_cast<const __FlashStringHelper*>(regName0D), Access::RW },
	{ 0x0E, reinterpret_cast<const __FlashStringHelper*>(regName0E), Access::RW },
	{ 0x0F, reinterpret_cast<const __FlashStringHelper*>(regName0F), Access::RW },
	{ 0x10, reinterpret_cast<const __FlashStringHelper*>(regName10), Access::RW },
	{ 0x19, reinterpret_cast<const __FlashStringHelper*>(regName19), Access::RW },
	{ 0x1A, reinterpret_cast<const __FlashStringHelper*>(regName1A), Access::RW },
	{ 0x1B, reinterpret_cast<const __FlashStringHelper*>(regName1B), Access::RW },
	{ 0x1C, reinterpret_cast<const __FlashStringHelper*>(regName1C), Access::RW },
	{ 0x23, reinterpret_cast<const __FlashStringHelper*>(regName23), Access::RW },
	{ 0x24, reinterpret_cast<const __FlashStringHelper*>(regName24), Access::RW },
	{ 0x25, reinterpret_cast<const __FlashStringHelper*>(regName25), Access::RW },
	{ 0x26, reinterpret_cast<const __FlashStringHelper*>(regName26), Access::RW },
	{ 0x27, reinterpret_cast<const __FlashStringHelper*>(regName27), Access::RW },
	{ 0x28, reinterpret_cast<const __FlashStringHelper*>(regName28), Access::RW },
	{ 0x29, reinterpret_cast<const __FlashStringHelper*>(regName29), Access::RW },
	{ 0x2A, reinterpret_cast<const __FlashStringHelper*>(regName2A), Access::RW },
	{ 0x2B, reinterpret_cast<const __FlashStringHelper*>(regName2B), Access::RW },
	{ 0x2C, reinterpret_cast<const __FlashStringHelper*>(regName2C), Access::RW },
	{ 0x2D, reinterpret_cast<const __FlashStringHelper*>(regName2D), Access::RW },
	{ 0x2E, reinterpret_cast<const __FlashStringHelper*>(regName2E), Access::RW },
	{ 0x2F, reinterpret_cast<const __FlashStringHelper*>(regName2F), Access::RW },
	{ 0x30, reinterpret_cast<const __FlashStringHelper*>(regName30), Access::RW },
	{ 0x31, reinterpret_cast<const __FlashStringHelper*>(regName31), Access::RW },
	{ 0x32, reinterpret_cast<const __FlashStringHelper*>(regName32), Access::RW },
	{ 0x33, reinterpret_cast<const __FlashStringHelper*>(regName33), Access::RW },
	{ 0x34, reinterpret_cast<const __FlashStringHelper*>(regName34), Access::RW },
	{ 0x35, reinterpret_cast<const __FlashStringHelper*>(regName35), Access::R },
	{ 0x36, reinterpret_cast<const __FlashStringHelper*>(regName36), Access::R },
	{ 0x37, reinterpret_cast<const __FlashStringHelper*>(regName37), Access::RW },
	{ 0x38, reinterpret_cast<const __FlashStringHelper*>(regName38), Access::RW },
	{ 0x3A, reinterpret_cast<const __FlashStringHelper*>(regName3A), Access::R },
	{ 0x3B, reinterpret_cast<const __FlashStringHelper*>(regName3B), Access::R },
	{ 0x3C, reinterpret_cast<const __FlashStringHelper*>(regName3C), Access::R },
	{ 0x3D, reinterpret_cast<const __FlashStringHelper*>(regName3D), Access::R },
	{ 0x3E, reinterpret_cast<const __FlashStringHelper*>(regName3E), Access::R },
	{ 0x3F, reinterpret_cast<const __FlashStringHelper*>(regName3F), Access::R },
	{ 0x40, reinterpret_cast<const __FlashStringHelper*>(regName40), Access::R },
	{ 0x41, reinterpret_cast<const __FlashStringHelper*>(regName41), Access::R },
	{ 0x42, reinterpret_cast<const __FlashStringHelper*>(regName42), Access::R },
	{ 0x43, reinterpret_cast<const __FlashStringHelper*>(regName43), Access::R },
	{ 0x44, reinterpret_cast<const __FlashStringHelper*>(regName44), Access::R },
	{ 0x45, reinterpret_cast<const __FlashStringHelper*>(regName45), Access::R },
	{ 0x46, reinterpret_cast<const __FlashStringHelper*>(regName46), Access::R },
	{ 0x47, reinterpret_cast<const __FlashStringHelper*>(regName47), Access::R },
	{ 0x48, reinterpret_cast<const __FlashStringHelper*>(regName48), Access::R },
	{ 0x49, reinterpret_cast<const __FlashStringHelper*>(regName49), Access::R },
	{ 0x4A, reinterpret_cast<const __FlashStringHelper*>(regName4A), Access::R },
	{ 0x4B, reinterpret_cast<const __FlashStringHelper*>(regName4B), Access::R },
	{ 0x4C, reinterpret_cast<const __FlashStringHelper*>(regName4C), Access::R },
	{ 0x4D, reinterpret_cast<const __FlashStringHelper*>(regName4D), Access::R },
	{ 0x4E, reinterpret_cast<const __FlashStringHelper*>(regName4E), Access::R },
	{ 0x4F, reinterpret_cast<const __FlashStringHelper*>(regName4F), Access::R },
	{ 0x50, reinterpret_cast<const __FlashStringHelper*>(regName50), Access::R },
	{ 0x51, reinterpret_cast<const __FlashStringHelper*>(regName51), Access::R },
	{ 0x52, reinterpret_cast<const __FlashStringHelper*>(regName52), Access::R },
	{ 0x53, reinterpret_cast<const __FlashStringHelper*>(regName53), Access::R },
	{ 0x54, reinterpret_cast<const __FlashStringHelper*>(regName54), Access::R },
	{ 0x55, reinterpret_cast<const __FlashStringHelper*>(regName55), Access::R },
	{ 0x56, reinterpret_cast<const __FlashStringHelper*>(regName56), Access::R },
	{ 0x57, reinterpret_cast<const __FlashStringHelper*>(regName57), Access::R },
	{ 0x58, reinterpret_cast<const __FlashStringHelper*>(regName58), Access::R },
	{ 0x59, reinterpret_cast<const __FlashStringHelper*>(regName59), Access::R },
	{ 0x5A, reinterpret_cast<const __FlashStringHelper*>(regName5A), Access::R },
	{ 0x5B, reinterpret_cast<const __FlashStringHelper*>(regName5B), Access::R },
	{ 0x5C, reinterpret_cast<const __FlashStringHelper*>(regName5C), Access::R },
	{ 0x5D, reinterpret_cast<const __FlashStringHelper*>(regName5D), Access::R },
	{ 0x5E, reinterpret_cast<const __FlashStringHelper*>(regName5E), Access::R },
	{ 0x5F, reinterpret_cast<const __FlashStringHelper*>(regName5F), Access::R },
	{ 0x60, reinterpret_cast<const __FlashStringHelper*>(regName60), Access::R },
	{ 0x63, reinterpret_cast<const __FlashStringHelper*>(regName63), Access::RW },
	{ 0x64, reinterpret_cast<const __FlashStringHelper*>(regName64), Access::RW },
	{ 0x65, reinterpret_cast<const __FlashStringHelper*>(regName65), Access::RW },
	{ 0x66, reinterpret_cast<const __FlashStringHelper*>(regName66), Access::RW },
	{ 0x67, reinterpret_cast<const __FlashStringHelper*>(regName67), Access::RW },
	{ 0x68, reinterpret_cast<const __FlashStringHelper*>(regName68), Access::RW },
	{ 0x6A, reinterpret_cast<const __FlashStringHelper*>(regName6A), Access::RW },
	{ 0x6B, reinterpret_cast<const __FlashStringHelper*>(regName6B), Access::RW },
	{ 0x6C, reinterpret_cast<const __FlashStringHelper*>(regName6C), Access::RW },
	{ 0x72, reinterpret_cast<const __FlashStringHelper*>(regName72), Access::RW },
	{ 0x73, reinterpret_cast<const __FlashStringHelper*>(regName73), Access::RW },
	{ 0x74, reinterpret_cast<const __FlashStringHelper*>(regName74), Access::RW },
	{ 0x75, reinterpret_cast<const __FlashStringHelper*>(regName75), Access::R },
};

void MPU6000::Open()
{
	constexpr uint8_t dataDEVICE_RESET	= 0b0;
	constexpr uint8_t dataSLEEP			= 0b0;
	constexpr uint8_t dataCYCLE			= 0b0;
	constexpr uint8_t dataTEMP_DIS		= 0b0;
	constexpr uint8_t dataCLKSEL		= 0b000;
	constexpr uint8_t dataFS_SEL		= 0b11;
	WriteByte(Addr_PWR_MGMT_1, (dataDEVICE_RESET << 7) | (dataSLEEP << 6) |
		(dataCYCLE << 5) | (dataTEMP_DIS << 3) | (dataCLKSEL << 0));
	WriteByte(Addr_GYRO_CONFIG, dataFS_SEL << 3);
}

void MPU6000::DumpRegister(Stream& stream) const
{
	for (int i = 0; i < ArraySizeOf(registerDescTbl); i++) {
		uint8_t addr = pgm_read_byte(&registerDescTbl[i].addr);
		uint8_t data;
		ReadByte(addr, &data);
		stream.Printf(F("%02x %-20S %02x\n"), pgm_read_byte(&registerDescTbl[i].addr),
			reinterpret_cast<const __FlashStringHelper*>(pgm_read_word(&registerDescTbl[i].name)),
			data);
	}
}

}

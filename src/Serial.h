//------------------------------------------------------------------------------
// Serial.h
//------------------------------------------------------------------------------
#ifndef AVRT_SERIAL_H
#define AVRT_SERIAL_H
#include <avr/io.h>
#include <avr/interrupt.h>
#include "Stream.h"
#include "FIFOBuff.h"

#define AVRT_IMPLEMENT_Serial0(variableName) \
avrt::Serial0<> variableName; \
ISR(USART_RX_vect) { variableName.HandleIRQ_USART_RX(); }

#define AVRT_IMPLEMENT_Serial0_NoRecv(variableName) \
avrt::Serial0<false> variableName;

namespace avrt {

//------------------------------------------------------------------------------
// Serial
//------------------------------------------------------------------------------
class Serial : public Stream {
public:
	enum BaudRate {
		BaudRate2400,
		BaudRate4800,
		BaudRate9600,
		BaudRate14400,
		BaudRate19200,
		BaudRate28800,
		BaudRate38400,
		BaudRate57600,
		BaudRate76800,
		BaudRate115200,
		BaudRate230400,
		BaudRate250000,
		BaudRate500000,
		BaudRate1000000,
	};	
public:
	constexpr static uint8_t CharSize5	= 0b000;
	constexpr static uint8_t CharSize6	= 0b001;
	constexpr static uint8_t CharSize7	= 0b010;
	constexpr static uint8_t CharSize8	= 0b011;
	constexpr static uint8_t CharSize9	= 0b111;
public:
	constexpr static uint8_t ParityNone	= 0b00;
	constexpr static uint8_t ParityEven	= 0b10;
	constexpr static uint8_t ParityOdd	= 0b11;
public:
	constexpr static uint8_t StopBit1	= 0b0;
	constexpr static uint8_t StopBit2	= 0b1;
public:
	static uint16_t LookupUBRR(BaudRate baudRate, bool doubleSpeedFlag);
};

//------------------------------------------------------------------------------
// Serial0
//------------------------------------------------------------------------------
template<
	bool enableReceive		= true,
	uint8_t dataTXCIE0		= 0b0,			// TXCIEn: TX Complete Interrupt Enable n = false
	uint8_t dataUDRIE0		= 0b0,			// UDRIEn: USART Data Register Empty Interrupt Enable n = false
	uint8_t dataUMSEL00		= 0b00,			// UMSELn: USART Mode Select = Asynchronous USART
	uint8_t dataUCPOL0		= 0b0,			// UCPOLn: Clock Polarity = Tx on Rising XCKn & Rx on Falling XCKn
	uint8_t dataMPCM0		= 0b0,			// MPCMn: Multi-processor Communication Mode = false
	uint8_t dataU2X			= 0b0,			// U2Xn: Double the USART Transmission Speed = false
	uint8_t dataTXB80		= 0b0,			// TXB8n: Transmit Data Bit 8 n = false
	uint8_t dataRXEN0		= 0b1,			// RXENn: Receiver Enable n = true
	uint8_t dataTXEN0		= 0b1			// TXENn: Transmitter Enable n = true
> class Serial0 : public Serial {
public:
	using FIFOBuffEx = FIFOBuff<uint8_t, 32>;
private:
	FIFOBuffEx buffs_[enableReceive? 1 : 0];
public:
	Serial0() {}
	FIFOBuffEx& GetBuffForRead() { return buffs_[0]; }
	void Open(BaudRate baudRate, uint8_t charSize = CharSize8, uint8_t stopBit = StopBit1, uint8_t parity = ParityNone) {
		constexpr uint8_t dataRXCIE0 = enableReceive? 0b1 : 0b0; // RXCIEn: RX Complete Interrupt Enable n
		uint8_t dataUCSZ = charSize;
		uint8_t dataUSBS = stopBit;
		uint8_t dataUPM = parity;
		UCSR0A =
			(0b1 << TXC0) |					// TXCn: USART Transmit Complete .. set one to clear
			(dataU2X << U2X0) |				// U2Xn: Double the USART Transmission Speed
			(dataMPCM0 << MPCM0);			// MPCMn: Multi-processor Communication Mode
		UCSR0B =
			(dataRXCIE0 << RXCIE0) |		// RXCIEn: RX Complete Interrupt Enable n
			(dataTXCIE0 << TXCIE0) |		// TXCIEn: TX Complete Interrupt Enable n
			(dataUDRIE0 << UDRIE0) |		// UDRIEn: USART Data Register Empty Interrupt Enable n
			(dataRXEN0 << RXEN0) |			// RXENn: Receiver Enable n
			(dataTXEN0 << TXEN0) |			// TXENn: Transmitter Enable n
			((dataUCSZ >> 2) << UCSZ02) |	// UCSZn: Character Size
			(dataTXB80 << TXB80);			// TXB8n: Transmit Data Bit 8 n
		UCSR0C =
			(dataUMSEL00 << UMSEL00) |		// UMSELn: USART Mode Select
			(dataUPM << UPM00) |			// UPMn: Parity Mode
			(dataUSBS << USBS0) |			// USBSn: Stop Bit Select
			((dataUCSZ & 0b11) << UCSZ00) |	// UCSZn: Character Size
			(dataUCPOL0 << UCPOL0);			// UCPOLn: Clock Polarity = Tx on Rising XCKn & Rx on Falling XCKn
		uint16_t dataUBRR = LookupUBRR(baudRate, dataU2X);
		UBRR0H = static_cast<uint8_t>((dataUBRR >> 8) & 0xff); // this must be written first
		UBRR0L = static_cast<uint8_t>(dataUBRR & 0xff);
	}
	void Close() {}
	virtual void SendData(uint8_t data) override {
		while (!(UCSR0A & (0b1 << UDRE0))) ;
		UDR0 = data;
	}
	virtual uint8_t RecvData() override {
		if constexpr (enableReceive) {
			return GetBuffForRead().ReadData();
		} else {
			return 0x00;
		}
	}
	bool HasRecvData() {
		if constexpr (enableReceive) {
			return !GetBuffForRead().IsEmpty();
		} else {
			return false;
		}
	}
	void HandleIRQ_USART_RX() {
		while (UCSR0A & (0b1 << RXC0)) GetBuffForRead().WriteData(UDR0);
	}
};

}

#endif

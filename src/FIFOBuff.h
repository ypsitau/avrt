//------------------------------------------------------------------------------
// FIFOBuff.h
//------------------------------------------------------------------------------
#ifndef AVRT_FIFOBUFF_H
#define AVRT_FIFOBUFF_H

namespace avrt {

//------------------------------------------------------------------------------
// FIFOBuff
//------------------------------------------------------------------------------
template<typename T_Elem, int size> class FIFOBuff {
public:
	static constexpr uint8_t sizeMinusOne = static_cast<uint8_t>(size - 1);
private:
	volatile uint8_t posRead_;
	volatile uint8_t posWrite_;
	volatile T_Elem buff_[size];
public:
	FIFOBuff() : posRead_(0), posWrite_(0) {}
	void WriteData(T_Elem data) {
		uint8_t posWriteNext = (posWrite_ == sizeMinusOne)? 0 : posWrite_ + 1;
		if (posWriteNext == posRead_) return;
		buff_[posWrite_] = data;
		posWrite_ = posWriteNext;
	}
	T_Elem ReadData() {
		if (IsEmpty()) return 0x00;
		T_Elem data = buff_[posRead_];
		posRead_ = (posRead_ == sizeMinusOne)? 0 : posRead_ + 1;
		return data;
	}
	bool IsEmpty() { return posRead_ == posWrite_; }
	bool HasRoom() {
		uint8_t posWriteNext = (posWrite_ == sizeMinusOne)? 0 : posWrite_ + 1;
		return posWriteNext != posRead_;
	}
};

}

#endif

//------------------------------------------------------------------------------
// FIFOBuff.h
//------------------------------------------------------------------------------
#ifndef AVRT_FIFOBUFF_H
#define AVRT_FIFOBUFF_H

namespace avrt {

//------------------------------------------------------------------------------
// FIFOBuff
//------------------------------------------------------------------------------
template<typename T_Elem, int buffSize, typename T_Pos = uint8_t> class FIFOBuff {
public:
	static constexpr T_Pos sizeMinusOne = static_cast<T_Pos>(buffSize - 1);
private:
	volatile T_Pos posRead_;
	volatile T_Pos posWrite_;
	volatile T_Elem buff_[buffSize];
public:
	FIFOBuff() : posRead_(0), posWrite_(0) {}
	bool IsEmpty() const { return posRead_ == posWrite_; }
	bool HasData() const { return posRead_ != posWrite_; }
	bool IsFull() const {
		T_Pos posWriteNext = (posWrite_ == sizeMinusOne)? 0 : posWrite_ + 1;
		return posWriteNext == posRead_;
	}
	bool HasRoom() const { return !IsFull(); }
	T_Pos GetLength() const {
		return (posRead_ <= posWrite_)? posWrite_ - posRead_ : buffSize - posRead_ + posWrite_;
	}
	void WriteData(T_Elem data) {
		T_Pos posWriteNext = (posWrite_ == sizeMinusOne)? 0 : posWrite_ + 1;
		if (posWriteNext == posRead_) return;
		buff_[posWrite_] = data;
		posWrite_ = posWriteNext;
	}
	T_Elem ReadData() {
		if (posRead_ == posWrite_) return 0;
		T_Elem data = buff_[posRead_];
		posRead_ = (posRead_ == sizeMinusOne)? 0 : posRead_ + 1;
		return data;
	}
};

}

#endif

	.file	"Serial_Printf.ino.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C++11 (GCC) version 7.3.0 (avr)
 ; 	compiled by GNU C version 4.8.2, GMP version 5.0.2, MPFR version 3.1.0, MPC version 0.9, isl version none
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed: 
 ;  -I C:\Users\ypsit\AppData\Local\Arduino15\packages\arduino\hardware\avr\1.8.6\cores\arduino
 ;  -I C:\Users\ypsit\AppData\Local\Arduino15\packages\arduino\hardware\avr\1.8.6\variants\eightanaloginputs
 ;  -I C:\users\ypsit\source\Arduino\libraries\avrt\src -imultilib avr5
 ;  -iprefix c:\users\ypsit\appdata\local\arduino15\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7\bin\../lib/gcc/avr/7.3.0/
 ;  -D__AVR_ATmega328P__ -D__AVR_DEVICE_NAME__=atmega328p
 ;  -D F_CPU=16000000L -D ARDUINO=10607 -D ARDUINO_AVR_PRO
 ;  -D ARDUINO_ARCH_AVR
 ;  C:\Users\ypsit\source\Arduino\libraries\avrt\examples\Serial_Printf\build\sketch\Serial_Printf.ino.cpp
 ;  -mn-flash=1 -mmcu=avr5 -auxbase-strip build\Serial_Printf.ino.s -Os
 ;  -Wno-error=narrowing -w -std=gnu++11 -fverbose-asm -fpermissive
 ;  -ffunction-sections -fdata-sections -fno-threadsafe-statics -mn-flash=1
 ;  -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions
 ;  options enabled:  -Wmisspelled-isr -faggressive-loop-optimizations
 ;  -falign-functions -falign-jumps -falign-labels -falign-loops
 ;  -fauto-inc-dec -fbranch-count-reg -fchkp-check-incomplete-type
 ;  -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 ;  -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 ;  -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 ;  -fchkp-use-wrappers -fcode-hoisting -fcombine-stack-adjustments
 ;  -fcommon -fcompare-elim -fcprop-registers -fcrossjumping
 ;  -fcse-follow-jumps -fdata-sections -fdefer-pop -fdevirtualize
 ;  -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
 ;  -feliminate-unused-debug-types -fexpensive-optimizations
 ;  -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse
 ;  -ffunction-sections -fgcse -fgcse-lm -fgnu-runtime -fgnu-unique
 ;  -fguess-branch-probability -fhoist-adjacent-loads -fident
 ;  -fif-conversion -fif-conversion2 -findirect-inlining -finline
 ;  -finline-atomics -finline-functions -finline-functions-called-once
 ;  -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-icf
 ;  -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
 ;  -fipa-ra -fipa-reference -fipa-sra -fipa-vrp -fira-hoist-pressure
 ;  -fira-share-save-slots -fira-share-spill-slots
 ;  -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
 ;  -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
 ;  -fmath-errno -fmerge-constants -fmerge-debug-strings
 ;  -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
 ;  -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
 ;  -freg-struct-return -freorder-blocks -freorder-functions
 ;  -frerun-cse-after-loop -fsched-critical-path-heuristic
 ;  -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 ;  -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 ;  -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
 ;  -fsemantic-interposition -fshow-column -fshrink-wrap
 ;  -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
 ;  -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
 ;  -fstore-merging -fstrict-aliasing -fstrict-overflow
 ;  -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
 ;  -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 ;  -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
 ;  -ftree-copy-prop -ftree-dce -ftree-dominator-opts -ftree-dse
 ;  -ftree-forwprop -ftree-fre -ftree-loop-if-convert -ftree-loop-im
 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 ;  -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
 ;  -ftree-sink -ftree-slsr -ftree-sra -ftree-switch-conversion
 ;  -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -fverbose-asm
 ;  -fzero-initialized-in-bss

	.text
	.section	.text._ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh,"axG",@progbits,_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh,comdat
	.weak	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh
	.type	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh, @function
_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:112: 		while (!(UCSR0A & (0b1 << UDRE0))) ;
	lds r24,192	 ;  _2, MEM[(volatile uint8_t *)192B]
	sbrs r24,5	 ;  _2,
	rjmp .L2	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:113: 		UDR0 = data;
	sts 198,r22	 ;  MEM[(volatile uint8_t *)198B], data
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:114: 	}
	ret
	.size	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh, .-_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh
	.section	.text._ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv,"axG",@progbits,_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv,comdat
	.weak	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv
	.type	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv, @function
_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:121: 	}
	ldi r24,0	 ; 
/* epilogue start */
	ret
	.size	_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv, .-_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:88: 		UCSR0A =
	ldi r24,lo8(64)	 ;  tmp71,
	sts 192,r24	 ;  MEM[(volatile uint8_t *)192B], tmp71
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:92: 		UCSR0B =
	ldi r24,lo8(24)	 ;  tmp73,
	sts 193,r24	 ;  MEM[(volatile uint8_t *)193B], tmp73
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:100: 		UCSR0C =
	ldi r24,lo8(6)	 ;  tmp75,
	sts 194,r24	 ;  MEM[(volatile uint8_t *)194B], tmp75
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:106: 		uint16_t dataUBRR = LookupUBRR(speed, dataU2X);
	ldi r22,0	 ; 
	ldi r24,lo8(7)	 ; ,
	ldi r25,0	 ; 
	call _ZN4avrt6Serial10LookupUBRRENS0_5SpeedEb	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:107: 		UBRR0H = static_cast<uint8_t>((dataUBRR >> 8) & 0xff); // this must be written first
	sts 197,r25	 ;  MEM[(volatile uint8_t *)197B], dataUBRR
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:108: 		UBRR0L = static_cast<uint8_t>(dataUBRR & 0xff);
	sts 196,r24	 ;  MEM[(volatile uint8_t *)196B], dataUBRR
 ;  C:\Users\ypsit\source\Arduino\libraries\avrt\examples\Serial_Printf\Serial_Printf.ino:12: 	serial.Printf(F("'%S'\n"), str);
	ldi r24,lo8(_ZZ5setupE3__c)	 ;  tmp79,
	ldi r25,hi8(_ZZ5setupE3__c)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp79
	ldi r24,lo8(_ZZ5setupE3__c_0)	 ;  tmp83,
	ldi r25,hi8(_ZZ5setupE3__c_0)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp83
	ldi r24,lo8(serial)	 ;  tmp87,
	ldi r25,hi8(serial)	 ; ,
	push r25	 ; 
	push r24	 ;  tmp87
	call _ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz	 ; 
	ldi r28,lo8(_ZZ5setupE3__c)	 ;  ivtmp.169,
	ldi r29,hi8(_ZZ5setupE3__c)	 ;  ivtmp.169,
	 ; SP += 6	 ; 
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L8:
 ;  C:\Users\ypsit\source\Arduino\libraries\avrt\examples\Serial_Printf\Serial_Printf.ino:14: 		char ch = pgm_read_byte(*p);
	ld r30,Y+	 ;  _1, MEM[base: _12, offset: 0B]
	mov __tmp_reg__,r30	 ; 
	lsl r0	 ; 
	sbc r31,r31	 ; 
/* #APP */
 ;  14 "C:\Users\ypsit\source\Arduino\libraries\avrt\examples\Serial_Printf\Serial_Printf.ino" 1
	lpm r22, Z	 ;  __result
	
 ;  0 "" 2
 ;  C:\Users\ypsit\source\Arduino\libraries\avrt\examples\Serial_Printf\Serial_Printf.ino:15: 		if (ch == '\0') break;
/* #NOAPP */
	tst r22	 ;  __result
	breq .L6	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Stream.h:262: 	void PutChar(char ch) { SendData(static_cast<uint8_t>(ch)); }
	ldi r24,lo8(serial)	 ; ,
	ldi r25,hi8(serial)	 ; ,
	call _ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh	 ; 
 ;  C:\Users\ypsit\source\Arduino\libraries\avrt\examples\Serial_Printf\Serial_Printf.ino:17: 	}
	rjmp .L8	 ; 
.L6:
/* epilogue start */
 ;  C:\Users\ypsit\source\Arduino\libraries\avrt\examples\Serial_Printf\Serial_Printf.ino:170: }
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	setup, .-setup
	.section	.text.loop,"ax",@progbits
.global	loop
	.type	loop, @function
loop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
 ;  C:\Users\ypsit\source\Arduino\libraries\avrt\examples\Serial_Printf\Serial_Printf.ino:174: }
	ret
	.size	loop, .-loop
	.section	.text.startup._GLOBAL__sub_I_serial,"ax",@progbits
	.type	_GLOBAL__sub_I_serial, @function
_GLOBAL__sub_I_serial:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\src/Serial.h:81: 	Serial0() {}
	ldi r24,lo8(_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE+4)	 ;  tmp43,
	ldi r25,hi8(_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE+4)	 ; ,
	sts serial+1,r25	 ;  serial.D.5116.D.4767._vptr.Stream, tmp43
	sts serial,r24	 ;  serial.D.5116.D.4767._vptr.Stream, tmp43
/* epilogue start */
 ;  C:\Users\ypsit\source\Arduino\libraries\avrt\examples\Serial_Printf\Serial_Printf.ino:174: }
	ret
	.size	_GLOBAL__sub_I_serial, .-_GLOBAL__sub_I_serial
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_serial)
	.weak	_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE
	.section	.rodata._ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE,"aG",@progbits,_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE,comdat
	.type	_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE, @object
	.size	_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE, 8
_ZTVN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EEE:
	.word	0
	.word	0
	.word	gs(_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8SendDataEh)
	.word	gs(_ZN4avrt7Serial0ILb0ELh0ELh0ELh0ELh0ELh0ELh0ELh0ELh1ELh1EE8RecvDataEv)
	.section	.progmem.data._ZZ5setupE3__c_0,"a",@progbits
	.type	_ZZ5setupE3__c_0, @object
	.size	_ZZ5setupE3__c_0, 6
_ZZ5setupE3__c_0:
	.string	"'%S'\n"
	.section	.progmem.data._ZZ5setupE3__c,"a",@progbits
	.type	_ZZ5setupE3__c, @object
	.size	_ZZ5setupE3__c, 6
_ZZ5setupE3__c:
	.string	"Hello"
.global	serial
	.section	.bss.serial,"aw",@nobits
	.type	serial, @object
	.size	serial, 2
serial:
	.zero	2
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss

	.file	"exp-analog-write.ino.cpp"
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
 ;  -imultilib avr5
 ;  -iprefix c:\users\ypsit\appdata\local\arduino15\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7\bin\../lib/gcc/avr/7.3.0/
 ;  -D__AVR_ATmega328P__ -D__AVR_DEVICE_NAME__=atmega328p
 ;  -D F_CPU=16000000L -D ARDUINO=10607 -D ARDUINO_AVR_PRO
 ;  -D ARDUINO_ARCH_AVR
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\build\sketch\exp-analog-write.ino.cpp
 ;  -mn-flash=1 -mmcu=avr5 -auxbase-strip build\exp-analog-write.ino.s -Os
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
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  C:\Users\ypsit\AppData\Local\Arduino15\packages\arduino\hardware\avr\1.8.6\cores\arduino/HardwareSerial.h:121:     void begin(unsigned long baud) { begin(baud, SERIAL_8N1); }
	ldi r18,lo8(6)	 ; ,
	ldi r20,0	 ; 
	ldi r21,lo8(-31)	 ; ,
	ldi r22,0	 ; 
	ldi r23,0	 ; 
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	call _ZN14HardwareSerial5beginEmh	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:64: 		} else if constexpr (pin == 11) { if constexpr (mode & 1) { DDRB |= (1 << 3); } else { DDRB &= ~(1 << 3); PORTB |= ((mode >> 1) << 3); }
	sbi 0x4,3	 ; ,
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:160: 			TCCR2A |= (1 << COM2A1);
	ldi r30,lo8(-80)	 ;  tmp48,
	ldi r31,0	 ; 
	ld r24,Z	 ;  _5, MEM[(volatile uint8_t *)176B]
	ori r24,lo8(-128)	 ;  _6,
	st Z,r24	 ;  MEM[(volatile uint8_t *)176B], _6
/* epilogue start */
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\exp-analog-write.ino:78: }
	ret
	.size	setup, .-setup
	.section	.text.loop,"ax",@progbits
.global	loop
	.type	loop, @function
loop:
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\exp-analog-write.ino:82: 	uint8_t value = map(analogRead(A0), 0, 1023, 0, 255);
	ldi r24,lo8(14)	 ; ,
	call analogRead	 ; 
	movw r22,r24	 ;  _1, _1
	lsl r25	 ; 
	sbc r24,r24	 ; 
	sbc r25,r25	 ; 
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	ldi r18,lo8(-1)	 ;  tmp57,
	push r18	 ;  tmp57
	mov r10,__zero_reg__	 ; 
	mov r11,__zero_reg__	 ; 
	movw r12,r10	 ; 
	clr r14	 ; 
	dec r14	 ; 
	ldi r17,lo8(3)	 ; ,
	mov r15,r17	 ; ,
	ldi r16,0	 ; 
	ldi r17,0	 ; 
	ldi r18,0	 ; 
	ldi r19,0	 ; 
	movw r20,r18	 ; 
	call _Z3maplllll	 ; 
	mov r28,r22	 ;  _3,
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\exp-analog-write.ino:83: 	Serial.println(value);
	ldi r20,lo8(10)	 ; ,
	ldi r21,0	 ; 
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	call _ZN5Print7printlnEhi	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:194: 		if (out == 0) {
	 ; SP += 4	 ; 
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:175: 			TCCR2A &= ~(1 << COM2A1);
	lds r24,176	 ;  _12,
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:194: 		if (out == 0) {
	cpse r28,__zero_reg__	 ;  _3,
	rjmp .L3	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:175: 			TCCR2A &= ~(1 << COM2A1);
	andi r24,lo8(127)	 ;  _13,
	sts 176,r24	 ;  MEM[(volatile uint8_t *)176B], _13
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:88: 		} else if constexpr (pin == 11) { if constexpr (out) { PORTB |= (1 << 3); } else { PORTB &= ~(1 << 3); }
	cbi 0x5,3	 ; ,
.L2:
/* epilogue start */
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\exp-analog-write.ino:86: }
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	ret
.L3:
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:197: 		} else if (out == 255) {
	cpi r28,lo8(-1)	 ;  _3,
	brne .L5	 ; ,
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:175: 			TCCR2A &= ~(1 << COM2A1);
	andi r24,lo8(127)	 ;  _17,
	sts 176,r24	 ;  MEM[(volatile uint8_t *)176B], _17
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:88: 		} else if constexpr (pin == 11) { if constexpr (out) { PORTB |= (1 << 3); } else { PORTB &= ~(1 << 3); }
	sbi 0x5,3	 ; ,
	rjmp .L2	 ; 
.L5:
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:160: 			TCCR2A |= (1 << COM2A1);
	ori r24,lo8(-128)	 ;  _19,
	sts 176,r24	 ;  MEM[(volatile uint8_t *)176B], _19
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\avrt.h:190: 			OCR2A = out;
	sts 179,r28	 ;  MEM[(volatile uint8_t *)179B], _3
 ;  C:\Users\ypsit\source\Arduino\exp-analog-write\exp-analog-write.ino:86: }
	rjmp .L2	 ; 
	.size	loop, .-loop
	.ident	"GCC: (GNU) 7.3.0"

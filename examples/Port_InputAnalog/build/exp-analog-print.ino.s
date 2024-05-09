	.file	"exp-analog-print.ino.cpp"
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
 ;  C:\Users\ypsit\source\Arduino\exp-analog-print\build\sketch\exp-analog-print.ino.cpp
 ;  -mn-flash=1 -mmcu=avr5 -auxbase-strip build\exp-analog-print.ino.s -Os
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
 ;  C:\Users\ypsit\source\Arduino\exp-analog-print\exp-analog-print.ino:4: 	pinMode(A0, INPUT);
	ldi r22,0	 ; 
	ldi r24,lo8(14)	 ; ,
	jmp pinMode	 ; 
	.size	setup, .-setup
	.section	.text.loop,"ax",@progbits
.global	loop
	.type	loop, @function
loop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  C:\Users\ypsit\source\Arduino\exp-analog-print\exp-analog-print.ino:12: 		ADMUX =
	ldi r24,lo8(64)	 ;  tmp48,
	sts 124,r24	 ;  MEM[(volatile uint8_t *)124B], tmp48
 ;  C:\Users\ypsit\source\Arduino\exp-analog-print\exp-analog-print.ino:16: 		bitSet(ADCSRA, ADSC);		// ADC Start Conversion = 1
	lds r24,122	 ;  _1, MEM[(volatile uint8_t *)122B]
	ori r24,lo8(64)	 ;  _2,
	sts 122,r24	 ;  MEM[(volatile uint8_t *)122B], _2
.L3:
 ;  C:\Users\ypsit\source\Arduino\exp-analog-print\exp-analog-print.ino:17: 		while (bit_is_set(ADCSRA, ADSC)) ;
	lds r24,122	 ;  _3, MEM[(volatile uint8_t *)122B]
	sbrc r24,6	 ;  _3,
	rjmp .L3	 ; 
 ;  C:\Users\ypsit\source\Arduino\exp-analog-print\exp-analog-print.ino:18: 		value = ADC;
	lds r22,120	 ;  value, MEM[(volatile uint16_t *)120B]
	lds r23,120+1	 ;  value, MEM[(volatile uint16_t *)120B]
 ;  C:\Users\ypsit\source\Arduino\exp-analog-print\exp-analog-print.ino:20: 	Serial.println(value, 16);
	ldi r20,lo8(16)	 ; ,
	ldi r21,0	 ; 
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	jmp _ZN5Print7printlnEji	 ; 
	.size	loop, .-loop
	.ident	"GCC: (GNU) 7.3.0"

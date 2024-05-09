	.file	"avrt.cpp"
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
 ;  -I C:\users\ypsit\source\Arduino\libraries\avrt -imultilib avr5
 ;  -iprefix c:\users\ypsit\appdata\local\arduino15\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7\bin\../lib/gcc/avr/7.3.0/
 ;  -D__AVR_ATmega328P__ -D__AVR_DEVICE_NAME__=atmega328p
 ;  -D F_CPU=16000000L -D ARDUINO=10607 -D ARDUINO_AVR_PRO
 ;  -D ARDUINO_ARCH_AVR
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp -mn-flash=1
 ;  -mmcu=avr5 -auxbase-strip build\avrt.s -Os -Wno-error=narrowing -w
 ;  -std=gnu++11 -fverbose-asm -fpermissive -ffunction-sections
 ;  -fdata-sections -fno-threadsafe-statics -mn-flash=1 -mno-skip-bug
 ;  -fno-rtti -fno-enforce-eh-specs -fno-exceptions
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
	.section	.text._ZN4avrt14StringPtr_SRAM4NextEv,"axG",@progbits,_ZN4avrt14StringPtr_SRAM4NextEv,comdat
	.weak	_ZN4avrt14StringPtr_SRAM4NextEv
	.type	_ZN4avrt14StringPtr_SRAM4NextEv, @function
_ZN4avrt14StringPtr_SRAM4NextEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:628: 	virtual char Next() override { return *p_++; }
	movw r26,r24	 ; , this
	adiw r26,2	 ;  this_4(D)->p_
	ld r30,X+	 ;  _1
	ld r31,X	 ;  _1
	sbiw r26,2+1	 ;  this_4(D)->p_
	movw r18,r30	 ;  tmp46, _1
	subi r18,-1	 ;  tmp46,
	sbci r19,-1	 ; ,
	adiw r26,2+1	 ;  this_4(D)->p_
	st X,r19	 ;  tmp46
	st -X,r18	 ;  tmp46
	sbiw r26,2	 ;  this_4(D)->p_
	ld r24,Z	 ; , *_1
/* epilogue start */
	ret
	.size	_ZN4avrt14StringPtr_SRAM4NextEv, .-_ZN4avrt14StringPtr_SRAM4NextEv
	.section	.text._ZN4avrt15StringPtr_Flash4NextEv,"axG",@progbits,_ZN4avrt15StringPtr_Flash4NextEv,comdat
	.weak	_ZN4avrt15StringPtr_Flash4NextEv
	.type	_ZN4avrt15StringPtr_Flash4NextEv, @function
_ZN4avrt15StringPtr_Flash4NextEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24	 ;  this, this
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:636: 	virtual char Next() override { char ch = pgm_read_byte(p_); p_++; return ch; }
	adiw r26,2	 ;  this_4(D)->p_
	ld r30,X+	 ;  _1
	ld r31,X	 ;  _1
	sbiw r26,2+1	 ;  this_4(D)->p_
/* #APP */
 ;  636 "C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h" 1
	lpm r24, Z	 ;  __result
	
 ;  0 "" 2
/* #NOAPP */
	adiw r30,1	 ;  tmp49,
	adiw r26,2+1	 ;  this_4(D)->p_
	st X,r31	 ;  tmp49
	st -X,r30	 ;  tmp49
	sbiw r26,2	 ;  this_4(D)->p_
/* epilogue start */
	ret
	.size	_ZN4avrt15StringPtr_Flash4NextEv, .-_ZN4avrt15StringPtr_Flash4NextEv
	.section	.text._ZN4avrt6Stream7PutCharEc,"axG",@progbits,_ZN4avrt6Stream7PutCharEc,comdat
	.weak	_ZN4avrt6Stream7PutCharEc
	.type	_ZN4avrt6Stream7PutCharEc, @function
_ZN4avrt6Stream7PutCharEc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:677: 	void PutChar(char ch) { SendData(static_cast<uint8_t>(ch)); }
	movw r26,r24	 ; , this
	ld r30,X+	 ;  this_5(D)->_vptr.Stream
	ld r31,X	 ;  this_5(D)->_vptr.Stream
	ld __tmp_reg__,Z+	 ;  *_1
	ld r31,Z	 ;  *_1, *_1
	mov r30,__tmp_reg__	 ;  *_1
	ijmp
	.size	_ZN4avrt6Stream7PutCharEc, .-_ZN4avrt6Stream7PutCharEc
	.section	.text._ZN4avrt14FormatterFlags10InitializeEv,"ax",@progbits
.global	_ZN4avrt14FormatterFlags10InitializeEv
	.type	_ZN4avrt14FormatterFlags10InitializeEv, @function
_ZN4avrt14FormatterFlags10InitializeEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24	 ;  this, this
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:12: 	upperCaseFlag = false;
	st Z,__zero_reg__	 ;  this_2(D)->upperCaseFlag,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:13: 	leftAlignFlag = false;
	std Z+1,__zero_reg__	 ;  this_2(D)->leftAlignFlag,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:14: 	sharpFlag = false;
	std Z+2,__zero_reg__	 ;  this_2(D)->sharpFlag,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:15: 	fieldMinWidth = 0;
	std Z+4,__zero_reg__	 ;  this_2(D)->fieldMinWidth,
	std Z+3,__zero_reg__	 ;  this_2(D)->fieldMinWidth,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:16: 	precision = Prec::Default;
	ldi r24,lo8(-1)	 ;  tmp43,
	ldi r25,lo8(-1)	 ; ,
	std Z+6,r25	 ;  this_2(D)->precision, tmp43
	std Z+5,r24	 ;  this_2(D)->precision, tmp43
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:17: 	plusMode = PlusMode::None;
	std Z+8,__zero_reg__	 ;  this_2(D)->plusMode,
	std Z+7,__zero_reg__	 ;  this_2(D)->plusMode,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:18: 	charPadding = ' ';
	ldi r24,lo8(32)	 ;  tmp44,
	std Z+9,r24	 ;  this_2(D)->charPadding, tmp44
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:19: }
	ret
	.size	_ZN4avrt14FormatterFlags10InitializeEv, .-_ZN4avrt14FormatterFlags10InitializeEv
	.section	.text._ZNK4avrt14FormatterFlags8ToStringEPcc,"ax",@progbits
.global	_ZNK4avrt14FormatterFlags8ToStringEPcc
	.type	_ZNK4avrt14FormatterFlags8ToStringEPcc, @function
_ZNK4avrt14FormatterFlags8ToStringEPcc:
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r16,r24	 ;  this, this
	movw r30,r22	 ;  fmt, fmt
	mov r13,r20	 ;  qualifier, qualifier
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:54: 	*p++ = '%';
	ldi r24,lo8(37)	 ;  tmp107,
	st Z,r24	 ;  *fmt_49(D), tmp107
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:55: 	if (leftAlignFlag) *p++ += '-';
	movw r26,r16	 ; , this
	adiw r26,1	 ;  this_53(D)->leftAlignFlag
	ld r24,X	 ;  this_53(D)->leftAlignFlag
	movw r28,r22	 ;  p, fmt
	cpse r24,__zero_reg__	 ;  this_53(D)->leftAlignFlag,
	rjmp .L6	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:54: 	*p++ = '%';
	adiw r28,1	 ;  p,
.L7:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:56: 	if (sharpFlag) *p++ += '#';
	movw r30,r16	 ; , this
	ldd r24,Z+2	 ;  this_53(D)->sharpFlag, this_53(D)->sharpFlag
	tst r24	 ;  this_53(D)->sharpFlag
	breq .L8	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:56: 	if (sharpFlag) *p++ += '#';
	ld r24,Y	 ;  *p_35, *p_35
	subi r24,lo8(-(35))	 ;  tmp112,
	st Y,r24	 ;  *p_35, tmp112
	adiw r28,1	 ;  p,
.L8:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:57: 	if (charPadding == '0') *p++ += '0';
	movw r26,r16	 ; , this
	adiw r26,9	 ;  this_53(D)->charPadding
	ld r24,X	 ;  this_53(D)->charPadding
	cpi r24,lo8(48)	 ;  this_53(D)->charPadding,
	brne .L9	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:57: 	if (charPadding == '0') *p++ += '0';
	ld r24,Y	 ;  *p_36, *p_36
	subi r24,lo8(-(48))	 ;  tmp115,
	st Y,r24	 ;  *p_36, tmp115
	adiw r28,1	 ;  p,
.L9:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:58: 	if (plusMode == PlusMode::Space) {
	movw r30,r16	 ; , this
	ldd r24,Z+7	 ;  _16, this_53(D)->plusMode
	ldd r25,Z+8	 ;  _16, this_53(D)->plusMode
	cpi r24,1	 ;  _16,
	cpc r25,__zero_reg__	 ;  _16
	brne .L10	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:59: 		*p++ += ' ';
	ld r24,Y	 ;  *p_37, *p_37
	subi r24,lo8(-(32))	 ;  tmp117,
.L22:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:61: 		*p++ += '+';
	st Y,r24	 ;  *p_37, tmp119
	adiw r28,1	 ;  p,
.L11:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:63: 	if (fieldMinWidth > 0) {
	movw r26,r16	 ; , this
	adiw r26,3	 ;  this_53(D)->fieldMinWidth
	ld r24,X+	 ;  _25
	ld r25,X	 ;  _25
	cp __zero_reg__,r24	 ;  _25
	cpc __zero_reg__,r25	 ;  _25
	brge .L12	 ; ,
 ;  c:\users\ypsit\appdata\local\arduino15\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7\avr\include\stdlib.h:439: 	return __itoa_ncheck (__val, __s, __radix);
	ldi r20,lo8(10)	 ; ,
	movw r22,r28	 ; , p
	call __itoa_ncheck	 ; 
	movw r24,r28	 ;  ivtmp.170, p
.L13:
	movw r28,r24	 ;  p, ivtmp.170
	adiw r24,1	 ;  ivtmp.170,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:65: 		for ( ; *p; p++) ;
	ld r18,Y	 ;  MEM[base: p_39, offset: 0B], MEM[base: p_39, offset: 0B]
	cpse r18,__zero_reg__	 ;  MEM[base: p_39, offset: 0B],
	rjmp .L13	 ; 
.L12:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:67: 	if (precision == Prec::Null) {
	movw r30,r16	 ; , this
	ldd r24,Z+5	 ;  _27, this_53(D)->precision
	ldd r25,Z+6	 ;  _27, this_53(D)->precision
	cpi r24,-2	 ;  _27,
	ldi r31,-1	 ; ,
	cpc r25,r31	 ;  _27,
	brne .L14	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:68: 		*p++ = '.';
	ldi r24,lo8(46)	 ;  tmp122,
	st Y,r24	 ;  *p_40, tmp122
	adiw r28,1	 ;  p,
.L15:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:74: 	*p++ += qualifier;
	ld r20,Y	 ;  *p_42, *p_42
	add r20,r13	 ;  tmp126, qualifier
	st Y,r20	 ;  *p_42, tmp126
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:75: 	*p = '\0';
	std Y+1,__zero_reg__	 ;  MEM[(char *)p_42 + 1B],
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:76: }
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	ret
.L6:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:55: 	if (leftAlignFlag) *p++ += '-';
	adiw r28,2	 ;  p,
	ldd r24,Z+1	 ;  MEM[(char *)fmt_49(D) + 1B], MEM[(char *)fmt_49(D) + 1B]
	subi r24,lo8(-(45))	 ;  tmp109,
	std Z+1,r24	 ;  MEM[(char *)fmt_49(D) + 1B], tmp109
	rjmp .L7	 ; 
.L10:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:60: 	} else if (plusMode == PlusMode::Plus) {
	sbiw r24,2	 ;  _16,
	brne .L11	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:61: 		*p++ += '+';
	ld r24,Y	 ;  *p_37, *p_37
	subi r24,lo8(-(43))	 ;  tmp119,
	rjmp .L22	 ; 
.L14:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:69: 	} else if (precision >= 0) {
	sbrc r25,7	 ;  _27,
	rjmp .L15	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:70: 		*p++ = '.';
	movw r14,r28	 ;  p, p
	ldi r18,-1	 ; ,
	sub r14,r18	 ;  p,
	sbc r15,r18	 ;  p,
	ldi r24,lo8(46)	 ;  tmp123,
	st Y,r24	 ;  *p_40, tmp123
 ;  c:\users\ypsit\appdata\local\arduino15\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7\avr\include\stdlib.h:439: 	return __itoa_ncheck (__val, __s, __radix);
	ldi r20,lo8(10)	 ; ,
	movw r22,r14	 ; , p
	movw r26,r16	 ; , this
	adiw r26,5	 ;  this_53(D)->precision
	ld r24,X+	 ; 
	ld r25,X	 ; 
	call __itoa_ncheck	 ; 
.L16:
	movw r28,r14	 ;  p, ivtmp.160
	ldi r27,-1	 ; ,
	sub r14,r27	 ;  ivtmp.160,
	sbc r15,r27	 ;  ivtmp.160,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:72: 		for ( ; *p; p++) ;
	ld r24,Y	 ;  MEM[base: p_41, offset: 0B], MEM[base: p_41, offset: 0B]
	cpse r24,__zero_reg__	 ;  MEM[base: p_41, offset: 0B],
	rjmp .L16	 ; 
	rjmp .L15	 ; 
	.size	_ZNK4avrt14FormatterFlags8ToStringEPcc, .-_ZNK4avrt14FormatterFlags8ToStringEPcc
	.section	.text._ZNK4avrt14FormatterFlags14FormatNumber_eEfPcj,"ax",@progbits
.global	_ZNK4avrt14FormatterFlags14FormatNumber_eEfPcj
	.type	_ZNK4avrt14FormatterFlags14FormatNumber_eEfPcj, @function
_ZNK4avrt14FormatterFlags14FormatNumber_eEfPcj:
	push r8	 ; 
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 32 */
/* stack size = 44 */
.L__stack_usage = 44
	mov r11,r20	 ;  num, num
	mov r10,r21	 ;  num, num
	mov r9,r22	 ;  num, num
	mov r8,r23	 ;  num, num
	movw r14,r18	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:25: 	ToString(fmt, upperCaseFlag? 'E' : 'e');
	movw r30,r24	 ; , this
	ld r18,Z	 ;  this_4(D)->upperCaseFlag, this_4(D)->upperCaseFlag
	ldi r20,lo8(101)	 ;  iftmp.0_2,
	cpse r18,__zero_reg__	 ;  this_4(D)->upperCaseFlag
	ldi r20,lo8(69)	 ;  iftmp.0_2,
.L24:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:25: 	ToString(fmt, upperCaseFlag? 'E' : 'e');
	movw r18,r28	 ; ,
	subi r18,-1	 ; ,
	sbci r19,-1	 ; ,
	movw r12,r18	 ;  tmp59,
	movw r22,r18	 ; , tmp59
	call _ZNK4avrt14FormatterFlags8ToStringEPcc	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:26: 	::snprintf(buff, size, fmt, num);
	push r8	 ;  num
	push r9	 ;  num
	push r10	 ;  num
	push r11	 ;  num
	push r13	 ;  tmp59
	push r12	 ;  tmp59
	push r17	 ;  size
	push r16	 ;  size
	push r15	 ;  buff
	push r14	 ;  buff
	call snprintf	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:28: 	return buff;
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:29: }
	movw r24,r14	 ; ,
/* epilogue start */
	adiw r28,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	ret
	.size	_ZNK4avrt14FormatterFlags14FormatNumber_eEfPcj, .-_ZNK4avrt14FormatterFlags14FormatNumber_eEfPcj
	.section	.text._ZNK4avrt14FormatterFlags14FormatNumber_fEfPcj,"ax",@progbits
.global	_ZNK4avrt14FormatterFlags14FormatNumber_fEfPcj
	.type	_ZNK4avrt14FormatterFlags14FormatNumber_fEfPcj, @function
_ZNK4avrt14FormatterFlags14FormatNumber_fEfPcj:
	push r8	 ; 
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 32 */
/* stack size = 44 */
.L__stack_usage = 44
	mov r11,r20	 ;  num, num
	mov r10,r21	 ;  num, num
	mov r9,r22	 ;  num, num
	mov r8,r23	 ;  num, num
	movw r14,r18	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:35: 	ToString(fmt, 'f');
	ldi r20,lo8(102)	 ; ,
	movw r18,r28	 ; ,
	subi r18,-1	 ; ,
	sbci r19,-1	 ; ,
	movw r12,r18	 ;  tmp56,
	movw r22,r18	 ; , tmp56
	call _ZNK4avrt14FormatterFlags8ToStringEPcc	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:36: 	::snprintf(buff, size, fmt, num);
	push r8	 ;  num
	push r9	 ;  num
	push r10	 ;  num
	push r11	 ;  num
	push r13	 ;  tmp56
	push r12	 ;  tmp56
	push r17	 ;  size
	push r16	 ;  size
	push r15	 ;  buff
	push r14	 ;  buff
	call snprintf	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:38: 	return buff;
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:39: }
	movw r24,r14	 ; ,
/* epilogue start */
	adiw r28,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	ret
	.size	_ZNK4avrt14FormatterFlags14FormatNumber_fEfPcj, .-_ZNK4avrt14FormatterFlags14FormatNumber_fEfPcj
	.section	.text._ZNK4avrt14FormatterFlags14FormatNumber_gEfPcj,"ax",@progbits
.global	_ZNK4avrt14FormatterFlags14FormatNumber_gEfPcj
	.type	_ZNK4avrt14FormatterFlags14FormatNumber_gEfPcj, @function
_ZNK4avrt14FormatterFlags14FormatNumber_gEfPcj:
	push r8	 ; 
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 32 */
/* stack size = 44 */
.L__stack_usage = 44
	mov r11,r20	 ;  num, num
	mov r10,r21	 ;  num, num
	mov r9,r22	 ;  num, num
	mov r8,r23	 ;  num, num
	movw r14,r18	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:45: 	ToString(fmt, upperCaseFlag? 'G' : 'g');
	movw r30,r24	 ; , this
	ld r18,Z	 ;  this_4(D)->upperCaseFlag, this_4(D)->upperCaseFlag
	ldi r20,lo8(103)	 ;  iftmp.1_2,
	cpse r18,__zero_reg__	 ;  this_4(D)->upperCaseFlag
	ldi r20,lo8(71)	 ;  iftmp.1_2,
.L28:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:45: 	ToString(fmt, upperCaseFlag? 'G' : 'g');
	movw r18,r28	 ; ,
	subi r18,-1	 ; ,
	sbci r19,-1	 ; ,
	movw r12,r18	 ;  tmp59,
	movw r22,r18	 ; , tmp59
	call _ZNK4avrt14FormatterFlags8ToStringEPcc	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:46: 	::snprintf(buff, size, fmt, num);
	push r8	 ;  num
	push r9	 ;  num
	push r10	 ;  num
	push r11	 ;  num
	push r13	 ;  tmp59
	push r12	 ;  tmp59
	push r17	 ;  size
	push r16	 ;  size
	push r15	 ;  buff
	push r14	 ;  buff
	call snprintf	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:48: 	return buff;
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; 
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:49: }
	movw r24,r14	 ; ,
/* epilogue start */
	adiw r28,32	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	ret
	.size	_ZNK4avrt14FormatterFlags14FormatNumber_gEfPcj, .-_ZNK4avrt14FormatterFlags14FormatNumber_gEfPcj
	.section	.text._ZN4avrt6Stream5WriteEPKhi,"ax",@progbits
.global	_ZN4avrt6Stream5WriteEPKhi
	.type	_ZN4avrt6Stream5WriteEPKhi, @function
_ZN4avrt6Stream5WriteEPKhi:
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24	 ;  this, this
	movw r14,r22	 ;  buff, buff
	movw r28,r20	 ;  len, len
.L32:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:83: 	for ( ; len > 0; buff++, len--) SendData(*buff);
	cp __zero_reg__,r28	 ;  len
	cpc __zero_reg__,r29	 ;  len
	brge .L30	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:83: 	for ( ; len > 0; buff++, len--) SendData(*buff);
	movw r26,r16	 ; , this
	ld r30,X+	 ;  this_10(D)->_vptr.Stream
	ld r31,X	 ;  this_10(D)->_vptr.Stream
	ld __tmp_reg__,Z+	 ;  *_1
	ld r31,Z	 ;  *_1, *_1
	mov r30,__tmp_reg__	 ;  *_1
	movw r26,r14	 ; , buff
	ld r22,X+	 ; , MEM[base: buff_4, offset: 0B]
	movw r14,r26	 ;  buff,
	movw r24,r16	 ; , this
	icall
	sbiw r28,1	 ;  len,
	rjmp .L32	 ; 
.L30:
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:84: }
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	ret
	.size	_ZN4avrt6Stream5WriteEPKhi, .-_ZN4avrt6Stream5WriteEPKhi
	.section	.text._ZN4avrt6Stream5PrintEPKc,"ax",@progbits
.global	_ZN4avrt6Stream5PrintEPKc
	.type	_ZN4avrt6Stream5PrintEPKc, @function
_ZN4avrt6Stream5PrintEPKc:
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24	 ;  this, this
	movw r28,r22	 ;  ivtmp.200, str
.L35:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:88: 	for (const char* p = str; *p; p++) PutChar(*p);
	ld r22,Y+	 ;  _1, MEM[base: _12, offset: 0B]
	tst r22	 ;  _1
	breq .L33	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:88: 	for (const char* p = str; *p; p++) PutChar(*p);
	movw r24,r16	 ; , this
	call _ZN4avrt6Stream7PutCharEc	 ; 
	rjmp .L35	 ; 
.L33:
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:89: }
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	ret
	.size	_ZN4avrt6Stream5PrintEPKc, .-_ZN4avrt6Stream5PrintEPKc
	.section	.text._ZN4avrt6Stream5PrintEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN4avrt6Stream5PrintEPK19__FlashStringHelper
	.type	_ZN4avrt6Stream5PrintEPK19__FlashStringHelper, @function
_ZN4avrt6Stream5PrintEPK19__FlashStringHelper:
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24	 ;  this, this
	movw r28,r22	 ;  str, str
.L38:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:95: 		char ch = pgm_read_byte(p);
	movw r30,r28	 ; , str
/* #APP */
 ;  95 "C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp" 1
	lpm r22, Z	 ;  __result
	
 ;  0 "" 2
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:96: 		if (!ch) break;
/* #NOAPP */
	tst r22	 ;  __result
	breq .L36	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:97: 		PutChar(ch);
	movw r24,r16	 ; , this
	call _ZN4avrt6Stream7PutCharEc	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:94: 	for ( ; ; p++) {
	adiw r28,1	 ;  str,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:98: 	}
	rjmp .L38	 ; 
.L36:
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:99: }
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	ret
	.size	_ZN4avrt6Stream5PrintEPK19__FlashStringHelper, .-_ZN4avrt6Stream5PrintEPK19__FlashStringHelper
	.section	.text._ZN4avrt6Stream7PrintlnEPKc,"ax",@progbits
.global	_ZN4avrt6Stream7PrintlnEPKc
	.type	_ZN4avrt6Stream7PrintlnEPKc, @function
_ZN4avrt6Stream7PrintlnEPKc:
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24	 ;  this, this
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:103: 	Print(str);
	call _ZN4avrt6Stream5PrintEPKc	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:104: 	PutChar('\n');
	ldi r22,lo8(10)	 ; ,
	movw r24,r28	 ; , this
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:105: }
	pop r29	 ; 
	pop r28	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:104: 	PutChar('\n');
	jmp _ZN4avrt6Stream7PutCharEc	 ; 
	.size	_ZN4avrt6Stream7PrintlnEPKc, .-_ZN4avrt6Stream7PrintlnEPKc
	.section	.text._ZN4avrt6Stream7PrintlnEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN4avrt6Stream7PrintlnEPK19__FlashStringHelper
	.type	_ZN4avrt6Stream7PrintlnEPK19__FlashStringHelper, @function
_ZN4avrt6Stream7PrintlnEPK19__FlashStringHelper:
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24	 ;  this, this
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:109: 	Print(str);
	call _ZN4avrt6Stream5PrintEPK19__FlashStringHelper	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:110: 	PutChar('\n');
	ldi r22,lo8(10)	 ; ,
	movw r24,r28	 ; , this
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:111: }
	pop r29	 ; 
	pop r28	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:110: 	PutChar('\n');
	jmp _ZN4avrt6Stream7PutCharEc	 ; 
	.size	_ZN4avrt6Stream7PrintlnEPK19__FlashStringHelper, .-_ZN4avrt6Stream7PrintlnEPK19__FlashStringHelper
	.section	.text._ZN4avrt6Stream16PutAlignedStringERKNS_14FormatterFlagsEPKci,"ax",@progbits
.global	_ZN4avrt6Stream16PutAlignedStringERKNS_14FormatterFlagsEPKci
	.type	_ZN4avrt6Stream16PutAlignedStringERKNS_14FormatterFlagsEPKci, @function
_ZN4avrt6Stream16PutAlignedStringERKNS_14FormatterFlagsEPKci:
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r24	 ;  this, this
	movw r12,r22	 ;  formatterFlags, formatterFlags
	movw r16,r20	 ;  str, str
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:371: {
	movw r30,r20	 ;  ivtmp.265, str
.L42:
	movw r10,r30	 ;  cnt, ivtmp.265
	sub r10,r16	 ;  cnt, str
	sbc r11,r17	 ;  cnt, str
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:373: 	for (const char* p = str; *p; p++, cnt++) ;
	ld r24,Z+	 ;  _1, MEM[base: _60, offset: 0B]
	cpse r24,__zero_reg__	 ;  _1,
	rjmp .L42	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:374: 	if (cntMax >= 0 && cnt > cntMax) cnt = cntMax;
	sbrc r19,7	 ;  cntMax,
	rjmp .L43	 ; 
	cp r18,r10	 ;  cntMax, cnt
	cpc r19,r11	 ;  cntMax, cnt
	brge .L43	 ; ,
	movw r10,r18	 ;  cnt, cntMax
.L43:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:375: 	int cntPadding = formatterFlags.fieldMinWidth - cnt;
	movw r30,r12	 ; , formatterFlags
	ldd r28,Z+3	 ;  formatterFlags_28(D)->fieldMinWidth, formatterFlags_28(D)->fieldMinWidth
	ldd r29,Z+4	 ;  formatterFlags_28(D)->fieldMinWidth, formatterFlags_28(D)->fieldMinWidth
	sub r28,r10	 ;  cntPadding, cnt
	sbc r29,r11	 ;  cntPadding, cnt
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:377: 	if (formatterFlags.leftAlignFlag) {
	ldd r24,Z+1	 ;  formatterFlags_28(D)->leftAlignFlag, formatterFlags_28(D)->leftAlignFlag
	tst r24	 ;  formatterFlags_28(D)->leftAlignFlag
	breq .L46	 ; ,
	add r10,r16	 ;  _45, str
	adc r11,r17	 ;  _45, str
.L49:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:378: 		for ( ; cnt > 0; p++, cnt--) PutChar(*p);
	cp r16,r10	 ;  str, _45
	cpc r17,r11	 ;  str, _45
	breq .L48	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:378: 		for ( ; cnt > 0; p++, cnt--) PutChar(*p);
	movw r30,r16	 ; , str
	ld r22,Z+	 ; , MEM[base: p_16, offset: 0B]
	movw r16,r30	 ;  str,
	movw r24,r14	 ; , this
	call _ZN4avrt6Stream7PutCharEc	 ; 
	rjmp .L49	 ; 
.L48:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:379: 		while (cntPadding-- > 0) PutChar(formatterFlags.charPadding);
	cp __zero_reg__,r28	 ;  ivtmp.218
	cpc __zero_reg__,r29	 ;  ivtmp.218
	brge .L41	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:379: 		while (cntPadding-- > 0) PutChar(formatterFlags.charPadding);
	movw r30,r12	 ; , formatterFlags
	ldd r22,Z+9	 ; , formatterFlags_28(D)->charPadding
	movw r24,r14	 ; , this
	call _ZN4avrt6Stream7PutCharEc	 ; 
	sbiw r28,1	 ;  ivtmp.218,
	rjmp .L48	 ; 
.L51:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:381: 		while (cntPadding-- > 0) PutChar(formatterFlags.charPadding);
	movw r30,r12	 ; , formatterFlags
	ldd r22,Z+9	 ; , formatterFlags_28(D)->charPadding
	movw r24,r14	 ; , this
	call _ZN4avrt6Stream7PutCharEc	 ; 
	sbiw r28,1	 ;  ivtmp.252,
.L46:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:381: 		while (cntPadding-- > 0) PutChar(formatterFlags.charPadding);
	cp __zero_reg__,r28	 ;  ivtmp.252
	cpc __zero_reg__,r29	 ;  ivtmp.252
	brlt .L51	 ; ,
	add r10,r16	 ;  _49, str
	adc r11,r17	 ;  _49, str
.L52:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:382: 		for ( ; cnt > 0; p++, cnt--) PutChar(*p);
	cp r16,r10	 ;  str, _49
	cpc r17,r11	 ;  str, _49
	breq .L41	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:382: 		for ( ; cnt > 0; p++, cnt--) PutChar(*p);
	movw r30,r16	 ; , str
	ld r22,Z+	 ; , MEM[base: p_17, offset: 0B]
	movw r16,r30	 ;  str,
	movw r24,r14	 ; , this
	call _ZN4avrt6Stream7PutCharEc	 ; 
	rjmp .L52	 ; 
.L41:
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:384: }
	pop r29	 ; 
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
	.size	_ZN4avrt6Stream16PutAlignedStringERKNS_14FormatterFlagsEPKci, .-_ZN4avrt6Stream16PutAlignedStringERKNS_14FormatterFlagsEPKci
	.section	.text._ZN4avrt6Serial10LookupUBRRENS0_8BaudRateEb,"ax",@progbits
.global	_ZN4avrt6Serial10LookupUBRRENS0_8BaudRateEb
	.type	_ZN4avrt6Serial10LookupUBRRENS0_8BaudRateEb, @function
_ZN4avrt6Serial10LookupUBRRENS0_8BaudRateEb:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:393: 	if (doubleSpeedFlag) {
	tst r22	 ;  doubleSpeedFlag
	breq .L55	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	sbiw r24,0	 ;  baudRate,
	brne .+2	 ; 
	rjmp .L57	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,1	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L71	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,2	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L72	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,3	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L60	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,4	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L83	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,5	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L74	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,6	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L75	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,7	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L76	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,8	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L77	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,9	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L78	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,10	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L80	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,11	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L68	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	cpi r24,12	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L81	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	sbiw r24,13	 ;  baudRate,
	brne .L72	 ; ,
.L82:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	ldi r24,lo8(1)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L55:
	sbiw r24,0	 ;  baudRate,
	breq .L71	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,1	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L72	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,2	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	brne .+2	 ; 
	rjmp .L83	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,3	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L74	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,4	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L75	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,5	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L76	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,6	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L77	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,7	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L78	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,8	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L79	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,9	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L80	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	movw r18,r24	 ;  tmp46, baudRate
	subi r18,10	 ;  tmp46,
	sbc r19,__zero_reg__	 ; 
	cpi r18,2	 ;  tmp46,
	cpc r19,__zero_reg__	 ; 
	brlo .L81	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	cpi r24,12	 ;  baudRate,
	cpc r25,__zero_reg__	 ;  baudRate
	breq .L82	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	sbiw r24,13	 ;  baudRate,
	brne .L83	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	ldi r25,0	 ;  <retval>
	ldi r24,0	 ;  <retval>
	ret
.L57:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:395: 			(baudRate == BaudRate2400)? 832 : (baudRate == BaudRate4800)? 416 :
	ldi r24,lo8(64)	 ;  <retval>,
	ldi r25,lo8(3)	 ;  <retval>,
	ret
.L60:
	ldi r24,lo8(-118)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L68:
	ldi r24,lo8(7)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L71:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:404: 			(baudRate == BaudRate2400)? 416 : (baudRate == BaudRate4800)? 207 :
	ldi r24,lo8(-96)	 ;  <retval>,
	ldi r25,lo8(1)	 ;  <retval>,
	ret
.L72:
	ldi r24,lo8(-49)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L74:
	ldi r24,lo8(68)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L75:
	ldi r24,lo8(51)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L76:
	ldi r24,lo8(34)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L77:
	ldi r24,lo8(25)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L78:
	ldi r24,lo8(16)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L79:
	ldi r24,lo8(12)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L80:
	ldi r24,lo8(8)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L81:
	ldi r24,lo8(3)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
	ret
.L83:
	ldi r24,lo8(103)	 ;  <retval>,
	ldi r25,0	 ;  <retval>
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:412: }
	ret
	.size	_ZN4avrt6Serial10LookupUBRRENS0_8BaudRateEb, .-_ZN4avrt6Serial10LookupUBRRENS0_8BaudRateEb
	.section	.text._ZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_Pcj,"axG",@progbits,_ZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_Pcj,comdat
	.weak	_ZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_Pcj
	.type	_ZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_Pcj, @function
_ZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_Pcj:
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24	 ;  this, this
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:582: 	char* p = buff + size - 1;
	movw r26,r18	 ;  tmp77, size
	sbiw r26,1	 ;  tmp77,
	add r26,r20	 ;  <retval>, buff
	adc r27,r21	 ;  <retval>, buff
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:583: 	*p = '\0';
	st X,__zero_reg__	 ;  *p_29,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:584: 	const char* convTbl = upperCaseFlag? convUpperTbl : convLowerTbl;
	ld r24,Y	 ;  this_32(D)->upperCaseFlag, this_32(D)->upperCaseFlag
	ldi r20,lo8(_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convLowerTbl)	 ;  iftmp.44_21,
	ldi r21,hi8(_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convLowerTbl)	 ;  iftmp.44_21,
	tst r24	 ;  this_32(D)->upperCaseFlag
	breq .L85	 ; ,
	ldi r20,lo8(_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convUpperTbl)	 ;  iftmp.44_21,
	ldi r21,hi8(_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convUpperTbl)	 ;  iftmp.44_21,
.L85:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:585: 	if (num == 0) {
	cp r22,__zero_reg__	 ;  num
	cpc r23,__zero_reg__	 ;  num
	brne .L95	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:586: 		if (precision == 0) {
	ldd r24,Y+5	 ;  this_32(D)->precision, this_32(D)->precision
	ldd r25,Y+6	 ;  this_32(D)->precision, this_32(D)->precision
	or r24,r25	 ;  this_32(D)->precision
	breq .L84	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:590: 			*p = '0';
	ldi r24,lo8(48)	 ;  tmp82,
	st -X,r24	 ;  MEM[(char *)p_29 + 65535B], tmp82
.L84:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:613: }
	movw r24,r26	 ; , <retval>
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	ret
.L95:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:593: 		int nCols = 0;
	ldi r25,0	 ;  nCols
	ldi r24,0	 ;  nCols
.L86:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:596: 			*p = pgm_read_byte(&convTbl[num & 0xf]);
	movw r30,r22	 ;  tmp84, num
	andi r30,15	 ;  tmp84,
	clr r31	 ; 
	add r30,r20	 ;  __addr16, iftmp.44_21
	adc r31,r21	 ;  __addr16, iftmp.44_21
/* #APP */
 ;  596 "C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h" 1
	lpm r30, Z	 ;  __result
	
 ;  0 "" 2
/* #NOAPP */
	st -X,r30	 ;  MEM[base: p_34, offset: 0B], __result
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:594: 		for ( ; num != 0; num >>= 4, nCols++) {
	ldi r30,4	 ; ,
	1:
	lsr r23	 ;  num
	ror r22	 ;  num
	dec r30	 ; 
	brne 1b
	adiw r24,1	 ;  nCols,
	cp r22,__zero_reg__	 ;  num
	cpc r23,__zero_reg__	 ;  num
	brne .L86	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:598: 		if (nCols < precision) {
	ldd r20,Y+5	 ;  _7, this_32(D)->precision
	ldd r21,Y+6	 ;  _7, this_32(D)->precision
	cp r24,r20	 ;  nCols, _7
	cpc r25,r21	 ;  nCols, _7
	brge .L88	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:599: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 3) - nCols;
	subi r18,3	 ;  _7,
	sbc r19,__zero_reg__	 ;  _7
	cp r20,r18	 ;  _7, _7
	cpc r21,r19	 ;  _7, _7
	brge .L89	 ; ,
	movw r18,r20	 ;  _7, _7
.L89:
	sub r18,r24	 ;  cnt, nCols
	sbc r19,r25	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:595: 			p--;
	movw r30,r26	 ;  p, <retval>
	movw r20,r18	 ;  tmp88, cnt
	sub r20,r26	 ;  tmp88, <retval>
	sbc r21,r27	 ; , <retval>
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:602: 				*p = '0';
	ldi r24,lo8(48)	 ;  tmp102,
.L92:
	movw r22,r30	 ;  _51, p
	add r22,r20	 ;  _51, tmp88
	adc r23,r21	 ;  _51,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:600: 			while (cnt-- > 0) {
	cp __zero_reg__,r22	 ;  _51
	cpc __zero_reg__,r23	 ;  _51
	brlt .L90	 ; ,
	sbrs r19,7	 ;  cnt,
	rjmp .L91	 ; 
	ldi r19,0	 ;  cnt
	ldi r18,0	 ;  cnt
.L91:
	sub r26,r18	 ;  <retval>, cnt
	sbc r27,r19	 ;  <retval>, cnt
.L88:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:605: 		if (sharpFlag) {
	ldd r24,Y+2	 ;  this_32(D)->sharpFlag, this_32(D)->sharpFlag
	tst r24	 ;  this_32(D)->sharpFlag
	breq .L84	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:607: 			*p = upperCaseFlag? 'X' : 'x';
	ld r24,Y	 ;  this_32(D)->upperCaseFlag, this_32(D)->upperCaseFlag
	cpse r24,__zero_reg__	 ;  this_32(D)->upperCaseFlag,
	rjmp .L96	 ; 
	ldi r24,lo8(120)	 ;  iftmp.50_22,
.L93:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:607: 			*p = upperCaseFlag? 'X' : 'x';
	movw r30,r26	 ;  tmp94, <retval>
	sbiw r30,1	 ;  tmp94,
	st Z,r24	 ;  MEM[(char *)p_17 + 65535B], iftmp.50_22
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:608: 			p--;
	sbiw r26,2	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:609: 			*p = '0';
	ldi r24,lo8(48)	 ;  tmp97,
	st X,r24	 ;  MEM[(char *)p_17 + 65534B], tmp97
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:612: 	return p;
	rjmp .L84	 ; 
.L90:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:602: 				*p = '0';
	st -Z,r24	 ;  MEM[base: p_43, offset: 0B], tmp102
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:600: 			while (cnt-- > 0) {
	rjmp .L92	 ; 
.L96:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:607: 			*p = upperCaseFlag? 'X' : 'x';
	ldi r24,lo8(88)	 ;  iftmp.50_22,
	rjmp .L93	 ; 
	.size	_ZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_Pcj, .-_ZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_Pcj
	.section	.rodata._ZN4avrt6Stream7PrintfVERNS_9StringPtrEPv.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0x"
	.section	.text._ZN4avrt6Stream7PrintfVERNS_9StringPtrEPv,"ax",@progbits
.global	_ZN4avrt6Stream7PrintfVERNS_9StringPtrEPv
	.type	_ZN4avrt6Stream7PrintfVERNS_9StringPtrEPv, @function
_ZN4avrt6Stream7PrintfVERNS_9StringPtrEPv:
	push r2	 ; 
	push r3	 ; 
	push r5	 ; 
	push r6	 ; 
	push r7	 ; 
	push r8	 ; 
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,52	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 52 */
/* stack size = 69 */
.L__stack_usage = 69
	movw r12,r24	 ;  this, this
	movw r2,r22	 ;  format, format
	movw r14,r20	 ;  ap, ap
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:157: 	char ch = format.Next();
	movw r26,r22	 ; , format
	ld r30,X+	 ;  format_35(D)->_vptr.StringPtr
	ld r31,X	 ;  format_35(D)->_vptr.StringPtr
	ld __tmp_reg__,Z+	 ;  *_1
	ld r31,Z	 ;  *_1, *_1
	mov r30,__tmp_reg__	 ;  *_1
	movw r24,r22	 ; , format
	icall
	mov r17,r24	 ;  ch,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:156: 	Stat stat = Stat::Start;
	mov r11,__zero_reg__	 ;  stat
	mov r10,__zero_reg__	 ;  stat
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:473: 				*p = '0';
	ldi r16,lo8(48)	 ;  tmp619,
	ldi r18,lo8(48)	 ; ,
	mov r5,r18	 ;  tmp620,
.L105:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:160: 		if (ch == '\0') break;
	tst r17	 ;  ch
	brne .+2	 ; 
	rjmp .L229	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:161: 		switch (stat) {
	ldi r27,9	 ; ,
	cp r10,r27	 ;  stat,
	cpc r11,__zero_reg__	 ;  stat
	brsh .L107	 ; ,
	movw r30,r10	 ;  tmp336, stat
	subi r30,lo8(-(gs(.L109)))	 ;  tmp336,
	sbci r31,hi8(-(gs(.L109)))	 ;  tmp336,
	jmp __tablejump2__
	.p2align	1
.L109:
	.word gs(.L108)
	.word gs(.L110)
	.word gs(.L111)
	.word gs(.L112)
	.word gs(.L113)
	.word gs(.L114)
	.word gs(.L115)
	.word gs(.L116)
	.word gs(.L117)
.L233:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:210: 				stat = Stat::Padding;
	ldi r25,lo8(8)	 ; ,
	mov r10,r25	 ;  stat,
	mov r11,__zero_reg__	 ;  stat
	rjmp .L105	 ; 
.L108:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:163: 			if (ch == '%') {
	cpi r17,lo8(37)	 ;  ch,
	brne .+2	 ; 
	rjmp .L230	 ; 
.L110:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:171: 			PutChar(ch);
	mov r22,r17	 ; , ch
	movw r24,r12	 ; , this
	call _ZN4avrt6Stream7PutCharEc	 ; 
.L107:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:364: 			ch = format.Next();
	movw r26,r2	 ; , format
	ld r30,X+	 ;  format_35(D)->_vptr.StringPtr
	ld r31,X	 ;  format_35(D)->_vptr.StringPtr
	ld __tmp_reg__,Z+	 ;  *_29
	ld r31,Z	 ;  *_29, *_29
	mov r30,__tmp_reg__	 ;  *_29
	movw r24,r2	 ; , format
	icall
	mov r17,r24	 ;  ch,
	rjmp .L105	 ; 
.L111:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:175: 			if (ch == '%') {
	cpi r17,lo8(37)	 ;  ch,
	brne .L118	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:176: 				PutChar(ch);
	ldi r22,lo8(37)	 ; ,
	movw r24,r12	 ; , this
	call _ZN4avrt6Stream7PutCharEc	 ; 
.L311:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:319: 				stat = Stat::Start;
	mov r11,__zero_reg__	 ;  stat
	mov r10,__zero_reg__	 ;  stat
	rjmp .L107	 ; 
.L118:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:179: 				formatterFlags.Initialize();
	movw r24,r28	 ; ,
	adiw r24,41	 ; ,
	call _ZN4avrt14FormatterFlags10InitializeEv	 ; 
.L270:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:356: 				stat = Stat::Flags;
	ldi r24,lo8(3)	 ; ,
	mov r10,r24	 ;  stat,
	mov r11,__zero_reg__	 ;  stat
	rjmp .L105	 ; 
.L112:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:186: 			if (ch == '#') {
	cpi r17,lo8(35)	 ;  ch,
	brne .L120	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:187: 				formatterFlags.sharpFlag = true;
	ldi r24,lo8(1)	 ;  tmp338,
	std Y+43,r24	 ;  formatterFlags.sharpFlag, tmp338
	rjmp .L107	 ; 
.L120:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:188: 			} else if (ch == '0') {
	cpi r17,lo8(48)	 ;  ch,
	brne .L121	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:189: 				if (!formatterFlags.leftAlignFlag) {
	ldd r24,Y+42	 ;  formatterFlags.leftAlignFlag, formatterFlags.leftAlignFlag
	cpse r24,__zero_reg__	 ;  formatterFlags.leftAlignFlag,
	rjmp .L107	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:190: 					formatterFlags.charPadding = '0';
	std Y+50,r17	 ;  formatterFlags.charPadding, ch
	rjmp .L107	 ; 
.L121:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:192: 			} else if (ch == '-') {
	cpi r17,lo8(45)	 ;  ch,
	brne .L122	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:193: 				formatterFlags.leftAlignFlag = true;
	ldi r24,lo8(1)	 ;  tmp341,
	std Y+42,r24	 ;  formatterFlags.leftAlignFlag, tmp341
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:194: 				formatterFlags.charPadding = ' ';
	ldi r24,lo8(32)	 ;  tmp342,
	std Y+50,r24	 ;  formatterFlags.charPadding, tmp342
	rjmp .L107	 ; 
.L122:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:195: 			} else if (ch == ' ') {
	cpi r17,lo8(32)	 ;  ch,
	brne .L123	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:196: 				if (formatterFlags.plusMode == FormatterFlags::PlusMode::None) {
	ldd r24,Y+48	 ;  formatterFlags.plusMode, formatterFlags.plusMode
	ldd r25,Y+49	 ;  formatterFlags.plusMode, formatterFlags.plusMode
	or r24,r25	 ;  formatterFlags.plusMode
	brne .L231	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:197: 					formatterFlags.plusMode = FormatterFlags::PlusMode::Space;
	ldi r24,lo8(1)	 ;  tmp344,
	ldi r25,0	 ; 
	std Y+49,r25	 ;  formatterFlags.plusMode, tmp344
	std Y+48,r24	 ;  formatterFlags.plusMode, tmp344
.L231:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:199: 				stat = Stat::FlagsAfterWhite;
	ldi r18,lo8(4)	 ; ,
	mov r10,r18	 ;  stat,
	mov r11,__zero_reg__	 ;  stat
	rjmp .L107	 ; 
.L123:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:200: 			} else if (ch == '+') {
	cpi r17,lo8(43)	 ;  ch,
	brne .L124	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:201: 				formatterFlags.plusMode = FormatterFlags::PlusMode::Plus;
	ldi r24,lo8(2)	 ;  tmp345,
	ldi r25,0	 ; 
	std Y+49,r25	 ;  formatterFlags.plusMode, tmp345
	std Y+48,r24	 ;  formatterFlags.plusMode, tmp345
	rjmp .L107	 ; 
.L124:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:202: 			} else if (ch == '*') {
	cpi r17,lo8(42)	 ;  ch,
	brne .L125	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:203: 				formatterFlags.fieldMinWidth = va_arg(ap, int);
	movw r18,r14	 ;  D.4587, ap
	subi r18,-2	 ;  D.4587,
	sbci r19,-1	 ;  D.4587,
	movw r30,r14	 ; , ap
	ld r24,Z	 ;  _5, MEM[(int *)ap_650]
	ldd r25,Z+1	 ;  _5, MEM[(int *)ap_650]
	std Y+45,r25	 ;  formatterFlags.fieldMinWidth, _5
	std Y+44,r24	 ;  formatterFlags.fieldMinWidth, _5
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:204: 				if (formatterFlags.fieldMinWidth < 0) {
	sbrs r25,7	 ;  _5,
	rjmp .L232	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:205: 					formatterFlags.leftAlignFlag = true;
	ldi r20,lo8(1)	 ;  tmp346,
	std Y+42,r20	 ;  formatterFlags.leftAlignFlag, tmp346
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:206: 					formatterFlags.fieldMinWidth = -formatterFlags.fieldMinWidth;
	neg r25	 ;  tmp347
	neg r24	 ;  tmp347
	sbc r25,__zero_reg__	 ;  tmp347
	std Y+45,r25	 ;  formatterFlags.fieldMinWidth, tmp347
	std Y+44,r24	 ;  formatterFlags.fieldMinWidth, tmp347
.L232:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:203: 				formatterFlags.fieldMinWidth = va_arg(ap, int);
	movw r14,r18	 ;  ap, D.4587
	rjmp .L107	 ; 
.L125:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:208: 			} else if ('0' < ch && ch <= '9') {
	ldi r24,lo8(-49)	 ;  tmp348,
	add r24,r17	 ;  tmp348, ch
	cpi r24,lo8(9)	 ;  tmp348,
	brsh .+2	 ; 
	rjmp .L233	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:211: 			} else if (ch == '.') {
	cpi r17,lo8(46)	 ;  ch,
	brne .+2	 ; 
	rjmp .L234	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:213: 			} else if (ch == 'l') {
	cpi r17,lo8(108)	 ;  ch,
	brne .+2	 ; 
	rjmp .L235	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:221: 			} else if (ch == 'd' || ch == 'i') {
	cpi r17,lo8(100)	 ;  ch,
	breq .L126	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:221: 			} else if (ch == 'd' || ch == 'i') {
	cpi r17,lo8(105)	 ;  ch,
	breq .+2	 ; 
	rjmp .L127	 ; 
.L126:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:222: 				int num = va_arg(ap, int);
	movw r10,r14	 ;  D.4589, ap
	ldi r31,2	 ; ,
	add r10,r31	 ;  D.4589,
	adc r11,__zero_reg__	 ;  D.4589
	movw r26,r14	 ; , ap
	ld r24,X+	 ;  num
	ld r25,X	 ;  num
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:434: 	*p = '\0';
	std Y+40,__zero_reg__	 ;  MEM[(char *)&buff + 39B],
	ldd r18,Y+46	 ;  iftmp.34_153, formatterFlags.precision
	ldd r19,Y+47	 ;  iftmp.34_153, formatterFlags.precision
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:435: 	if (num == 0) {
	sbiw r24,0	 ;  num,
	brne .L128	 ; ,
.L325:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:485: 	char* p = buff + size - 1;
	movw r30,r28	 ;  p,
	adiw r30,40	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:488: 		if (precision == 0) {
	or r18,r19	 ;  iftmp.34_208
	breq .L147	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:492: 			*p = '0';
	std Y+39,r5	 ;  MEM[(char *)&buff + 38B], tmp620
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:491: 			p--;
	movw r30,r28	 ;  p,
	adiw r30,39	 ;  p,
	rjmp .L147	 ; 
.L128:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:442: 	} else if (num > 0) {
	cp __zero_reg__,r24	 ;  num
	cpc __zero_reg__,r25	 ;  num
	brlt .+2	 ; 
	rjmp .L130	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:443: 		int nCols = 0;
	mov r15,__zero_reg__	 ;  nCols
	mov r14,__zero_reg__	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:433: 	char* p = buff + size - 1;
	movw r30,r28	 ;  p,
	adiw r30,40	 ;  p,
.L131:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:446: 			*p = (num % 10) + '0';
	ldi r22,lo8(10)	 ; ,
	ldi r23,0	 ; 
	call __divmodhi4
	subi r24,lo8(-(48))	 ;  tmp358,
	st -Z,r24	 ;  MEM[base: p_141, offset: 0B], tmp358
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:444: 		for ( ; num != 0; num /= 10, nCols++) {
	movw r24,r22	 ; ,
	ldi r27,-1	 ; ,
	sub r14,r27	 ;  nCols,
	sbc r15,r27	 ;  nCols,
	sbiw r24,0	 ;  num,
	brne .L131	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:448: 		if (nCols < precision) {
	cp r14,r18	 ;  nCols, iftmp.34_153
	cpc r15,r19	 ;  nCols, iftmp.34_153
	brge .L132	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	cpi r18,38	 ;  iftmp.34_153,
	cpc r19,__zero_reg__	 ;  iftmp.34_153
	brlt .L133	 ; ,
	ldi r18,lo8(38)	 ;  iftmp.34_153,
	ldi r19,0	 ;  iftmp.34_153
.L133:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:449: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 2) - nCols;
	sub r18,r14	 ;  cnt, nCols
	sbc r19,r15	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:445: 			p--;
	movw r26,r30	 ;  p, p
	movw r24,r18	 ;  tmp367, cnt
	sub r24,r30	 ;  tmp367, p
	sbc r25,r31	 ; , p
.L136:
	movw r20,r26	 ;  _111, p
	add r20,r24	 ;  _111, tmp367
	adc r21,r25	 ;  _111,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:450: 			while (cnt-- > 0) {
	cp __zero_reg__,r20	 ;  _111
	cpc __zero_reg__,r21	 ;  _111
	brlt .L134	 ; ,
	sbrs r19,7	 ;  cnt,
	rjmp .L135	 ; 
	ldi r19,0	 ;  cnt
	ldi r18,0	 ;  cnt
.L135:
	sub r30,r18	 ;  p, cnt
	sbc r31,r19	 ;  p, cnt
.L132:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:455: 		if (plusMode == PlusMode::Space) {
	ldd r24,Y+48	 ;  _159, formatterFlags.plusMode
	ldd r25,Y+49	 ;  _159, formatterFlags.plusMode
	cpi r24,1	 ;  _159,
	cpc r25,__zero_reg__	 ;  _159
	brne .L137	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:457: 			*p = ' ';
	ldi r24,lo8(32)	 ;  tmp372,
.L308:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:477: 		*p = '-';
	st -Z,r24	 ; , tmp390
.L147:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:229: 				PutAlignedString(formatterFlags, p);
	ldi r18,lo8(-1)	 ; ,
	ldi r19,lo8(-1)	 ; ,
	movw r20,r30	 ; , p
.L312:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:318: 				PutAlignedString(formatterFlags, p);
	movw r22,r28	 ; ,
	subi r22,-41	 ; ,
	sbci r23,-1	 ; ,
	movw r24,r12	 ; , this
	call _ZN4avrt6Stream16PutAlignedStringERKNS_14FormatterFlagsEPKci	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:315: 				uint32_t num = va_arg(ap, uint32_t);
	movw r14,r10	 ;  ap, D.4611
	rjmp .L311	 ; 
.L134:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:452: 				*p = '0';
	st -X,r16	 ;  MEM[base: p_158, offset: 0B], tmp619
	rjmp .L136	 ; 
.L137:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:458: 		} else if (plusMode == PlusMode::Plus) {
	sbiw r24,2	 ;  _159,
	brne .L147	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:460: 			*p = '+';
	ldi r24,lo8(43)	 ;  tmp375,
	rjmp .L308	 ; 
.L130:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:464: 		T_Unsigned numNeg = -num;
	neg r25	 ;  numNeg
	neg r24	 ;  numNeg
	sbc r25,__zero_reg__	 ;  numNeg
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:463: 		int nCols = 0;
	mov r15,__zero_reg__	 ;  nCols
	mov r14,__zero_reg__	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:433: 	char* p = buff + size - 1;
	movw r20,r28	 ;  p,
	subi r20,-40	 ;  p,
	sbci r21,-1	 ;  p,
.L139:
	movw r30,r20	 ;  p, p
	sbiw r30,1	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:465: 		for ( ; numNeg != 0; numNeg /= 10, nCols++) {
	sbiw r24,0	 ;  numNeg,
	breq .L138	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:467: 			*p = (numNeg % 10) + '0';
	ldi r22,lo8(10)	 ; ,
	ldi r23,0	 ; 
	call __udivmodhi4
	subi r24,lo8(-(48))	 ;  tmp380,
	st Z,r24	 ;  MEM[base: _603, offset: 0B], tmp380
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:465: 		for ( ; numNeg != 0; numNeg /= 10, nCols++) {
	movw r24,r22	 ; ,
	ldi r20,-1	 ; ,
	sub r14,r20	 ;  nCols,
	sbc r15,r20	 ;  nCols,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:466: 			p--;
	movw r20,r30	 ;  p, p
	rjmp .L139	 ; 
.L138:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:469: 		if (nCols < precision) {
	cp r14,r18	 ;  nCols, iftmp.34_153
	cpc r15,r19	 ;  nCols, iftmp.34_153
	brge .L140	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	cpi r18,38	 ;  iftmp.34_153,
	cpc r19,__zero_reg__	 ;  iftmp.34_153
	brlt .L141	 ; ,
	ldi r18,lo8(38)	 ;  iftmp.34_153,
	ldi r19,0	 ;  iftmp.34_153
.L141:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:470: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 2) - nCols;
	sub r18,r14	 ;  cnt, nCols
	sbc r19,r15	 ;  cnt, nCols
	movw r30,r20	 ;  ivtmp.325, p
	movw r24,r18	 ;  tmp385, cnt
	sub r24,r20	 ;  tmp385, p
	sbc r25,r21	 ; , p
.L144:
	movw r22,r24	 ;  _88, tmp385
	add r22,r30	 ;  _88, ivtmp.325
	adc r23,r31	 ;  _88, ivtmp.325
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:471: 			while (cnt-- > 0) {
	cp __zero_reg__,r22	 ;  _88
	cpc __zero_reg__,r23	 ;  _88
	brlt .L142	 ; ,
	sbrs r19,7	 ;  cnt,
	rjmp .L143	 ; 
	ldi r19,0	 ;  cnt
	ldi r18,0	 ;  cnt
.L143:
	sub r20,r18	 ;  p, cnt
	sbc r21,r19	 ;  p, cnt
.L140:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:476: 		p--;
	movw r30,r20	 ;  p, p
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:477: 		*p = '-';
	ldi r24,lo8(45)	 ;  tmp390,
	rjmp .L308	 ; 
.L142:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:473: 				*p = '0';
	st -Z,r16	 ;  MEM[base: _82, offset: 0B], tmp619
	rjmp .L144	 ; 
.L127:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:226: 			} else if (ch == 'u') {
	cpi r17,lo8(117)	 ;  ch,
	brne .L145	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:227: 				unsigned int num = va_arg(ap, unsigned int);
	movw r10,r14	 ;  D.4591, ap
	ldi r24,2	 ; ,
	add r10,r24	 ;  D.4591,
	adc r11,__zero_reg__	 ;  D.4591
	movw r26,r14	 ; , ap
	ld r24,X+	 ;  num
	ld r25,X	 ;  num
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:486: 	*p = '\0';
	std Y+40,__zero_reg__	 ;  MEM[(char *)&buff + 39B],
	ldd r18,Y+46	 ;  iftmp.34_208, formatterFlags.precision
	ldd r19,Y+47	 ;  iftmp.34_208, formatterFlags.precision
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:487: 	if (num == 0) {
	sbiw r24,0	 ;  num,
	brne .+2	 ; 
	rjmp .L325	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:495: 		int nCols = 0;
	mov r15,__zero_reg__	 ;  nCols
	mov r14,__zero_reg__	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:485: 	char* p = buff + size - 1;
	movw r30,r28	 ;  p,
	adiw r30,40	 ;  p,
.L146:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:498: 			*p = (num % 10) + '0';
	ldi r22,lo8(10)	 ; ,
	ldi r23,0	 ; 
	call __udivmodhi4
	subi r24,lo8(-(48))	 ;  tmp397,
	st -Z,r24	 ;  MEM[base: p_196, offset: 0B], tmp397
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:496: 		for ( ; num != 0; num /= 10, nCols++) {
	movw r24,r22	 ; ,
	ldi r27,-1	 ; ,
	sub r14,r27	 ;  nCols,
	sbc r15,r27	 ;  nCols,
	sbiw r24,0	 ;  num,
	brne .L146	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:500: 		if (nCols < precision) {
	cp r14,r18	 ;  nCols, iftmp.34_208
	cpc r15,r19	 ;  nCols, iftmp.34_208
	brlt .+2	 ; 
	rjmp .L147	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	cpi r18,39	 ;  iftmp.34_208,
	cpc r19,__zero_reg__	 ;  iftmp.34_208
	brlt .L148	 ; ,
	ldi r18,lo8(39)	 ;  iftmp.34_208,
	ldi r19,0	 ;  iftmp.34_208
.L148:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:501: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 1) - nCols;
	sub r18,r14	 ;  cnt, nCols
	sbc r19,r15	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:497: 			p--;
	movw r26,r30	 ;  p, p
	movw r24,r18	 ;  tmp402, cnt
	sub r24,r30	 ;  tmp402, p
	sbc r25,r31	 ; , p
.L151:
	movw r20,r26	 ;  _52, p
	add r20,r24	 ;  _52, tmp402
	adc r21,r25	 ;  _52,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:502: 			while (cnt-- > 0) {
	cp __zero_reg__,r20	 ;  _52
	cpc __zero_reg__,r21	 ;  _52
	brlt .L149	 ; ,
	sbrs r19,7	 ;  cnt,
	rjmp .L150	 ; 
	ldi r19,0	 ;  cnt
	ldi r18,0	 ;  cnt
.L150:
	sub r30,r18	 ;  p, cnt
	sbc r31,r19	 ;  p, cnt
	rjmp .L147	 ; 
.L149:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:504: 				*p = '0';
	st -X,r16	 ;  MEM[base: p_213, offset: 0B], tmp619
	rjmp .L151	 ; 
.L145:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:231: 			} else if (ch == 'b') {
	cpi r17,lo8(98)	 ;  ch,
	breq .+2	 ; 
	rjmp .L152	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:232: 				unsigned int num = va_arg(ap, unsigned int);
	movw r10,r14	 ;  D.4593, ap
	ldi r30,2	 ; ,
	add r10,r30	 ;  D.4593,
	adc r11,__zero_reg__	 ;  D.4593
	movw r26,r14	 ; , ap
	ld r18,X+	 ;  num
	ld r19,X	 ;  num
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:515: 	*p = '\0';
	std Y+40,__zero_reg__	 ;  MEM[(char *)&buff + 39B],
	ldd r24,Y+46	 ;  iftmp.34_234, formatterFlags.precision
	ldd r25,Y+47	 ;  iftmp.34_234, formatterFlags.precision
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:516: 	if (num == 0) {
	cp r18,__zero_reg__	 ;  num
	cpc r19,__zero_reg__	 ;  num
	brne .L242	 ; ,
.L320:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:582: 	char* p = buff + size - 1;
	movw r20,r28	 ;  p,
	subi r20,-40	 ;  p,
	sbci r21,-1	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:586: 		if (precision == 0) {
	or r24,r25	 ;  pretmp_63
	brne .+2	 ; 
	rjmp .L219	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:590: 			*p = '0';
	std Y+39,r5	 ;  MEM[(char *)&buff + 38B], tmp620
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:589: 			p--;
	movw r20,r28	 ;  p,
	subi r20,-39	 ;  p,
	sbci r21,-1	 ;  p,
	rjmp .L219	 ; 
.L242:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:524: 		int nCols = 0;
	ldi r23,0	 ;  nCols
	ldi r22,0	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:514: 	char* p = buff + size - 1;
	movw r20,r28	 ;  p,
	subi r20,-40	 ;  p,
	sbci r21,-1	 ;  p,
.L153:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:527: 			*p = '0' + (num & 0x1);
	mov r30,r18	 ;  tmp407,
	andi r30,lo8(1)	 ;  tmp407,
	subi r30,lo8(-(48))	 ;  tmp408,
	movw r26,r20	 ; , p
	st -X,r30	 ;  MEM[base: p_222, offset: 0B], tmp408
	movw r20,r26	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:525: 		for ( ; num != 0; num >>= 1, nCols++) {
	lsr r19	 ;  num
	ror r18	 ;  num
	subi r22,-1	 ;  nCols,
	sbci r23,-1	 ;  nCols,
	cp r18,__zero_reg__	 ;  num
	cpc r19,__zero_reg__	 ;  num
	brne .L153	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:529: 		if (nCols < precision) {
	cp r22,r24	 ;  nCols, iftmp.34_234
	cpc r23,r25	 ;  nCols, iftmp.34_234
	brge .L155	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	cpi r24,39	 ;  iftmp.34_234,
	cpc r25,__zero_reg__	 ;  iftmp.34_234
	brlt .L156	 ; ,
	ldi r24,lo8(39)	 ;  iftmp.34_234,
	ldi r25,0	 ;  iftmp.34_234
.L156:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:530: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 1) - nCols;
	sub r24,r22	 ;  cnt, nCols
	sbc r25,r23	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:526: 			p--;
	movw r30,r20	 ;  p, p
	movw r18,r24	 ;  tmp409, cnt
	sub r18,r20	 ;  tmp409, p
	sbc r19,r21	 ; , p
.L159:
	movw r22,r30	 ;  _427, p
	add r22,r18	 ;  _427, tmp409
	adc r23,r19	 ;  _427,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:531: 			while (cnt-- > 0) {
	cp __zero_reg__,r22	 ;  _427
	cpc __zero_reg__,r23	 ;  _427
	brlt .L157	 ; ,
.L318:
	sbrs r25,7	 ;  cnt,
	rjmp .L214	 ; 
	ldi r25,0	 ;  cnt
	ldi r24,0	 ;  cnt
.L214:
	sub r20,r24	 ;  p, cnt
	sbc r21,r25	 ;  p, cnt
	rjmp .L219	 ; 
.L157:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:533: 				*p = '0';
	st -Z,r16	 ;  MEM[base: p_239, offset: 0B], tmp619
	rjmp .L159	 ; 
.L155:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:535: 		} else if (sharpFlag) {
	ldd r24,Y+43	 ;  formatterFlags.sharpFlag, formatterFlags.sharpFlag
	tst r24	 ;  formatterFlags.sharpFlag
	brne .+2	 ; 
	rjmp .L219	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:537: 			*p = 'b';
	movw r30,r20	 ;  tmp414, p
	sbiw r30,1	 ;  tmp414,
	ldi r24,lo8(98)	 ;  tmp415,
	st Z,r24	 ;  MEM[(char *)p_222 + 65535B], tmp415
.L315:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:608: 			p--;
	subi r20,2	 ;  p,
	sbc r21,__zero_reg__	 ;  p
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:609: 			*p = '0';
	movw r30,r20	 ; , p
	st Z,r16	 ; , tmp619
	rjmp .L219	 ; 
.L152:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:236: 			} else if (ch == 'o') {
	cpi r17,lo8(111)	 ;  ch,
	breq .+2	 ; 
	rjmp .L160	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:237: 				unsigned int num = va_arg(ap, unsigned int);
	movw r10,r14	 ;  D.4595, ap
	ldi r31,2	 ; ,
	add r10,r31	 ;  D.4595,
	adc r11,__zero_reg__	 ;  D.4595
	movw r26,r14	 ; , ap
	ld r18,X+	 ;  num
	ld r19,X	 ;  num
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:549: 	*p = '\0';
	std Y+40,__zero_reg__	 ;  MEM[(char *)&buff + 39B],
	ldd r24,Y+46	 ;  iftmp.34_262, formatterFlags.precision
	ldd r25,Y+47	 ;  iftmp.34_262, formatterFlags.precision
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:550: 	if (num == 0) {
	cp r18,__zero_reg__	 ;  num
	cpc r19,__zero_reg__	 ;  num
	brne .+2	 ; 
	rjmp .L320	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:558: 		int nCols = 0;
	ldi r23,0	 ;  nCols
	ldi r22,0	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:548: 	char* p = buff + size - 1;
	movw r30,r28	 ;  p,
	adiw r30,40	 ;  p,
.L161:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:561: 			*p = '0' + (num & 0x7);
	mov r26,r18	 ;  tmp421,
	andi r26,lo8(7)	 ;  tmp421,
	ldi r17,lo8(48)	 ;  tmp422,
	add r17,r26	 ;  tmp422, tmp421
	movw r26,r30	 ; , p
	st -X,r17	 ;  MEM[base: p_250, offset: 0B], tmp422
	movw r20,r26	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:559: 		for ( ; num != 0; num >>= 3, nCols++) {
	ldi r26,3	 ; ,
	1:
	lsr r19	 ;  num
	ror r18	 ;  num
	dec r26	 ; 
	brne 1b
	subi r22,-1	 ;  nCols,
	sbci r23,-1	 ;  nCols,
	cp r18,__zero_reg__	 ;  num
	cpc r19,__zero_reg__	 ;  num
	brne .L247	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:563: 		if (nCols < precision) {
	cp r22,r24	 ;  nCols, iftmp.34_262
	cpc r23,r25	 ;  nCols, iftmp.34_262
	brge .L163	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	cpi r24,39	 ;  iftmp.34_262,
	cpc r25,__zero_reg__	 ;  iftmp.34_262
	brlt .L164	 ; ,
	ldi r24,lo8(39)	 ;  iftmp.34_262,
	ldi r25,0	 ;  iftmp.34_262
.L164:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:564: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 1) - nCols;
	sub r24,r22	 ;  cnt, nCols
	sbc r25,r23	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:560: 			p--;
	movw r30,r20	 ;  p, p
	movw r18,r24	 ;  tmp423, cnt
	sub r18,r20	 ;  tmp423, p
	sbc r19,r21	 ; , p
.L167:
	movw r22,r30	 ;  _341, p
	add r22,r18	 ;  _341, tmp423
	adc r23,r19	 ;  _341,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:565: 			while (cnt-- > 0) {
	cp __zero_reg__,r22	 ;  _341
	cpc __zero_reg__,r23	 ;  _341
	brlt .+2	 ; 
	rjmp .L318	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:567: 				*p = '0';
	st -Z,r16	 ;  MEM[base: p_267, offset: 0B], tmp619
	rjmp .L167	 ; 
.L247:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:560: 			p--;
	movw r30,r20	 ;  p, p
	rjmp .L161	 ; 
.L163:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:569: 		} else if (sharpFlag) {
	ldd r24,Y+43	 ;  formatterFlags.sharpFlag, formatterFlags.sharpFlag
	tst r24	 ;  formatterFlags.sharpFlag
	brne .+2	 ; 
	rjmp .L219	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:571: 			*p = '0';
	subi r20,1	 ;  tmp428,
	sbc r21,__zero_reg__	 ; 
	movw r26,r20	 ; , tmp428
	st X,r16	 ;  MEM[(char *)p_250 + 65535B], tmp619
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:570: 			p--;
	movw r20,r30	 ;  p, p
.L314:
	subi r20,2	 ;  p,
	sbc r21,__zero_reg__	 ;  p
	rjmp .L219	 ; 
.L160:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:241: 			} else if (ch == 'x' || ch == 'X') {
	mov r24,r17	 ;  _139, ch
	andi r24,lo8(-33)	 ;  _139,
	cpi r24,lo8(88)	 ;  _139,
	brne .L168	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:242: 				unsigned int num = va_arg(ap, unsigned int);
	movw r10,r14	 ;  D.4597, ap
	ldi r27,2	 ; ,
	add r10,r27	 ;  D.4597,
	adc r11,__zero_reg__	 ;  D.4597
	movw r30,r14	 ; , ap
	ld r22,Z	 ;  num, MEM[(unsigned int *)ap_650]
	ldd r23,Z+1	 ;  num, MEM[(unsigned int *)ap_650]
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:243: 				formatterFlags.upperCaseFlag = (ch == 'X');
	ldi r24,lo8(1)	 ;  tmp431,
	cpi r17,lo8(88)	 ;  ch,
	breq .L169	 ; ,
	ldi r24,0	 ;  tmp431
.L169:
	std Y+41,r24	 ;  formatterFlags.upperCaseFlag, tmp431
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:244: 				const char* p = formatterFlags.FormatNumber_x(num, buff, sizeof(buff));
	ldi r18,lo8(40)	 ; ,
	ldi r19,0	 ; 
	movw r20,r28	 ; ,
	subi r20,-1	 ; ,
	sbci r21,-1	 ; ,
	movw r24,r28	 ; ,
	adiw r24,41	 ; ,
	call _ZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_Pcj	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:245: 				PutAlignedString(formatterFlags, p);
	ldi r18,lo8(-1)	 ; ,
	ldi r19,lo8(-1)	 ; ,
	movw r20,r24	 ; , p
	rjmp .L312	 ; 
.L168:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:247: 			} else if (ch == 'p') {
	cpi r17,lo8(112)	 ;  ch,
	brne .L170	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:248: 				unsigned int num = va_arg(ap, unsigned int);
	movw r10,r14	 ;  D.4599, ap
	ldi r31,2	 ; ,
	add r10,r31	 ;  D.4599,
	adc r11,__zero_reg__	 ;  D.4599
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:249: 				const char* p = formatterFlags.FormatNumber_x(num, buff, sizeof(buff));
	movw r26,r14	 ; , ap
	ld r22,X+	 ;  MEM[(unsigned int *)ap_650]
	ld r23,X	 ;  MEM[(unsigned int *)ap_650]
	ldi r18,lo8(40)	 ; ,
	ldi r19,0	 ; 
	movw r20,r28	 ; ,
	subi r20,-1	 ; ,
	sbci r21,-1	 ; ,
	movw r24,r28	 ; ,
	adiw r24,41	 ; ,
	call _ZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_Pcj	 ; 
	movw r14,r24	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:250: 				Print("0x");
	ldi r22,lo8(.LC0)	 ; ,
	ldi r23,hi8(.LC0)	 ; ,
	movw r24,r12	 ; , this
	call _ZN4avrt6Stream5PrintEPKc	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:251: 				PutAlignedString(formatterFlags, p);
	ldi r18,lo8(-1)	 ; ,
	ldi r19,lo8(-1)	 ; ,
	movw r20,r14	 ; , p
	rjmp .L312	 ; 
.L170:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:253: 			} else if (ch == 'e' || ch == 'E') {
	subi r24,lo8(-(-69))	 ;  tmp437,
	cpi r24,lo8(3)	 ;  tmp437,
	brsh .L171	 ; ,
.L173:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:254: 				float num = va_arg(ap, float);
	call abort	 ; 
.L171:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:270: 			} else if (ch == 's') {
	cpi r17,lo8(115)	 ;  ch,
	brne .L172	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:271: 				const char* str = va_arg(ap, const char*);
	movw r10,r14	 ;  D.4601, ap
	ldi r27,2	 ; ,
	add r10,r27	 ;  D.4601,
	adc r11,__zero_reg__	 ;  D.4601
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:272: 				PutAlignedString(formatterFlags, str);
	movw r30,r14	 ; , ap
	ld r20,Z	 ;  MEM[(const char * *)ap_650], MEM[(const char * *)ap_650]
	ldd r21,Z+1	 ;  MEM[(const char * *)ap_650], MEM[(const char * *)ap_650]
.L219:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:318: 				PutAlignedString(formatterFlags, p);
	ldi r18,lo8(-1)	 ; ,
	ldi r19,lo8(-1)	 ; ,
	rjmp .L312	 ; 
.L172:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:274: 			} else if (ch == 'c') {
	cpi r17,lo8(99)	 ;  ch,
	breq .L173	 ; ,
.L263:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:279: 				return false;
	ldi r24,0	 ;  <retval>
	rjmp .L104	 ; 
.L113:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:284: 			if (ch == ' ') {
	cpi r17,lo8(32)	 ;  ch,
	breq .+2	 ; 
	rjmp .L270	 ; 
	rjmp .L263	 ; 
.L114:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:294: 			if (ch == 'd' || ch == 'i') {
	cpi r17,lo8(100)	 ;  ch,
	breq .L174	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:294: 			if (ch == 'd' || ch == 'i') {
	cpi r17,lo8(105)	 ;  ch,
	breq .+2	 ; 
	rjmp .L175	 ; 
.L174:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:295: 				int32_t num = va_arg(ap, int32_t);
	movw r18,r14	 ; , ap
	subi r18,-4	 ; ,
	sbci r19,-1	 ; ,
	std Y+52,r19	 ;  %sfp,
	std Y+51,r18	 ;  %sfp,
	movw r26,r14	 ; , ap
	ld r22,X+	 ;  num
	ld r23,X+	 ;  num
	ld r24,X+	 ;  num
	ld r25,X	 ;  num
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:434: 	*p = '\0';
	std Y+40,__zero_reg__	 ;  MEM[(char *)&buff + 39B],
	ldd r10,Y+46	 ;  pretmp_72, formatterFlags.precision
	ldd r11,Y+47	 ;  pretmp_72, formatterFlags.precision
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:435: 	if (num == 0) {
	cp r22,__zero_reg__	 ;  num
	cpc r23,__zero_reg__	 ;  num
	cpc r24,__zero_reg__	 ;  num
	cpc r25,__zero_reg__	 ;  num
	brne .L176	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:433: 	char* p = buff + size - 1;
	movw r14,r28	 ;  p,
	ldi r27,40	 ; ,
	add r14,r27	 ;  p,
	adc r15,__zero_reg__	 ;  p
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:436: 		if (precision == 0) {
	or r10,r11	 ;  pretmp_72
	breq .L177	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:440: 			*p = '0';
	std Y+39,r5	 ;  MEM[(char *)&buff + 38B], tmp620
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:439: 			p--;
	movw r14,r28	 ;  p,
	ldi r27,39	 ; ,
	add r14,r27	 ;  p,
	adc r15,__zero_reg__	 ;  p
.L177:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:297: 				PutAlignedString(formatterFlags, p);
	ldi r18,lo8(-1)	 ; ,
	ldi r19,lo8(-1)	 ; ,
	movw r20,r14	 ; , p
	movw r22,r28	 ; ,
	subi r22,-41	 ; ,
	sbci r23,-1	 ; ,
	movw r24,r12	 ; , this
	call _ZN4avrt6Stream16PutAlignedStringERKNS_14FormatterFlagsEPKci	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:295: 				int32_t num = va_arg(ap, int32_t);
	ldd r14,Y+51	 ;  ap, %sfp
	ldd r15,Y+52	 ;  ap, %sfp
	rjmp .L311	 ; 
.L176:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:442: 	} else if (num > 0) {
	cp __zero_reg__,r22	 ;  num
	cpc __zero_reg__,r23	 ;  num
	cpc __zero_reg__,r24	 ;  num
	cpc __zero_reg__,r25	 ;  num
	brlt .+2	 ; 
	rjmp .L178	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:443: 		int nCols = 0;
	mov r9,__zero_reg__	 ;  nCols
	mov r8,__zero_reg__	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:433: 	char* p = buff + size - 1;
	movw r30,r28	 ; ,
	adiw r30,40	 ; ,
	movw r14,r30	 ;  p,
.L179:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:446: 			*p = (num % 10) + '0';
	ldi r18,lo8(10)	 ; ,
	ldi r19,0	 ; 
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	call __divmodsi4
	subi r22,lo8(-(48))	 ;  tmp449,
	movw r26,r14	 ; , p
	st -X,r22	 ;  MEM[base: p_278, offset: 0B], tmp449
	movw r14,r26	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:444: 		for ( ; num != 0; num /= 10, nCols++) {
	movw r22,r18	 ; ,
	movw r24,r20	 ; ,
	ldi r27,-1	 ; ,
	sub r8,r27	 ;  nCols,
	sbc r9,r27	 ;  nCols,
	cp r22,__zero_reg__	 ;  num
	cpc r23,__zero_reg__	 ;  num
	cpc r24,__zero_reg__	 ;  num
	cpc r25,__zero_reg__	 ;  num
	brne .L179	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:448: 		if (nCols < precision) {
	cp r8,r10	 ;  nCols, pretmp_72
	cpc r9,r11	 ;  nCols, pretmp_72
	brge .L180	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	ldi r30,38	 ; ,
	cp r10,r30	 ;  pretmp_72,
	cpc r11,__zero_reg__	 ;  pretmp_72
	brlt .L181	 ; ,
	ldi r24,lo8(38)	 ; ,
	mov r10,r24	 ;  pretmp_72,
	mov r11,__zero_reg__	 ;  pretmp_72
.L181:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:449: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 2) - nCols;
	sub r10,r8	 ;  cnt, nCols
	sbc r11,r9	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:445: 			p--;
	movw r30,r14	 ;  p, p
	movw r24,r10	 ;  tmp458, cnt
	sub r24,r14	 ;  tmp458, p
	sbc r25,r15	 ; , p
.L184:
	movw r18,r30	 ;  _274, p
	add r18,r24	 ;  _274, tmp458
	adc r19,r25	 ;  _274,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:450: 			while (cnt-- > 0) {
	cp __zero_reg__,r18	 ;  _274
	cpc __zero_reg__,r19	 ;  _274
	brlt .L182	 ; ,
	sbrs r11,7	 ;  cnt,
	rjmp .L183	 ; 
	mov r11,__zero_reg__	 ;  cnt
	mov r10,__zero_reg__	 ;  cnt
.L183:
	sub r14,r10	 ;  p, cnt
	sbc r15,r11	 ;  p, cnt
.L180:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:455: 		if (plusMode == PlusMode::Space) {
	ldd r24,Y+48	 ;  _296, formatterFlags.plusMode
	ldd r25,Y+49	 ;  _296, formatterFlags.plusMode
	cpi r24,1	 ;  _296,
	cpc r25,__zero_reg__	 ;  _296
	brne .L185	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:456: 			p--;
	movw r30,r14	 ;  p, p
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:457: 			*p = ' ';
	ldi r24,lo8(32)	 ;  tmp463,
.L309:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:460: 			*p = '+';
	st -Z,r24	 ;  MEM[(char *)p_297 + 65535B], tmp466
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:459: 			p--;
	movw r14,r30	 ;  p, p
	rjmp .L177	 ; 
.L182:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:452: 				*p = '0';
	st -Z,r16	 ;  MEM[base: p_295, offset: 0B], tmp619
	rjmp .L184	 ; 
.L185:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:458: 		} else if (plusMode == PlusMode::Plus) {
	sbiw r24,2	 ;  _296,
	breq .+2	 ; 
	rjmp .L177	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:459: 			p--;
	movw r30,r14	 ;  p, p
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:460: 			*p = '+';
	ldi r24,lo8(43)	 ;  tmp466,
	rjmp .L309	 ; 
.L178:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:464: 		T_Unsigned numNeg = -num;
	com r25	 ;  numNeg
	com r24	 ;  numNeg
	com r23	 ;  numNeg
	neg r22	 ;  numNeg
	sbci r23,lo8(-1)	 ;  numNeg
	sbci r24,lo8(-1)	 ;  numNeg
	sbci r25,lo8(-1)	 ;  numNeg
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:463: 		int nCols = 0;
	mov r9,__zero_reg__	 ;  nCols
	mov r8,__zero_reg__	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:433: 	char* p = buff + size - 1;
	movw r18,r28	 ; ,
	subi r18,-40	 ; ,
	sbci r19,-1	 ; ,
	movw r14,r18	 ;  p,
.L187:
	movw r6,r14	 ;  p, p
	ldi r19,1	 ; ,
	sub r6,r19	 ;  p,
	sbc r7,__zero_reg__	 ;  p
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:465: 		for ( ; numNeg != 0; numNeg /= 10, nCols++) {
	cp r22,__zero_reg__	 ;  numNeg
	cpc r23,__zero_reg__	 ;  numNeg
	cpc r24,__zero_reg__	 ;  numNeg
	cpc r25,__zero_reg__	 ;  numNeg
	breq .L186	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:467: 			*p = (numNeg % 10) + '0';
	ldi r18,lo8(10)	 ; ,
	ldi r19,0	 ; 
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	call __udivmodsi4
	subi r22,lo8(-(48))	 ;  tmp471,
	movw r26,r6	 ; , p
	st X,r22	 ;  MEM[base: _354, offset: 0B], tmp471
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:465: 		for ( ; numNeg != 0; numNeg /= 10, nCols++) {
	movw r22,r18	 ; ,
	movw r24,r20	 ; ,
	ldi r27,-1	 ; ,
	sub r8,r27	 ;  nCols,
	sbc r9,r27	 ;  nCols,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:466: 			p--;
	movw r14,r6	 ;  p, p
	rjmp .L187	 ; 
.L186:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:469: 		if (nCols < precision) {
	cp r8,r10	 ;  nCols, pretmp_72
	cpc r9,r11	 ;  nCols, pretmp_72
	brge .L188	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	ldi r30,38	 ; ,
	cp r10,r30	 ;  pretmp_72,
	cpc r11,__zero_reg__	 ;  pretmp_72
	brlt .L189	 ; ,
	ldi r17,lo8(38)	 ; ,
	mov r10,r17	 ;  pretmp_72,
	mov r11,__zero_reg__	 ;  pretmp_72
.L189:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:470: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 2) - nCols;
	sub r10,r8	 ;  cnt, nCols
	sbc r11,r9	 ;  cnt, nCols
	movw r30,r14	 ;  ivtmp.435, p
	movw r24,r10	 ;  tmp476, cnt
	sub r24,r14	 ;  tmp476, p
	sbc r25,r15	 ; , p
.L192:
	movw r18,r24	 ;  _204, tmp476
	add r18,r30	 ;  _204, ivtmp.435
	adc r19,r31	 ;  _204, ivtmp.435
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:471: 			while (cnt-- > 0) {
	cp __zero_reg__,r18	 ;  _204
	cpc __zero_reg__,r19	 ;  _204
	brlt .L190	 ; ,
	sbrs r11,7	 ;  cnt,
	rjmp .L191	 ; 
	mov r11,__zero_reg__	 ;  cnt
	mov r10,__zero_reg__	 ;  cnt
.L191:
	sub r14,r10	 ;  p, cnt
	sbc r15,r11	 ;  p, cnt
.L188:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:477: 		*p = '-';
	ldi r24,lo8(45)	 ;  tmp481,
	movw r26,r14	 ; , p
	st -X,r24	 ;  MEM[(char *)p_322 + 65535B], tmp481
	movw r14,r26	 ;  p,
	rjmp .L177	 ; 
.L190:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:473: 				*p = '0';
	st -Z,r16	 ;  MEM[base: _192, offset: 0B], tmp619
	rjmp .L192	 ; 
.L175:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:299: 			} else if (ch == 'u') {
	cpi r17,lo8(117)	 ;  ch,
	breq .+2	 ; 
	rjmp .L193	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:300: 				uint32_t num = va_arg(ap, uint32_t);
	movw r8,r14	 ;  D.4605, ap
	ldi r30,4	 ; ,
	add r8,r30	 ;  D.4605,
	adc r9,__zero_reg__	 ;  D.4605
	movw r26,r14	 ; , ap
	ld r22,X+	 ;  num
	ld r23,X+	 ;  num
	ld r24,X+	 ;  num
	ld r25,X	 ;  num
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:486: 	*p = '\0';
	std Y+40,__zero_reg__	 ;  MEM[(char *)&buff + 39B],
	ldd r14,Y+46	 ;  iftmp.34_345, formatterFlags.precision
	ldd r15,Y+47	 ;  iftmp.34_345, formatterFlags.precision
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:487: 	if (num == 0) {
	cp r22,__zero_reg__	 ;  num
	cpc r23,__zero_reg__	 ;  num
	cpc r24,__zero_reg__	 ;  num
	cpc r25,__zero_reg__	 ;  num
	brne .L253	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:485: 	char* p = buff + size - 1;
	movw r10,r28	 ;  p,
	ldi r31,40	 ; ,
	add r10,r31	 ;  p,
	adc r11,__zero_reg__	 ;  p
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:488: 		if (precision == 0) {
	or r14,r15	 ;  iftmp.34_345
	breq .L195	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:492: 			*p = '0';
	std Y+39,r5	 ;  MEM[(char *)&buff + 38B], tmp620
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:491: 			p--;
	movw r10,r28	 ;  p,
	ldi r27,39	 ; ,
	add r10,r27	 ;  p,
	adc r11,__zero_reg__	 ;  p
.L195:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:302: 				PutAlignedString(formatterFlags, p);
	ldi r18,lo8(-1)	 ; ,
	ldi r19,lo8(-1)	 ; ,
	movw r20,r10	 ; , p
	movw r22,r28	 ; ,
	subi r22,-41	 ; ,
	sbci r23,-1	 ; ,
	movw r24,r12	 ; , this
	call _ZN4avrt6Stream16PutAlignedStringERKNS_14FormatterFlagsEPKci	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:300: 				uint32_t num = va_arg(ap, uint32_t);
	movw r14,r8	 ;  ap, D.4605
	rjmp .L311	 ; 
.L253:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:495: 		int nCols = 0;
	mov r7,__zero_reg__	 ;  nCols
	mov r6,__zero_reg__	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:485: 	char* p = buff + size - 1;
	movw r10,r28	 ;  p,
	ldi r30,40	 ; ,
	add r10,r30	 ;  p,
	adc r11,__zero_reg__	 ;  p
.L194:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:498: 			*p = (num % 10) + '0';
	ldi r18,lo8(10)	 ; ,
	ldi r19,0	 ; 
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	call __udivmodsi4
	subi r22,lo8(-(48))	 ;  tmp488,
	movw r26,r10	 ; , p
	st -X,r22	 ;  MEM[base: p_333, offset: 0B], tmp488
	movw r10,r26	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:496: 		for ( ; num != 0; num /= 10, nCols++) {
	movw r22,r18	 ; ,
	movw r24,r20	 ; ,
	ldi r27,-1	 ; ,
	sub r6,r27	 ;  nCols,
	sbc r7,r27	 ;  nCols,
	cp r22,__zero_reg__	 ;  num
	cpc r23,__zero_reg__	 ;  num
	cpc r24,__zero_reg__	 ;  num
	cpc r25,__zero_reg__	 ;  num
	brne .L194	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:500: 		if (nCols < precision) {
	cp r6,r14	 ;  nCols, iftmp.34_345
	cpc r7,r15	 ;  nCols, iftmp.34_345
	brge .L195	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	ldi r30,39	 ; ,
	cp r14,r30	 ;  iftmp.34_345,
	cpc r15,__zero_reg__	 ;  iftmp.34_345
	brlt .L196	 ; ,
	ldi r27,lo8(39)	 ; ,
	mov r14,r27	 ;  iftmp.34_345,
	mov r15,__zero_reg__	 ;  iftmp.34_345
.L196:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:501: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 1) - nCols;
	sub r14,r6	 ;  cnt, nCols
	sbc r15,r7	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:497: 			p--;
	movw r30,r10	 ;  p, p
	movw r24,r14	 ;  tmp493, cnt
	sub r24,r10	 ;  tmp493, p
	sbc r25,r11	 ; , p
.L199:
	movw r18,r30	 ;  _62, p
	add r18,r24	 ;  _62, tmp493
	adc r19,r25	 ;  _62,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:502: 			while (cnt-- > 0) {
	cp __zero_reg__,r18	 ;  _62
	cpc __zero_reg__,r19	 ;  _62
	brlt .L197	 ; ,
	sbrs r15,7	 ;  cnt,
	rjmp .L198	 ; 
	mov r15,__zero_reg__	 ;  cnt
	mov r14,__zero_reg__	 ;  cnt
.L198:
	sub r10,r14	 ;  p, cnt
	sbc r11,r15	 ;  p, cnt
	rjmp .L195	 ; 
.L197:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:504: 				*p = '0';
	st -Z,r16	 ;  MEM[base: p_350, offset: 0B], tmp619
	rjmp .L199	 ; 
.L193:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:304: 			} else if (ch == 'b') {
	cpi r17,lo8(98)	 ;  ch,
	breq .+2	 ; 
	rjmp .L200	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:305: 				uint32_t num = va_arg(ap, uint32_t);
	movw r10,r14	 ;  D.4607, ap
	ldi r18,4	 ; ,
	add r10,r18	 ;  D.4607,
	adc r11,__zero_reg__	 ;  D.4607
	movw r26,r14	 ; , ap
	ld r6,X+	 ;  num
	ld r7,X+	 ;  num
	ld r8,X+	 ;  num
	ld r9,X	 ;  num
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:515: 	*p = '\0';
	std Y+40,__zero_reg__	 ;  MEM[(char *)&buff + 39B],
	ldd r24,Y+46	 ;  iftmp.34_371, formatterFlags.precision
	ldd r25,Y+47	 ;  iftmp.34_371, formatterFlags.precision
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:516: 	if (num == 0) {
	cp r6,__zero_reg__	 ;  num
	cpc r7,__zero_reg__	 ;  num
	cpc r8,__zero_reg__	 ;  num
	cpc r9,__zero_reg__	 ;  num
	brne .+2	 ; 
	rjmp .L320	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:524: 		int nCols = 0;
	ldi r19,0	 ;  nCols
	ldi r18,0	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:514: 	char* p = buff + size - 1;
	movw r20,r28	 ;  p,
	subi r20,-40	 ;  p,
	sbci r21,-1	 ;  p,
.L201:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:527: 			*p = '0' + (num & 0x1);
	mov r22,r6	 ;  tmp498,
	andi r22,lo8(1)	 ;  tmp498,
	subi r22,lo8(-(48))	 ;  tmp499,
	movw r30,r20	 ; , p
	st -Z,r22	 ;  MEM[base: p_359, offset: 0B], tmp499
	movw r20,r30	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:525: 		for ( ; num != 0; num >>= 1, nCols++) {
	lsr r9	 ;  num
	ror r8	 ;  num
	ror r7	 ;  num
	ror r6	 ;  num
	subi r18,-1	 ;  nCols,
	sbci r19,-1	 ;  nCols,
	cp r6,__zero_reg__	 ;  num
	cpc r7,__zero_reg__	 ;  num
	cpc r8,__zero_reg__	 ;  num
	cpc r9,__zero_reg__	 ;  num
	brne .L201	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:529: 		if (nCols < precision) {
	cp r18,r24	 ;  nCols, iftmp.34_371
	cpc r19,r25	 ;  nCols, iftmp.34_371
	brge .L203	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	cpi r24,39	 ;  iftmp.34_371,
	cpc r25,__zero_reg__	 ;  iftmp.34_371
	brlt .L204	 ; ,
	ldi r24,lo8(39)	 ;  iftmp.34_371,
	ldi r25,0	 ;  iftmp.34_371
.L204:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:530: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 1) - nCols;
	sub r24,r18	 ;  cnt, nCols
	sbc r25,r19	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:526: 			p--;
	movw r30,r20	 ;  p, p
	movw r18,r24	 ;  tmp500, cnt
	sub r18,r20	 ;  tmp500, p
	sbc r19,r21	 ; , p
.L207:
	movw r22,r30	 ;  _605, p
	add r22,r18	 ;  _605, tmp500
	adc r23,r19	 ;  _605,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:531: 			while (cnt-- > 0) {
	cp __zero_reg__,r22	 ;  _605
	cpc __zero_reg__,r23	 ;  _605
	brlt .+2	 ; 
	rjmp .L318	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:533: 				*p = '0';
	st -Z,r16	 ;  MEM[base: p_376, offset: 0B], tmp619
	rjmp .L207	 ; 
.L203:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:535: 		} else if (sharpFlag) {
	ldd r24,Y+43	 ;  formatterFlags.sharpFlag, formatterFlags.sharpFlag
	tst r24	 ;  formatterFlags.sharpFlag
	brne .+2	 ; 
	rjmp .L219	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:537: 			*p = 'b';
	sbiw r30,1	 ;  tmp505,
	ldi r24,lo8(98)	 ;  tmp506,
	st Z,r24	 ;  MEM[(char *)p_359 + 65535B], tmp506
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:538: 			p--;
	subi r20,2	 ;  p,
	sbc r21,__zero_reg__	 ;  p
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:539: 			*p = '0';
	movw r26,r20	 ; , p
	st X,r16	 ;  MEM[(char *)p_359 + 65534B], tmp619
	rjmp .L219	 ; 
.L200:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:309: 			} else if (ch == 'o') {
	cpi r17,lo8(111)	 ;  ch,
	breq .+2	 ; 
	rjmp .L208	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:310: 				uint32_t num = va_arg(ap, uint32_t);
	movw r10,r14	 ;  D.4609, ap
	ldi r27,4	 ; ,
	add r10,r27	 ;  D.4609,
	adc r11,__zero_reg__	 ;  D.4609
	movw r30,r14	 ; , ap
	ld r6,Z	 ;  num, MEM[(uint32_t *)ap_650]
	ldd r7,Z+1	 ;  num, MEM[(uint32_t *)ap_650]
	ldd r8,Z+2	 ;  num, MEM[(uint32_t *)ap_650]
	ldd r9,Z+3	 ;  num, MEM[(uint32_t *)ap_650]
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:549: 	*p = '\0';
	std Y+40,__zero_reg__	 ;  MEM[(char *)&buff + 39B],
	ldd r24,Y+46	 ;  pretmp_353, formatterFlags.precision
	ldd r25,Y+47	 ;  pretmp_353, formatterFlags.precision
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:550: 	if (num == 0) {
	cp r6,__zero_reg__	 ;  num
	cpc r7,__zero_reg__	 ;  num
	cpc r8,__zero_reg__	 ;  num
	cpc r9,__zero_reg__	 ;  num
	brne .+2	 ; 
	rjmp .L320	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:558: 		int nCols = 0;
	ldi r19,0	 ;  nCols
	ldi r18,0	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:548: 	char* p = buff + size - 1;
	movw r22,r28	 ;  p,
	subi r22,-40	 ;  p,
	sbci r23,-1	 ;  p,
.L209:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:561: 			*p = '0' + (num & 0x7);
	mov r30,r6	 ;  tmp512,
	andi r30,lo8(7)	 ;  tmp512,
	subi r30,lo8(-(48))	 ;  tmp513,
	movw r26,r22	 ; , p
	st -X,r30	 ;  MEM[base: p_387, offset: 0B], tmp513
	movw r20,r26	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:559: 		for ( ; num != 0; num >>= 3, nCols++) {
	ldi r31,3	 ; ,
	1:
	lsr r9	 ;  num
	ror r8	 ;  num
	ror r7	 ;  num
	ror r6	 ;  num
	dec r31	 ; 
	brne 1b
	subi r18,-1	 ;  nCols,
	sbci r19,-1	 ;  nCols,
	cp r6,__zero_reg__	 ;  num
	cpc r7,__zero_reg__	 ;  num
	cpc r8,__zero_reg__	 ;  num
	cpc r9,__zero_reg__	 ;  num
	brne .L261	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:563: 		if (nCols < precision) {
	cp r18,r24	 ;  nCols, pretmp_353
	cpc r19,r25	 ;  nCols, pretmp_353
	brge .L211	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	cpi r24,39	 ;  pretmp_353,
	cpc r25,__zero_reg__	 ;  pretmp_353
	brlt .L212	 ; ,
	ldi r24,lo8(39)	 ;  pretmp_353,
	ldi r25,0	 ;  pretmp_353
.L212:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:564: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 1) - nCols;
	sub r24,r18	 ;  cnt, nCols
	sbc r25,r19	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:560: 			p--;
	movw r30,r20	 ;  p, p
	movw r18,r24	 ;  tmp514, cnt
	sub r18,r20	 ;  tmp514, p
	sbc r19,r21	 ; , p
.L215:
	movw r22,r30	 ;  _600, p
	add r22,r18	 ;  _600, tmp514
	adc r23,r19	 ;  _600,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:565: 			while (cnt-- > 0) {
	cp __zero_reg__,r22	 ;  _600
	cpc __zero_reg__,r23	 ;  _600
	brlt .+2	 ; 
	rjmp .L318	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:567: 				*p = '0';
	st -Z,r16	 ;  MEM[base: p_404, offset: 0B], tmp619
	rjmp .L215	 ; 
.L261:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:560: 			p--;
	movw r22,r20	 ;  p, p
	rjmp .L209	 ; 
.L211:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:569: 		} else if (sharpFlag) {
	ldd r24,Y+43	 ;  formatterFlags.sharpFlag, formatterFlags.sharpFlag
	tst r24	 ;  formatterFlags.sharpFlag
	brne .+2	 ; 
	rjmp .L219	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:571: 			*p = '0';
	subi r20,1	 ;  tmp519,
	sbc r21,__zero_reg__	 ; 
	movw r30,r20	 ; , tmp519
	st Z,r16	 ;  MEM[(char *)p_387 + 65535B], tmp619
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:570: 			p--;
	movw r20,r22	 ;  p, p
	rjmp .L314	 ; 
.L208:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:314: 			} else if (ch == 'x' || ch == 'X') {
	mov r24,r17	 ;  tmp522, ch
	andi r24,lo8(-33)	 ;  tmp522,
	cpi r24,lo8(88)	 ;  tmp522,
	breq .+2	 ; 
	rjmp .L263	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:315: 				uint32_t num = va_arg(ap, uint32_t);
	movw r10,r14	 ;  D.4611, ap
	ldi r31,4	 ; ,
	add r10,r31	 ;  D.4611,
	adc r11,__zero_reg__	 ;  D.4611
	movw r26,r14	 ; , ap
	ld r6,X+	 ;  num
	ld r7,X+	 ;  num
	ld r8,X+	 ;  num
	ld r9,X	 ;  num
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:316: 				formatterFlags.upperCaseFlag = (ch == 'X');
	ldi r24,lo8(1)	 ;  tmp523,
	cpi r17,lo8(88)	 ;  ch,
	breq .L216	 ; ,
	ldi r24,0	 ;  tmp523
.L216:
	std Y+41,r24	 ;  formatterFlags.upperCaseFlag, tmp523
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:583: 	*p = '\0';
	std Y+40,__zero_reg__	 ;  MEM[(char *)&buff + 39B],
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:584: 	const char* convTbl = upperCaseFlag? convUpperTbl : convLowerTbl;
	ldi r22,lo8(_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convUpperTbl)	 ;  iftmp.66_419,
	ldi r23,hi8(_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convUpperTbl)	 ;  iftmp.66_419,
	cpi r17,lo8(88)	 ;  ch,
	breq .L217	 ; ,
	ldi r22,lo8(_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convLowerTbl)	 ;  iftmp.66_419,
	ldi r23,hi8(_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convLowerTbl)	 ;  iftmp.66_419,
.L217:
	ldd r24,Y+46	 ;  pretmp_63, formatterFlags.precision
	ldd r25,Y+47	 ;  pretmp_63, formatterFlags.precision
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:585: 	if (num == 0) {
	cp r6,__zero_reg__	 ;  num
	cpc r7,__zero_reg__	 ;  num
	cpc r8,__zero_reg__	 ;  num
	cpc r9,__zero_reg__	 ;  num
	brne .+2	 ; 
	rjmp .L320	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:593: 		int nCols = 0;
	ldi r19,0	 ;  nCols
	ldi r18,0	 ;  nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:582: 	char* p = buff + size - 1;
	movw r20,r28	 ;  p,
	subi r20,-40	 ;  p,
	sbci r21,-1	 ;  p,
.L218:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:596: 			*p = pgm_read_byte(&convTbl[num & 0xf]);
	movw r30,r6	 ;  tmp526,
	andi r30,15	 ;  tmp526,
	clr r31	 ; 
	add r30,r22	 ;  __addr16, iftmp.66_419
	adc r31,r23	 ;  __addr16, iftmp.66_419
/* #APP */
 ;  596 "C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h" 1
	lpm r30, Z	 ;  __result
	
 ;  0 "" 2
/* #NOAPP */
	movw r26,r20	 ; , p
	st -X,r30	 ;  MEM[base: p_416, offset: 0B], __result
	movw r20,r26	 ;  p,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:594: 		for ( ; num != 0; num >>= 4, nCols++) {
	ldi r30,4	 ; ,
	1:
	lsr r9	 ;  num
	ror r8	 ;  num
	ror r7	 ;  num
	ror r6	 ;  num
	dec r30	 ; 
	brne 1b
	subi r18,-1	 ;  nCols,
	sbci r19,-1	 ;  nCols,
	cp r6,__zero_reg__	 ;  num
	cpc r7,__zero_reg__	 ;  num
	cpc r8,__zero_reg__	 ;  num
	cpc r9,__zero_reg__	 ;  num
	brne .L218	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:598: 		if (nCols < precision) {
	cp r18,r24	 ;  nCols, pretmp_63
	cpc r19,r25	 ;  nCols, pretmp_63
	brge .L220	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:25: template<typename T> T ChooseMin(T a, T b) { return (a < b)? a : b; }
	cpi r24,37	 ;  pretmp_63,
	cpc r25,__zero_reg__	 ;  pretmp_63
	brlt .L221	 ; ,
	ldi r24,lo8(37)	 ;  pretmp_63,
	ldi r25,0	 ;  pretmp_63
.L221:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:599: 			int cnt = ChooseMin(precision, static_cast<int>(size) - 3) - nCols;
	sub r24,r18	 ;  cnt, nCols
	sbc r25,r19	 ;  cnt, nCols
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:595: 			p--;
	movw r30,r20	 ;  p, p
	movw r18,r24	 ;  tmp528, cnt
	sub r18,r20	 ;  tmp528, p
	sbc r19,r21	 ; , p
.L224:
	movw r22,r30	 ;  _152, p
	add r22,r18	 ;  _152, tmp528
	adc r23,r19	 ;  _152,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:600: 			while (cnt-- > 0) {
	cp __zero_reg__,r22	 ;  _152
	cpc __zero_reg__,r23	 ;  _152
	brlt .L222	 ; ,
	sbrs r25,7	 ;  cnt,
	rjmp .L223	 ; 
	ldi r25,0	 ;  cnt
	ldi r24,0	 ;  cnt
.L223:
	sub r20,r24	 ;  p, cnt
	sbc r21,r25	 ;  p, cnt
.L220:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:605: 		if (sharpFlag) {
	ldd r24,Y+43	 ;  formatterFlags.sharpFlag, formatterFlags.sharpFlag
	tst r24	 ;  formatterFlags.sharpFlag
	brne .+2	 ; 
	rjmp .L219	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:607: 			*p = upperCaseFlag? 'X' : 'x';
	cpi r17,lo8(88)	 ;  ch,
	breq .L225	 ; ,
	ldi r17,lo8(120)	 ;  ch,
.L225:
	movw r30,r20	 ;  tmp533, p
	sbiw r30,1	 ;  tmp533,
	st Z,r17	 ;  MEM[(char *)p_440 + 65535B], ch
	rjmp .L315	 ; 
.L222:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:602: 				*p = '0';
	st -Z,r16	 ;  MEM[base: p_436, offset: 0B], tmp619
	rjmp .L224	 ; 
.L117:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:327: 			if ('0' <= ch && ch <= '9') {
	ldi r24,lo8(-48)	 ;  tmp538,
	add r24,r17	 ;  tmp538, ch
	cpi r24,lo8(10)	 ;  tmp538,
	brlo .+2	 ; 
	rjmp .L270	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:328: 				formatterFlags.fieldMinWidth = formatterFlags.fieldMinWidth * 10 + (ch - '0');
	ldd r18,Y+44	 ;  formatterFlags.fieldMinWidth, formatterFlags.fieldMinWidth
	ldd r19,Y+45	 ;  formatterFlags.fieldMinWidth, formatterFlags.fieldMinWidth
	ldi r20,lo8(10)	 ;  tmp541,
	mul r20,r18	 ;  tmp541, formatterFlags.fieldMinWidth
	movw r24,r0	 ;  tmp539
	mul r20,r19	 ;  tmp541, formatterFlags.fieldMinWidth
	add r25,r0	 ;  tmp539
	clr __zero_reg__
	mov r18,r17	 ;  ch, ch
	lsl r17	 ; 
	sbc r19,r19	 ; 
	subi r18,48	 ;  tmp543,
	sbc r19,__zero_reg__	 ; 
	add r24,r18	 ;  tmp544, tmp543
	adc r25,r19	 ; ,
	std Y+45,r25	 ;  formatterFlags.fieldMinWidth, tmp544
	std Y+44,r24	 ;  formatterFlags.fieldMinWidth, tmp544
	rjmp .L107	 ; 
.L115:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:336: 			if (ch == '*') {
	cpi r17,lo8(42)	 ;  ch,
	brne .L226	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:337: 				formatterFlags.precision = va_arg(ap, int);
	movw r24,r14	 ;  D.4613, ap
	adiw r24,2	 ;  D.4613,
	movw r26,r14	 ; , ap
	ld r18,X+	 ;  _19
	ld r19,X	 ;  _19
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:338: 				if (formatterFlags.precision < 0) formatterFlags.precision = FormatterFlags::Prec::Default;
	sbrc r19,7	 ;  _19,
	rjmp .L227	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:337: 				formatterFlags.precision = va_arg(ap, int);
	std Y+47,r19	 ;  formatterFlags.precision, _19
	std Y+46,r18	 ;  formatterFlags.precision, _19
.L310:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:337: 				formatterFlags.precision = va_arg(ap, int);
	movw r14,r24	 ;  ap, D.4613
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:339: 				stat = Stat::Flags;
	ldi r21,lo8(3)	 ; ,
	mov r10,r21	 ;  stat,
	mov r11,__zero_reg__	 ;  stat
	rjmp .L107	 ; 
.L227:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:338: 				if (formatterFlags.precision < 0) formatterFlags.precision = FormatterFlags::Prec::Default;
	ldi r30,lo8(-1)	 ; ,
	ldi r31,lo8(-1)	 ; ,
	std Y+47,r31	 ;  formatterFlags.precision,
	std Y+46,r30	 ;  formatterFlags.precision,
	rjmp .L310	 ; 
.L226:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:340: 			} else if ('0' <= ch && ch <= '9') {
	ldi r24,lo8(-48)	 ;  tmp546,
	add r24,r17	 ;  tmp546, ch
	cpi r24,lo8(10)	 ;  tmp546,
	brsh .L228	 ; ,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:341: 				formatterFlags.precision = 0;
	std Y+47,__zero_reg__	 ;  formatterFlags.precision,
	std Y+46,__zero_reg__	 ;  formatterFlags.precision,
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:343: 				stat = Stat::Precision;
	ldi r20,lo8(7)	 ; ,
	mov r10,r20	 ;  stat,
	mov r11,__zero_reg__	 ;  stat
	rjmp .L105	 ; 
.L228:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:345: 				formatterFlags.precision = FormatterFlags::Prec::Null;
	ldi r18,lo8(-2)	 ; ,
	ldi r19,lo8(-1)	 ; ,
	std Y+47,r19	 ;  formatterFlags.precision,
	std Y+46,r18	 ;  formatterFlags.precision,
	rjmp .L270	 ; 
.L116:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:352: 			if ('0' <= ch && ch <= '9') {
	ldi r24,lo8(-48)	 ;  tmp548,
	add r24,r17	 ;  tmp548, ch
	cpi r24,lo8(10)	 ;  tmp548,
	brlo .+2	 ; 
	rjmp .L270	 ; 
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:353: 				formatterFlags.precision = formatterFlags.precision * 10 + (ch - '0');
	ldd r18,Y+46	 ;  formatterFlags.precision, formatterFlags.precision
	ldd r19,Y+47	 ;  formatterFlags.precision, formatterFlags.precision
	ldi r20,lo8(10)	 ;  tmp551,
	mul r20,r18	 ;  tmp551, formatterFlags.precision
	movw r24,r0	 ;  tmp549
	mul r20,r19	 ;  tmp551, formatterFlags.precision
	add r25,r0	 ;  tmp549
	clr __zero_reg__
	mov r18,r17	 ;  ch, ch
	lsl r17	 ; 
	sbc r19,r19	 ; 
	subi r18,48	 ;  tmp553,
	sbc r19,__zero_reg__	 ; 
	add r24,r18	 ;  tmp554, tmp553
	adc r25,r19	 ; ,
	std Y+47,r25	 ;  formatterFlags.precision, tmp554
	std Y+46,r24	 ;  formatterFlags.precision, tmp554
	rjmp .L107	 ; 
.L230:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:164: 				stat = Stat::FlagsPre;
	ldi r19,lo8(2)	 ; ,
	mov r10,r19	 ;  stat,
	mov r11,__zero_reg__	 ;  stat
	rjmp .L107	 ; 
.L234:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:212: 				stat = Stat::PrecisionPre;
	ldi r25,lo8(6)	 ; ,
	mov r10,r25	 ;  stat,
	mov r11,__zero_reg__	 ;  stat
	rjmp .L107	 ; 
.L235:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:215: 				stat = Stat::FlagsAfterL;
	ldi r24,lo8(5)	 ; ,
	mov r10,r24	 ;  stat,
	mov r11,__zero_reg__	 ;  stat
	rjmp .L107	 ; 
.L229:
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:367: 	return true;
	ldi r24,lo8(1)	 ;  <retval>,
.L104:
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:368: }
	adiw r28,52	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	pop r7	 ; 
	pop r6	 ; 
	pop r5	 ; 
	pop r3	 ; 
	pop r2	 ; 
	ret
	.size	_ZN4avrt6Stream7PrintfVERNS_9StringPtrEPv, .-_ZN4avrt6Stream7PrintfVERNS_9StringPtrEPv
	.section	.text._ZN4avrt6Stream7PrintfVEPKcPv,"ax",@progbits
.global	_ZN4avrt6Stream7PrintfVEPKcPv
	.type	_ZN4avrt6Stream7PrintfVEPKcPv, @function
_ZN4avrt6Stream7PrintfVEPKcPv:
	push r28	 ; 
	push r29	 ; 
	 ; SP -= 4	 ; 
	rcall .
	rcall .
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:627: 	StringPtr_SRAM(const char* p) : p_(p) {}
	ldi r18,lo8(_ZTVN4avrt14StringPtr_SRAME+4)	 ;  tmp46,
	ldi r19,hi8(_ZTVN4avrt14StringPtr_SRAME+4)	 ; ,
	std Y+2,r19	 ;  format_.D.2905._vptr.StringPtr, tmp46
	std Y+1,r18	 ;  format_.D.2905._vptr.StringPtr, tmp46
	std Y+4,r23	 ;  format_.p_, format
	std Y+3,r22	 ;  format_.p_, format
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:134: 	return PrintfV(format_, ap);
	movw r22,r28	 ; ,
	subi r22,-1	 ; ,
	sbci r23,-1	 ; ,
	call _ZN4avrt6Stream7PrintfVERNS_9StringPtrEPv	 ; 
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:135: }
	 ; SP += 4	 ; 
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	_ZN4avrt6Stream7PrintfVEPKcPv, .-_ZN4avrt6Stream7PrintfVEPKcPv
	.section	.text._ZN4avrt6Stream6PrintfEPKcz,"ax",@progbits
.global	_ZN4avrt6Stream6PrintfEPKcz
	.type	_ZN4avrt6Stream6PrintfEPKcz, @function
_ZN4avrt6Stream6PrintfEPKcz:
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:117: 	bool rtn = PrintfV(format, ap);
	movw r20,r28	 ; ,
	subi r20,-9	 ; ,
	sbci r21,-1	 ; ,
	ldd r22,Y+7	 ; , format
	ldd r23,Y+8	 ; , format
	ldd r24,Y+5	 ; , this
	ldd r25,Y+6	 ; , this
	call _ZN4avrt6Stream7PrintfVEPKcPv	 ; 
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:120: }
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	_ZN4avrt6Stream6PrintfEPKcz, .-_ZN4avrt6Stream6PrintfEPKcz
	.section	.text._ZN4avrt6Stream7PrintfVEPK19__FlashStringHelperPv,"ax",@progbits
.global	_ZN4avrt6Stream7PrintfVEPK19__FlashStringHelperPv
	.type	_ZN4avrt6Stream7PrintfVEPK19__FlashStringHelperPv, @function
_ZN4avrt6Stream7PrintfVEPK19__FlashStringHelperPv:
	push r28	 ; 
	push r29	 ; 
	 ; SP -= 4	 ; 
	rcall .
	rcall .
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.h:635: 	StringPtr_Flash(const __FlashStringHelper* p) : p_(reinterpret_cast<const char*>(p)) {}
	ldi r18,lo8(_ZTVN4avrt15StringPtr_FlashE+4)	 ;  tmp46,
	ldi r19,hi8(_ZTVN4avrt15StringPtr_FlashE+4)	 ; ,
	std Y+2,r19	 ;  format_.D.2963._vptr.StringPtr, tmp46
	std Y+1,r18	 ;  format_.D.2963._vptr.StringPtr, tmp46
	std Y+4,r23	 ;  format_.p_, format
	std Y+3,r22	 ;  format_.p_, format
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:140: 	return PrintfV(format_, ap);
	movw r22,r28	 ; ,
	subi r22,-1	 ; ,
	sbci r23,-1	 ; ,
	call _ZN4avrt6Stream7PrintfVERNS_9StringPtrEPv	 ; 
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:141: }
	 ; SP += 4	 ; 
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	_ZN4avrt6Stream7PrintfVEPK19__FlashStringHelperPv, .-_ZN4avrt6Stream7PrintfVEPK19__FlashStringHelperPv
	.section	.text._ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz,"ax",@progbits
.global	_ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz
	.type	_ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz, @function
_ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz:
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:126: 	bool rtn = PrintfV(format, ap);
	movw r20,r28	 ; ,
	subi r20,-9	 ; ,
	sbci r21,-1	 ; ,
	ldd r22,Y+7	 ; , format
	ldd r23,Y+8	 ; , format
	ldd r24,Y+5	 ; , this
	ldd r25,Y+6	 ; , this
	call _ZN4avrt6Stream7PrintfVEPK19__FlashStringHelperPv	 ; 
/* epilogue start */
 ;  C:\users\ypsit\source\Arduino\libraries\avrt\avrt.cpp:129: }
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	_ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz, .-_ZN4avrt6Stream6PrintfEPK19__FlashStringHelperz
	.weak	_ZTVN4avrt14StringPtr_SRAME
	.section	.rodata._ZTVN4avrt14StringPtr_SRAME,"aG",@progbits,_ZTVN4avrt14StringPtr_SRAME,comdat
	.type	_ZTVN4avrt14StringPtr_SRAME, @object
	.size	_ZTVN4avrt14StringPtr_SRAME, 6
_ZTVN4avrt14StringPtr_SRAME:
	.word	0
	.word	0
	.word	gs(_ZN4avrt14StringPtr_SRAM4NextEv)
	.weak	_ZTVN4avrt15StringPtr_FlashE
	.section	.rodata._ZTVN4avrt15StringPtr_FlashE,"aG",@progbits,_ZTVN4avrt15StringPtr_FlashE,comdat
	.type	_ZTVN4avrt15StringPtr_FlashE, @object
	.size	_ZTVN4avrt15StringPtr_FlashE, 6
_ZTVN4avrt15StringPtr_FlashE:
	.word	0
	.word	0
	.word	gs(_ZN4avrt15StringPtr_Flash4NextEv)
	.weak	_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convLowerTbl
	.section	.progmem.data._ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convLowerTbl,"aG",@progbits,_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convLowerTbl,comdat
	.type	_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convLowerTbl, @object
	.size	_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convLowerTbl, 17
_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convLowerTbl:
	.string	"0123456789abcdef"
	.weak	_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convUpperTbl
	.section	.progmem.data._ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convUpperTbl,"aG",@progbits,_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convUpperTbl,comdat
	.type	_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convUpperTbl, @object
	.size	_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convUpperTbl, 17
_ZZNK4avrt14FormatterFlags14FormatNumber_xImEEPKcT_PcjE12convUpperTbl:
	.string	"0123456789ABCDEF"
	.weak	_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convLowerTbl
	.section	.progmem.data._ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convLowerTbl,"aG",@progbits,_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convLowerTbl,comdat
	.type	_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convLowerTbl, @object
	.size	_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convLowerTbl, 17
_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convLowerTbl:
	.string	"0123456789abcdef"
	.weak	_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convUpperTbl
	.section	.progmem.data._ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convUpperTbl,"aG",@progbits,_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convUpperTbl,comdat
	.type	_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convUpperTbl, @object
	.size	_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convUpperTbl, 17
_ZZNK4avrt14FormatterFlags14FormatNumber_xIjEEPKcT_PcjE12convUpperTbl:
	.string	"0123456789ABCDEF"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data

;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:46 2017

;--------------------------------------------------------
	.module _mullong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulslong
	.globl __mululong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area _ISEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area _BSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area _XSEG
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;	_mullong.c 505
;	genLabel
;	genFunction
;	---------------------------------
; Function _mululong
; ---------------------------------
____mululong_start:
__mululong:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-37
	add	hl,sp
	ld	sp,hl

;	_mullong.c 509
;	genAddrOf
	ld	hl,#-4+0+37
	add	hl,sp
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	ld	e,c
	ld	d,b
	inc	de
	inc	de
;	genAddrOf
;	AOP_STK for __mululong_sloc0_1_0
	ld	hl,#4+0+37+0
	add	hl,sp
	ld	a,l
	ld	d,h
	ld	-6(ix),a
	ld	-5(ix),d
;	genPointerGet
;	AOP_STK for __mululong_sloc0_1_0
;	AOP_STK for __mululong_sloc1_1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	a,(hl)
	ld	-7(ix),a
;	genAddrOf
;	AOP_STK for __mululong_sloc2_1_0
	ld	hl,#8+0+37+0
	add	hl,sp
	ld	a,l
	ld	d,h
	ld	-9(ix),a
	ld	-8(ix),d
;	genPlus
;	AOP_STK for __mululong_sloc2_1_0
;	AOP_STK for __mululong_sloc3_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-9(ix)
	add	a,#0x02
	ld	-11(ix),a
	ld	a,-8(ix)
	adc	a,#0x00
	ld	-10(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc3_1_0
;	AOP_STK for __mululong_sloc4_1_0
	ld	l,-11(ix)
	ld	h,-10(ix)
	ld	a,(hl)
	ld	-12(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for __mululong_sloc4_1_0
	ld	a,-12(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mululong_sloc1_1_0
	ld	a,-7(ix)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
;	AOP_STK for __mululong_sloc5_1_0
	ld	-13(ix),h
	ld	-14(ix),l
	pop	hl
	pop	de
	pop	bc
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc5_1_0
	ld	l,e
	ld	h,d
	ld	a,-14(ix)
	ld	(hl),a
	inc	hl
	ld	a,-13(ix)
	ld	(hl),a
;	_mullong.c 510
;	genPointerGet
;	AOP_STK for __mululong_sloc2_1_0
;	AOP_STK for __mululong_sloc5_1_0
	ld	l,-9(ix)
	ld	h,-8(ix)
	ld	a,(hl)
	ld	-14(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for __mululong_sloc5_1_0
	ld	a,-14(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mululong_sloc1_1_0
	ld	a,-7(ix)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
;	AOP_STK for __mululong_sloc6_1_0
	ld	-15(ix),h
	ld	-16(ix),l
	pop	hl
	pop	de
	pop	bc
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc6_1_0
	ld	l,c
	ld	h,b
	ld	a,-16(ix)
	ld	(hl),a
	inc	hl
	ld	a,-15(ix)
	ld	(hl),a
;	_mullong.c 511
;	genInline
		;johan 
;	_mullong.c 512
;	genPlus
;	AOP_STK for __mululong_sloc6_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,c
	add	a,#0x03
	ld	-16(ix),a
	ld	a,b
	adc	a,#0x00
	ld	-15(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc6_1_0
;	AOP_STK for __mululong_sloc4_1_0
	ld	l,-16(ix)
	ld	h,-15(ix)
	ld	a,(hl)
	ld	-12(ix),a
;	genPlus
;	AOP_STK for __mululong_sloc0_1_0
;	AOP_STK for __mululong_sloc7_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-6(ix)
	add	a,#0x03
	ld	-18(ix),a
	ld	a,-5(ix)
	adc	a,#0x00
	ld	-17(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc7_1_0
;	AOP_STK for __mululong_sloc8_1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	ld	a,(hl)
	ld	-19(ix),a
;	_mullong.c 513
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for __mululong_sloc5_1_0
	ld	a,-14(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mululong_sloc8_1_0
	ld	a,-19(ix)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
;	AOP_STK for __mululong_sloc9_1_0
	ld	-20(ix),h
	ld	-21(ix),l
	pop	hl
	pop	de
	pop	bc
;	genCast
;	AOP_STK for __mululong_sloc4_1_0
;	AOP_STK for __mululong_sloc10_1_0
	ld	a,-12(ix)
	ld	-23(ix),a
	ld	-22(ix),#0x00
;	genPlus
;	AOP_STK for __mululong_sloc10_1_0
;	AOP_STK for __mululong_sloc9_1_0
;	AOP_STK for __mululong_sloc11_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-23(ix)
	add	a,-21(ix)
	ld	-25(ix),a
	ld	a,-22(ix)
	adc	a,-20(ix)
	ld	-24(ix),a
;	genCast
;	AOP_STK for __mululong_sloc11_1_0
	ld	a,-25(ix)
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc6_1_0
	ld	l,-16(ix)
	ld	h,-15(ix)
	ld	(hl),a
;	_mullong.c 514
;	genPointerGet
;	AOP_STK for __mululong_sloc6_1_0
;	AOP_STK for __mululong_sloc11_1_0
	ld	l,-16(ix)
	ld	h,-15(ix)
	ld	a,(hl)
	ld	-25(ix),a
;	genPlus
;	AOP_STK for __mululong_sloc0_1_0
;	AOP_STK for __mululong_sloc10_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-6(ix)
	add	a,#0x02
	ld	-23(ix),a
	ld	a,-5(ix)
	adc	a,#0x00
	ld	-22(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc10_1_0
;	AOP_STK for __mululong_sloc9_1_0
	ld	l,-23(ix)
	ld	h,-22(ix)
	ld	a,(hl)
	ld	-21(ix),a
;	_mullong.c 515
;	genPlus
;	AOP_STK for __mululong_sloc2_1_0
;	AOP_STK for __mululong_sloc12_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-9(ix)
	add	a,#0x01
	ld	-27(ix),a
	ld	a,-8(ix)
	adc	a,#0x00
	ld	-26(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc12_1_0
;	AOP_STK for __mululong_sloc8_1_0
	ld	l,-27(ix)
	ld	h,-26(ix)
	ld	a,(hl)
	ld	-19(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for __mululong_sloc8_1_0
	ld	a,-19(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mululong_sloc9_1_0
	ld	a,-21(ix)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
;	AOP_STK for __mululong_sloc9_1_0
	ld	-20(ix),h
	ld	-21(ix),l
	pop	hl
	pop	de
	pop	bc
;	genCast
;	AOP_STK for __mululong_sloc11_1_0
;	AOP_STK for __mululong_sloc13_1_0
	ld	a,-25(ix)
	ld	-29(ix),a
	ld	-28(ix),#0x00
;	genPlus
;	AOP_STK for __mululong_sloc13_1_0
;	AOP_STK for __mululong_sloc9_1_0
;	AOP_STK for __mululong_sloc11_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-29(ix)
	add	a,-21(ix)
	ld	-25(ix),a
	ld	a,-28(ix)
	adc	a,-20(ix)
	ld	-24(ix),a
;	genCast
;	AOP_STK for __mululong_sloc11_1_0
	ld	a,-25(ix)
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc6_1_0
	ld	l,-16(ix)
	ld	h,-15(ix)
	ld	(hl),a
;	_mullong.c 516
;	genPointerGet
;	AOP_STK for __mululong_sloc13_1_0
	ld	l,e
	ld	h,d
	ld	a,(hl)
	ld	-29(ix),a
	inc	hl
	ld	a,(hl)
	ld	-28(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc10_1_0
;	AOP_STK for __mululong_sloc11_1_0
	ld	l,-23(ix)
	ld	h,-22(ix)
	ld	a,(hl)
	ld	-25(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for __mululong_sloc5_1_0
	ld	a,-14(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mululong_sloc11_1_0
	ld	a,-25(ix)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
;	AOP_STK for __mululong_sloc11_1_0
	ld	-24(ix),h
	ld	-25(ix),l
	pop	hl
	pop	de
	pop	bc
;	genPlus
;	AOP_STK for __mululong_sloc13_1_0
;	AOP_STK for __mululong_sloc11_1_0
;	AOP_STK for __mululong_sloc10_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-29(ix)
	add	a,-25(ix)
	ld	-23(ix),a
	ld	a,-28(ix)
	adc	a,-24(ix)
	ld	-22(ix),a
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc10_1_0
	ld	l,e
	ld	h,d
	ld	a,-23(ix)
	ld	(hl),a
	inc	hl
	ld	a,-22(ix)
	ld	(hl),a
;	_mullong.c 518
;	genPointerGet
;	AOP_STK for __mululong_sloc13_1_0
	ld	l,e
	ld	h,d
	ld	a,(hl)
	ld	-29(ix),a
	inc	hl
	ld	a,(hl)
	ld	-28(ix),a
;	genPlus
;	AOP_STK for __mululong_sloc0_1_0
;	AOP_STK for __mululong_sloc11_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-6(ix)
	add	a,#0x01
	ld	-25(ix),a
	ld	a,-5(ix)
	adc	a,#0x00
	ld	-24(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc11_1_0
;	AOP_STK for __mululong_sloc10_1_0
	ld	l,-25(ix)
	ld	h,-24(ix)
	ld	a,(hl)
	ld	-23(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc12_1_0
;	AOP_STK for __mululong_sloc9_1_0
	ld	l,-27(ix)
	ld	h,-26(ix)
	ld	a,(hl)
	ld	-21(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for __mululong_sloc9_1_0
	ld	a,-21(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mululong_sloc10_1_0
	ld	a,-23(ix)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
;	AOP_STK for __mululong_sloc12_1_0
	ld	-26(ix),h
	ld	-27(ix),l
	pop	hl
	pop	de
	pop	bc
;	genPlus
;	AOP_STK for __mululong_sloc13_1_0
;	AOP_STK for __mululong_sloc12_1_0
;	AOP_STK for __mululong_sloc10_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-29(ix)
	add	a,-27(ix)
	ld	-23(ix),a
	ld	a,-28(ix)
	adc	a,-26(ix)
	ld	-22(ix),a
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc10_1_0
	ld	l,e
	ld	h,d
	ld	a,-23(ix)
	ld	(hl),a
	inc	hl
	ld	a,-22(ix)
	ld	(hl),a
;	_mullong.c 520
;	genPointerGet
;	AOP_STK for __mululong_sloc11_1_0
	ld	l,-25(ix)
	ld	h,-24(ix)
	ld	e,(hl)
;	_mullong.c 521
;	genPointerGet
;	AOP_STK for __mululong_sloc3_1_0
	ld	l,-11(ix)
	ld	h,-10(ix)
	ld	d,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,d
	push	af
	inc	sp
;	genIpush
	ld	a,e
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	d,h
	ld	e,l
	pop	hl
	pop	bc
;	genCast
	ld	a,e
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc7_1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	ld	(hl),a
;	_mullong.c 522
;	genPlus
;	AOP_STK for __mululong_sloc0_1_0
;	genPlusIncr
	ld	e,-6(ix)
	ld	d,-5(ix)
	inc	de
;	genPlus
;	AOP_STK for __mululong_sloc0_1_0
;	AOP_STK for __mululong_sloc13_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-6(ix)
	add	a,#0x01
	ld	-29(ix),a
	ld	a,-5(ix)
	adc	a,#0x00
	ld	-28(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc13_1_0
;	AOP_STK for __mululong_sloc12_1_0
	ld	l,-29(ix)
	ld	h,-28(ix)
	ld	a,(hl)
	ld	-27(ix),a
;	_mullong.c 523
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for __mululong_sloc5_1_0
	ld	a,-14(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mululong_sloc12_1_0
	ld	a,-27(ix)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
;	AOP_STK for __mululong_sloc13_1_0
	ld	-28(ix),h
	ld	-29(ix),l
	pop	hl
	pop	de
	pop	bc
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc13_1_0
	ld	l,e
	ld	h,d
	ld	a,-29(ix)
	ld	(hl),a
	inc	hl
	ld	a,-28(ix)
	ld	(hl),a
;	_mullong.c 525
;	genPlus
;	AOP_STK for __mululong_sloc2_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-9(ix)
	add	a,#0x03
	ld	e,a
	ld	a,-8(ix)
	adc	a,#0x00
	ld	d,a
;	_mullong.c 526
;	genPointerGet
;	AOP_STK for __mululong_sloc13_1_0
	ld	a,(de)
	ld	-29(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for __mululong_sloc13_1_0
	ld	a,-29(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mululong_sloc1_1_0
	ld	a,-7(ix)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
;	AOP_STK for __mululong_sloc13_1_0
	ld	-28(ix),h
	ld	-29(ix),l
	pop	hl
	pop	de
	pop	bc
;	genCast
;	AOP_STK for __mululong_sloc13_1_0
	ld	a,-29(ix)
;	genAssign (pointer)
	ld	(de),a
;	_mullong.c 527
;	genPlus
;	AOP_STK for __mululong_sloc2_1_0
;	genPlusIncr
	ld	e,-9(ix)
	ld	d,-8(ix)
	inc	de
;	_mullong.c 528
;	genPlus
;	AOP_STK for __mululong_sloc2_1_0
;	AOP_STK for __mululong_sloc13_1_0
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-9(ix)
	add	a,#0x01
	ld	-29(ix),a
	ld	a,-8(ix)
	adc	a,#0x00
	ld	-28(ix),a
;	genPointerGet
;	AOP_STK for __mululong_sloc13_1_0
;	AOP_STK for __mululong_sloc12_1_0
	ld	l,-29(ix)
	ld	h,-28(ix)
	ld	a,(hl)
	ld	-27(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for __mululong_sloc12_1_0
	ld	a,-27(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mululong_sloc1_1_0
	ld	a,-7(ix)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
;	AOP_STK for __mululong_sloc13_1_0
	ld	-28(ix),h
	ld	-29(ix),l
	pop	hl
	pop	de
	pop	bc
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc13_1_0
	ld	l,e
	ld	h,d
	ld	a,-29(ix)
	ld	(hl),a
	inc	hl
	ld	a,-28(ix)
	ld	(hl),a
;	_mullong.c 529
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc2_1_0
	ld	l,-9(ix)
	ld	h,-8(ix)
	ld	(hl),#0x00
;	_mullong.c 530
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc0_1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	(hl),#0x00
;	_mullong.c 531
;	genPointerGet
;	AOP_STK for __mululong_sloc14_1_0
	ld	l,c
	ld	h,b
	ld	a,(hl)
	ld	-33(ix),a
	inc	hl
	ld	a,(hl)
	ld	-32(ix),a
	inc	hl
	ld	a,(hl)
	ld	-31(ix),a
	inc	hl
	ld	a,(hl)
	ld	-30(ix),a
;	genPlus
;	AOP_STK for __mululong_sloc14_1_0
;	AOP_STK for 
;	AOP_STK for __mululong_sloc15_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-33(ix)
	add	a,4(ix)
	ld	-37(ix),a
	ld	a,-32(ix)
	adc	a,5(ix)
	ld	-36(ix),a
	ld	a,-31(ix)
	adc	a,6(ix)
	ld	-35(ix),a
	ld	a,-30(ix)
	adc	a,7(ix)
	ld	-34(ix),a
;	genAssign (pointer)
;	AOP_STK for __mululong_sloc15_1_0
	ld	l,c
	ld	h,b
	ld	a,-37(ix)
	ld	(hl),a
	inc	hl
	ld	a,-36(ix)
	ld	(hl),a
	inc	hl
	ld	a,-35(ix)
	ld	(hl),a
	inc	hl
	ld	a,-34(ix)
	ld	(hl),a
;	_mullong.c 533
;	genPlus
;	AOP_STK for __mululong_sloc15_1_0
;	AOP_STK for 
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-37(ix)
	add	a,8(ix)
	ld	c,a
	ld	a,-36(ix)
	adc	a,9(ix)
	ld	b,a
	ld	a,-35(ix)
	adc	a,10(ix)
	ld	e,a
	ld	a,-34(ix)
	adc	a,11(ix)
	ld	d,a
;	genRet
	ld	l,c
	ld	h,b
;	genLabel
00101$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
____mululong_end:
;	_mullong.c 537
;	genLabel
;	genFunction
;	---------------------------------
; Function _mulslong
; ---------------------------------
____mulslong_start:
__mulslong:
	push	ix
	ld	ix,#0
	add	ix,sp
;	_mullong.c 539
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
	ld	e,6(ix)
	ld	d,7(ix)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	__mululong
; Removed redundent load
; Removed redundent load
	ld	b,h
	ld	c,l
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;	genRet
	ld	l,c
	ld	h,b
;	genLabel
00101$:
;	genEndFunction
	pop	ix

	ret
____mulslong_end:
	.area _CODE

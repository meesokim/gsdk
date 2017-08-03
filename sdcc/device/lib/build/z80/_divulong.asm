;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:46 2017

;--------------------------------------------------------
	.module _divulong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulong
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
;	_divulong.c 321
;	genLabel
;	genFunction
;	---------------------------------
; Function _divulong
; ---------------------------------
____divulong_start:
__divulong:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl

;	_divulong.c 323
;	genAssign
;	AOP_STK for __divulong_reste_1_1
	xor	a,a
	ld	-4(ix),a
	ld	-3(ix),a
	ld	-2(ix),a
	ld	-1(ix),a
;	_divulong.c 331
;	genAssign
;	AOP_STK for __divulong_count_1_1
	ld	-5(ix),#0x20
;	genLabel
00105$:
;	_divulong.c 334
;	genGetHBIT
;	AOP_STK for 
;	AOP_STK for __divulong_c_1_1
	ld	a,7(ix)
	rlc	a
	and	a,#1
	ld	-6(ix),a
;	genAssign
;	AOP_STK for __divulong_c_1_1
;	(registers are the same)
;	_divulong.c 335
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__rlulong_rrx_s
;	AOP_STK for 
	ld	7(ix),d
	ld	6(ix),e
	ld	5(ix),h
	ld	4(ix),l
	pop	hl
	pop	hl
	inc	sp
;	genAssign
;	(operands are equal 4)
;	_divulong.c 336
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __divulong_reste_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__rlulong_rrx_s
; Removed redundent load
; Removed redundent load
	ld	b,h
	ld	c,l
	pop	hl
	pop	hl
	inc	sp
;	genAssign
;	AOP_STK for __divulong_reste_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;	_divulong.c 337
;	genIfx
;	AOP_STK for __divulong_c_1_1
	xor	a,a
	or	a,-6(ix)
	jp	z,00102$
;	_divulong.c 338
;	genOr
;	AOP_STK for __divulong_reste_1_1
	ld	a,-4(ix)
	or	a,#0x01
	ld	-4(ix),a
;	genLabel
00102$:
;	_divulong.c 340
;	genCmpLt
;	AOP_STK for __divulong_reste_1_1
;	AOP_STK for 
	ld	a,-4(ix)
	sub	a,8(ix)
	ld	a,-3(ix)
	sbc	a,9(ix)
	ld	a,-2(ix)
	sbc	a,10(ix)
	ld	a,-1(ix)
	sbc	a,11(ix)
	jp	c,00106$
;	_divulong.c 342
;	genMinus
;	AOP_STK for __divulong_reste_1_1
;	AOP_STK for 
	ld	a,-4(ix)
	sub	a,8(ix)
	ld	-4(ix),a
	ld	a,-3(ix)
	sbc	a,9(ix)
	ld	-3(ix),a
	ld	a,-2(ix)
	sbc	a,10(ix)
	ld	-2(ix),a
	ld	a,-1(ix)
	sbc	a,11(ix)
	ld	-1(ix),a
;	_divulong.c 344
;	genOr
;	AOP_STK for 
	ld	a,4(ix)
	or	a,#0x01
	ld	4(ix),a
;	genLabel
00106$:
;	_divulong.c 347
;	genMinus
;	AOP_STK for __divulong_count_1_1
	dec	-5(ix)
;	genIfx
;	AOP_STK for __divulong_count_1_1
	xor	a,a
	or	a,-5(ix)
	jp	nz,00105$
;	_divulong.c 348
;	genRet
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	ld	e,6(ix)
	ld	d,7(ix)
;	genLabel
00108$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
____divulong_end:
	.area _CODE

;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:43 2017

;--------------------------------------------------------
	.module _memcmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;	_memcmp.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function memcmp
; ---------------------------------
___memcmp_start:
_memcmp:
	push	ix
	ld	ix,#0
	add	ix,sp
;	_memcmp.c 33
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jp	nz,00104$
;	_memcmp.c 34
;	genRet
	ld	hl,#0x0000
	jp	00107$
;	_memcmp.c 36
;	genLabel
00104$:
;	genMinus
;	AOP_STK for 
	ld	c,8(ix)
	ld	b,9(ix)
	dec	bc
;	genAssign
;	AOP_STK for 
	ld	8(ix),c
	ld	9(ix),b
;	genIfx
	ld	a,c
	or	a,b
	jp	z,00106$
;	genAssign
;	(operands are equal 3)
;	genPointerGet
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	ld	e,(hl)
;	genAssign
;	AOP_STK for 
	ld	d,6(ix)
	ld	c,7(ix)
;	genPointerGet
	ld	l,d
	ld	h,c
	ld	b,(hl)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	cp	b
	jp	z,00114$
00113$:
	jp	00106$
00114$:
;	_memcmp.c 37
;	genAssign
;	AOP_STK for 
	ld	b,4(ix)
	ld	e,5(ix)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,b
	add	a,#0x01
	ld	4(ix),a
	ld	a,e
	adc	a,#0x00
	ld	5(ix),a
;	_memcmp.c 38
;	genAssign
;	(registers are the same)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,d
	add	a,#0x01
	ld	6(ix),a
	ld	a,c
	adc	a,#0x00
	ld	7(ix),a
;	genGoto
	jp	00104$
;	genLabel
00106$:
;	_memcmp.c 41
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
;	AOP_STK for 
	ld	e,6(ix)
	ld	d,7(ix)
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genMinus
	ld	a,c
	sub	a,e
;	genCast
; Removed redundent load
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
;	genRet
	ld	l,c
	ld	h,b
;	genLabel
00107$:
;	genEndFunction
	pop	ix

	ret
___memcmp_end:
	.area _CODE

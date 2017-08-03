;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:41 2017

;--------------------------------------------------------
	.module _atoi
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
;	_atoi.c 25
;	genLabel
;	genFunction
;	---------------------------------
; Function atoi
; ---------------------------------
___atoi_start:
_atoi:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-5
	add	hl,sp
	ld	sp,hl

;	_atoi.c 27
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;	_atoi.c 31
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genLabel
00107$:
;	genPointerGet
	ld	a,(de)
	ld	c,a
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00109$
;	_atoi.c 32
;	genCmpGt
	ld	l,#0xB9
	ld	a,c
	xor	a,#0x80
	ld	h,a
	ld	a,l
	sub	a,h
	jp	c,00102$
;	genCmpLt
	ld	a,c
	xor	a,#0x80
	cp	#0x30^0x80
	jp	nc,00109$
;	_atoi.c 33
;	genLabel
00102$:
;	_atoi.c 34
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	a,#0x2D
	jp	z,00109$
00133$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	a,#0x2B
	jp	z,00109$
00134$:
;	_atoi.c 36
;	genPlus
;	genPlusIncr
	inc	de
;	genGoto
	jp	00107$
;	genLabel
00109$:
;	_atoi.c 39
;	genAssign
;	AOP_STK for 
	ld	4(ix),e
	ld	5(ix),d
;	genCmpEq
; genCmpEq: left 1, right 1, result 1
	ld	a,c
	cp	a,#0x2D
	jp	nz,00135$
	ld	a,#0x01
	jp	00136$
00135$:
	xor	a,a
00136$:
	ld	b,a
;	genAssign
;	AOP_STK for _atoi_sign_1_1
	ld	-3(ix),b
;	_atoi.c 40
;	genIfx
	xor	a,a
	or	a,b
	jp	nz,00110$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	a,#0x2B
	jp	z,00138$
00137$:
	jp	00131$
00138$:
;	genLabel
00110$:
;	genPlus
;	AOP_STK for 
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,e
	add	a,#0x01
	ld	4(ix),a
	ld	a,d
	adc	a,#0x00
	ld	5(ix),a
;	_atoi.c 42
;	genLabel
00131$:
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genLabel
00115$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genIfx
	xor	a,a
	or	a,e
	jp	z,00117$
;	genCmpLt
	ld	a,e
	xor	a,#0x80
	cp	#0x30^0x80
	jp	c,00117$
;	genCmpGt
	ld	l,#0xB9
	ld	a,e
	xor	a,#0x80
	ld	h,a
	ld	a,l
	sub	a,h
	jp	c,00117$
;	_atoi.c 43
;	genMult
;	AOP_STK for _atoi_rv_1_1
;	AOP_STK for _atoi_sloc0_1_0
	push	de
	ld	e,-2(ix)
	ld	d,-1(ix)
	ld	l,e
	ld	h,d
	add	hl,hl
	add	hl,hl
	add	hl,de
	add	hl,hl
	pop	de
	ld	a,l
	ld	d,h
	ld	-5(ix),a
	ld	-4(ix),d
;	genMinus
	ld	a,e
	add	a,#0xD0
;	genCast
; Removed redundent load
	ld	e,a
	rla	
	sbc	a,a
	ld	d,a
;	genPlus
;	AOP_STK for _atoi_sloc0_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,-5(ix)
	add	a,e
	ld	e,a
	ld	a,-4(ix)
	adc	a,d
	ld	d,a
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	ld	-2(ix),e
	ld	-1(ix),d
;	_atoi.c 44
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00115$
;	genLabel
00117$:
;	_atoi.c 47
;	genIfx
;	AOP_STK for _atoi_sign_1_1
	xor	a,a
	or	a,-3(ix)
	jp	z,00120$
;	genUminus
;	AOP_STK for _atoi_rv_1_1
	xor     a,a
	sbc	a,-2(ix)
	ld	c,a
	ld	a,#0x00
	sbc	a,-1(ix)
	ld	b,a
;	genGoto
	jp	00121$
;	genLabel
00120$:
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	ld	c,-2(ix)
	ld	b,-1(ix)
;	genLabel
00121$:
;	genRet
	ld	l,c
	ld	h,b
;	genLabel
00118$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___atoi_end:
	.area _CODE

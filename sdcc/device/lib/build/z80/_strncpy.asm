;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:44 2017

;--------------------------------------------------------
	.module _strncpy
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy
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
;	_strncpy.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strncpy
; ---------------------------------
___strncpy_start:
_strncpy:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	_strncpy.c 32
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncpy_d1_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;	_strncpy.c 34
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for _strncpy_d1_1_1
;	AOP_STK for 
	ld	a,-2(ix)
	ld	4(ix),a
	ld	a,-1(ix)
	ld	5(ix),a
;	genAssign
;	AOP_STK for 
	ld	c,8(ix)
	ld	b,9(ix)
;	genLabel
00101$:
;	genAssign
	ld	e,c
	ld	d,b
;	genMinus
	dec	bc
;	genIfx
	ld	a,e
	or	a,d
	jp	z,00103$
;	_strncpy.c 35
;	genPointerGet
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	inc	6(ix)
	jp	nz,00108$
	inc	7(ix)
00108$:
;	genAssign (pointer)
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	ld	(hl),a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	inc	4(ix)
;	genGoto
	jp	nz,00101$
	inc	5(ix)
00109$:
	jp	00101$
;	genLabel
00103$:
;	_strncpy.c 36
;	genRet
;	AOP_STK for _strncpy_d1_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
;	genLabel
00104$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___strncpy_end:
	.area _CODE

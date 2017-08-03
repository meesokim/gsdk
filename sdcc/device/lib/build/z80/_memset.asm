;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:43 2017

;--------------------------------------------------------
	.module _memset
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
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
;	_memset.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function memset
; ---------------------------------
___memset_start:
_memset:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	_memset.c 32
;	genAssign
;	(operands are equal 3)
;	_memset.c 34
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memset_ret_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;	genAssign
;	AOP_STK for 
	ld	c,7(ix)
	ld	b,8(ix)
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
;	_memset.c 35
;	genAssign (pointer)
;	AOP_STK for _memset_ret_1_1
;	AOP_STK for 
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,6(ix)
	ld	(hl),a
;	_memset.c 36
;	genPlus
;	AOP_STK for _memset_ret_1_1
;	genPlusIncr
	inc	-2(ix)
;	genGoto
	jp	nz,00101$
	inc	-1(ix)
00108$:
	jp	00101$
;	genLabel
00103$:
;	_memset.c 39
;	genRet
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
;	genLabel
00104$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___memset_end:
	.area _CODE

;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:43 2017

;--------------------------------------------------------
	.module _strcmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp
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
;	_strcmp.c 31
;	genLabel
;	genFunction
;	---------------------------------
; Function strcmp
; ---------------------------------
___strcmp_start:
_strcmp:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	_strcmp.c 40
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	_strcmp.c 41
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcmp_dst_1_1
	ld	a,6(ix)
	ld	-2(ix),a
	ld	a,7(ix)
	ld	-1(ix),a
;	_strcmp.c 43
;	genLabel
00102$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genPointerGet
;	AOP_STK for _strcmp_dst_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	d,(hl)
;	genMinus
	ld	a,e
	sub	a,d
	ld	e,a
;	genIfx
;	genIfx
	xor	a,a
	or	a,e
	jp	nz,00104$
	or	a,d
	jp	z,00104$
;	_strcmp.c 44
;	genPlus
;	genPlusIncr
	inc	bc
;	genPlus
;	AOP_STK for _strcmp_dst_1_1
;	genPlusIncr
	inc	-2(ix)
;	genGoto
	jp	nz,00102$
	inc	-1(ix)
00110$:
	jp	00102$
;	genLabel
00104$:
;	_strcmp.c 46
;	genCast
; Removed redundent load
	ld	a,e
	rla	
	sbc	a,a
	ld	c,a
;	genRet
	ld	l,e
	ld	h,c
;	genLabel
00105$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___strcmp_end:
	.area _CODE

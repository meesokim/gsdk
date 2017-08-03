;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:44 2017

;--------------------------------------------------------
	.module _strncmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;	_strncmp.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strncmp
; ---------------------------------
___strncmp_start:
_strncmp:
	push	ix
	ld	ix,#0
	add	ix,sp
;	_strncmp.c 33
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jp	nz,00114$
;	_strncmp.c 34
;	genRet
	ld	hl,#0x0000
	jp	00108$
;	_strncmp.c 36
;	genLabel
00114$:
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genAssign
;	(operands are equal 3)
;	genLabel
00105$:
;	genMinus
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	dec	hl
	ld	a,l
	ld	d,h
	ld	8(ix),a
	ld	9(ix),d
;	genAssign
;	(operands are equal 4)
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jp	z,00107$
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genIfx
	xor	a,a
	or	a,e
	jp	z,00107$
;	genPointerGet
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	ld	d,(hl)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	cp	d
	jp	z,00116$
00115$:
	jp	00107$
00116$:
;	_strncmp.c 37
;	genPlus
;	genPlusIncr
	inc	bc
;	_strncmp.c 38
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	inc	6(ix)
;	genGoto
	jp	nz,00105$
	inc	7(ix)
00117$:
	jp	00105$
;	genLabel
00107$:
;	_strncmp.c 41
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genPointerGet
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	ld	b,(hl)
;	genMinus
	ld	a,c
	sub	a,b
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
00108$:
;	genEndFunction
	pop	ix

	ret
___strncmp_end:
	.area _CODE

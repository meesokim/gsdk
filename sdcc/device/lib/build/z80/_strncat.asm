;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:44 2017

;--------------------------------------------------------
	.module _strncat
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
;	_strncat.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strncat
; ---------------------------------
___strncat_start:
_strncat:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	_strncat.c 33
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncat_start_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;	_strncat.c 35
;	genLabel
00101$:
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genPointerGet
	ld	a,(de)
	ld	c,a
;	genPlus
;	genPlusIncr
	inc	de
;	genAssign
;	AOP_STK for 
	ld	4(ix),e
	ld	5(ix),d
;	genIfx
	xor	a,a
	or	a,c
	jp	nz,00101$
;	_strncat.c 37
;	genMinus
	ld	c,e
	ld	b,d
	dec	bc
;	genAssign
;	AOP_STK for 
	ld	4(ix),c
	ld	5(ix),b
;	_strncat.c 39
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for 
	ld	4(ix),c
	ld	5(ix),b
;	genAssign
;	AOP_STK for 
	ld	e,8(ix)
	ld	d,9(ix)
;	genLabel
00106$:
;	genAssign
	ld	c,e
	ld	b,d
;	genMinus
	dec	de
;	genIfx
	ld	a,c
	or	a,b
	jp	z,00108$
;	_strncat.c 40
;	genPointerGet
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	ld	c,(hl)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	inc	6(ix)
	jp	nz,00116$
	inc	7(ix)
00116$:
;	genAssign (pointer)
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	ld	(hl),c
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	inc	4(ix)
	jp	nz,00117$
	inc	5(ix)
00117$:
;	genAssign
;	(operands are equal 4)
;	genIfx
	xor	a,a
	or	a,c
	jp	nz,00106$
;	_strncat.c 41
;	genRet
;	AOP_STK for _strncat_start_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	jp	00109$
;	genLabel
00108$:
;	_strncat.c 43
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	_strncat.c 44
;	genRet
;	AOP_STK for _strncat_start_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
;	genLabel
00109$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___strncat_end:
	.area _CODE

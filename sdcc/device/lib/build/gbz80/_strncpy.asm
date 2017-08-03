;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:50 2017

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
	lda	sp,-4(sp)
;	_strncpy.c 32
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncpy_d1_1_1
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	_strncpy.c 34
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for _strncpy_d1_1_1
;	AOP_STK for 
	dec	hl
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,6(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for 
	lda	hl,10(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00101$:
;	genAssign
;	AOP_STK for _strncpy_sloc0_1_0
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
;	genIfx
;	AOP_STK for _strncpy_sloc0_1_0
	dec	hl
	ld	a,(hl+)
	or	a,(hl)
	jp	z,00103$
;	_strncpy.c 35
;	genPointerGet
;	AOP_STK for 
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00108$
	inc	hl
	inc	(hl)
00108$:
;	genAssign (pointer)
;	AOP_STK for 
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00109$
	inc	hl
	inc	(hl)
00109$:
;	genGoto
	jp	00101$
;	genLabel
00103$:
;	_strncpy.c 36
;	genRet
;	AOP_STK for _strncpy_d1_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00104$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___strncpy_end:
	.area _CODE

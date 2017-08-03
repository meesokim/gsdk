;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:49 2017

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
	lda	sp,-4(sp)
;	_memset.c 32
;	genAssign
;	(operands are equal 3)
;	_memset.c 34
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memset_ret_1_1
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for 
	lda	hl,9(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00101$:
;	genAssign
;	AOP_STK for _memset_sloc0_1_0
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
;	genIfx
;	AOP_STK for _memset_sloc0_1_0
	dec	hl
	ld	a,(hl+)
	or	a,(hl)
	jp	z,00103$
;	_memset.c 35
;	genAssign (pointer)
;	AOP_STK for _memset_ret_1_1
;	AOP_STK for 
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	ld	a,(hl)
	ld	(de),a
;	_memset.c 36
;	genPlus
;	AOP_STK for _memset_ret_1_1
;	genPlusIncr
	lda	hl,2(sp)
	inc	(hl)
	jr	nz,00108$
	inc	hl
	inc	(hl)
00108$:
;	genGoto
	jp	00101$
;	genLabel
00103$:
;	_memset.c 39
;	genRet
;	AOP_STK for 
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00104$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___memset_end:
	.area _CODE

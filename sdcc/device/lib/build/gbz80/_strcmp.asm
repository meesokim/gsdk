;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:49 2017

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
	lda	sp,-4(sp)
;	_strcmp.c 40
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcmp_src_1_1
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	_strcmp.c 41
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcmp_dst_1_1
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	_strcmp.c 43
;	genLabel
00102$:
;	genPointerGet
;	AOP_STK for _strcmp_src_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genPointerGet
;	AOP_STK for _strcmp_dst_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;	genMinus
	ld	a,c
	sub	a,b
	ld	c,a
;	genIfx
;	genIfx
	xor	a,a
	or	a,c
	jp	nz,00104$
	or	a,b
	jp	z,00104$
;	_strcmp.c 44
;	genPlus
;	AOP_STK for _strcmp_src_1_1
;	genPlusIncr
	inc	hl
	inc	(hl)
	jr	nz,00110$
	inc	hl
	inc	(hl)
00110$:
;	genPlus
;	AOP_STK for _strcmp_dst_1_1
;	genPlusIncr
	lda	hl,0(sp)
	inc	(hl)
	jr	nz,00111$
	inc	hl
	inc	(hl)
00111$:
;	genGoto
	jp	00102$
;	genLabel
00104$:
;	_strcmp.c 46
;	genCast
; Removed redundent load
	ld	a,c
	rla	
	sbc	a,a
	ld	b,a
;	genRet
	ld	e,c
	ld	d,b
;	genLabel
00105$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___strcmp_end:
	.area _CODE

;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:50 2017

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
	lda	sp,-3(sp)
;	_strncat.c 33
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncat_start_1_1
	lda	hl,5(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,1(sp)
	ld	(hl+),a
	ld	(hl),e
;	_strncat.c 35
;	genLabel
00101$:
;	genAssign
;	AOP_STK for 
	lda	hl,5(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
;	AOP_STK for _strncat_sloc0_1_0
	ld	a,(bc)
	lda	hl,0(sp)
	ld	(hl),a
;	genPlus
;	genPlusIncr
	inc	bc
;	genAssign
;	AOP_STK for 
	lda	hl,5(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genIfx
;	AOP_STK for _strncat_sloc0_1_0
	xor	a,a
	lda	hl,0(sp)
	or	a,(hl)
	jp	nz,00101$
;	_strncat.c 37
;	genMinus
;	AOP_STK for 
; Removed redundent load
; Removed redundent load
	ld	de,#0x0001
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	lda	hl,6(sp)
	ld      (hl-),a
	ld	(hl),e
;	genAssign
;	(operands are equal 4)
;	_strncat.c 39
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for 
;	(registers are the same)
;	genAssign
;	(operands are equal 3)
;	genLabel
00106$:
;	genAssign
;	AOP_STK for 
	lda	hl,9(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for 
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genIfx
	ld	a,c
	or	a,b
	jp	z,00108$
;	_strncat.c 40
;	genPointerGet
;	AOP_STK for 
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00116$
	inc	hl
	inc	(hl)
00116$:
;	genAssign (pointer)
;	AOP_STK for 
	lda	hl,5(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00117$
	inc	hl
	inc	(hl)
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
	lda	hl,1(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00109$
;	genLabel
00108$:
;	_strncat.c 43
;	genAssign
;	AOP_STK for 
	lda	hl,5(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	_strncat.c 44
;	genRet
;	AOP_STK for _strncat_start_1_1
	lda	hl,1(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00109$:
;	genEndFunction
	lda	sp,3(sp)
	ret
___strncat_end:
	.area _CODE

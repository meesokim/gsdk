;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:50 2017

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
	
;	_strncmp.c 33
;	genIfx
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	nz,00114$
;	_strncmp.c 34
;	genRet
	ld	de,#0x0000
	jp	00108$
;	_strncmp.c 36
;	genLabel
00114$:
;	genAssign
;	(operands are equal 3)
;	genAssign
;	(operands are equal 3)
;	genLabel
00105$:
;	genMinus
;	AOP_STK for 
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genAssign
;	(operands are equal 4)
;	genIfx
;	AOP_STK for 
	dec	hl
	ld	a,(hl+)
	or	a,(hl)
	jp	z,00107$
;	genPointerGet
;	AOP_STK for 
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00107$
;	genPointerGet
;	AOP_STK for 
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	b
	jp	nz,00107$
	jr	00116$
00115$:
	jp	00107$
00116$:
;	_strncmp.c 37
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,2(sp)
	inc	(hl)
	jr	nz,00117$
	inc	hl
	inc	(hl)
00117$:
;	_strncmp.c 38
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,4(sp)
	inc	(hl)
	jr	nz,00118$
	inc	hl
	inc	(hl)
00118$:
;	genGoto
	jp	00105$
;	genLabel
00107$:
;	_strncmp.c 41
;	genPointerGet
;	AOP_STK for 
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genPointerGet
;	AOP_STK for 
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
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
	ld	e,c
	ld	d,b
;	genLabel
00108$:
;	genEndFunction
	
	ret
___strncmp_end:
	.area _CODE

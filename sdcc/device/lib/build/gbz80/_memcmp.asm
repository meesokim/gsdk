;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:49 2017

;--------------------------------------------------------
	.module _memcmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;	_memcmp.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function memcmp
; ---------------------------------
___memcmp_start:
_memcmp:
	lda	sp,-2(sp)
;	_memcmp.c 33
;	genIfx
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	nz,00104$
;	_memcmp.c 34
;	genRet
	ld	de,#0x0000
	jp	00107$
;	_memcmp.c 36
;	genLabel
00104$:
;	genMinus
;	AOP_STK for 
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	dec	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genIfx
	ld	a,c
	or	a,b
	jp	z,00106$
;	genAssign
;	(operands are equal 3)
;	genPointerGet
;	AOP_STK for 
;	AOP_STK for _memcmp_sloc0_1_0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,1(sp)
	ld	(hl),a
;	genAssign
;	AOP_STK for 
	lda	hl,6(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
;	AOP_STK for _memcmp_sloc1_1_0
	ld	a,(bc)
	lda	hl,0(sp)
	ld	(hl),a
;	genCmpEq
;	AOP_STK for _memcmp_sloc0_1_0
;	AOP_STK for _memcmp_sloc1_1_0
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl+)
	cp	(hl)
	jr	nz,00113$
	jr	00114$
00113$:
	jp	00106$
00114$:
;	_memcmp.c 37
;	genAssign
;	AOP_STK for 
;	(registers are the same)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,4(sp)
	inc	(hl)
	jr	nz,00115$
	inc	hl
	inc	(hl)
00115$:
;	_memcmp.c 38
;	genAssign
;	(registers are the same)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,6(sp)
	ld	(hl+),a
	ld	(hl),d
;	genGoto
	jp	00104$
;	genLabel
00106$:
;	_memcmp.c 41
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
;	AOP_STK for _memcmp_sloc1_1_0
	ld	a,(bc)
	lda	hl,0(sp)
	ld	(hl),a
;	genAssign
;	AOP_STK for 
	lda	hl,6(sp)
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
;	genPointerGet
	ld	e,b
	ld	d,c
	ld	a,(de)
	ld	b,a
;	genMinus
;	AOP_STK for _memcmp_sloc1_1_0
	lda	hl,0(sp)
	ld	a,(hl)
	sub	a,b
;	genCast
; Removed redundent load
	ld	b,a
	rla	
	sbc	a,a
	ld	c,a
;	genRet
	ld	e,b
	ld	d,c
;	genLabel
00107$:
;	genEndFunction
	lda	sp,2(sp)
	ret
___memcmp_end:
	.area _CODE

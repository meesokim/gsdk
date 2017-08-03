;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:47 2017

;--------------------------------------------------------
	.module _atoi
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
;	_atoi.c 25
;	genLabel
;	genFunction
;	---------------------------------
; Function atoi
; ---------------------------------
___atoi_start:
_atoi:
	lda	sp,-7(sp)
;	_atoi.c 27
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	lda	hl,5(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	_atoi.c 31
;	genAssign
;	AOP_STK for 
	lda	hl,9(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00107$:
;	genPointerGet
;	AOP_STK for _atoi_sloc0_1_0
	ld	a,(bc)
	lda	hl,3(sp)
	ld	(hl),a
;	genIfx
;	AOP_STK for _atoi_sloc0_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00109$
;	_atoi.c 32
;	genCmpGt
;	AOP_STK for _atoi_sloc0_1_0
	ld	e,#0xB9
	ld	a,(hl)
	xor	a,#0x80
	ld	d,a
	ld	a,e
	sub	a,d
	jp	c,00102$
;	genCmpLt
;	AOP_STK for _atoi_sloc0_1_0
	ld	a,(hl)
	xor	a,#0x80
	cp	#0x30^0x80
	jp	nc,00109$
;	_atoi.c 33
;	genLabel
00102$:
;	_atoi.c 34
;	genCmpEq
;	AOP_STK for _atoi_sloc0_1_0
; genCmpEq: left 1, right 1, result 0
	lda	hl,3(sp)
	ld	a,(hl)
	cp	a,#0x2D
	jp	z,00109$
00133$:
;	genCmpEq
;	AOP_STK for _atoi_sloc0_1_0
; genCmpEq: left 1, right 1, result 0
	lda	hl,3(sp)
	ld	a,(hl)
	cp	a,#0x2B
	jp	z,00109$
00134$:
;	_atoi.c 36
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00107$
;	genLabel
00109$:
;	_atoi.c 39
;	genAssign
;	AOP_STK for 
	lda	hl,9(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genCmpEq
;	AOP_STK for _atoi_sloc0_1_0
;	AOP_STK for _atoi_sign_1_1
; genCmpEq: left 1, right 1, result 1
	lda	hl,3(sp)
	ld	a,(hl)
	cp	a,#0x2D
	jp	nz,00135$
	ld	a,#0x01
	jr	00136$
00135$:
	xor	a,a
00136$:
	lda	hl,4(sp)
	ld	(hl),a
;	genAssign
;	AOP_STK for _atoi_sign_1_1
;	(registers are the same)
;	_atoi.c 40
;	genIfx
;	AOP_STK for _atoi_sign_1_1
	xor	a,a
	or	a,(hl)
	jp	nz,00110$
;	genCmpEq
;	AOP_STK for _atoi_sloc0_1_0
; genCmpEq: left 1, right 1, result 0
	dec	hl
	ld	a,(hl)
	cp	a,#0x2B
	jp	nz,00131$
	jr	00138$
00137$:
	jp	00131$
00138$:
;	genLabel
00110$:
;	genPlus
;	AOP_STK for 
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,9(sp)
	ld	(hl+),a
	ld	(hl),d
;	_atoi.c 42
;	genLabel
00131$:
;	genAssign
;	(operands are equal 3)
;	genLabel
00115$:
;	genPointerGet
;	AOP_STK for 
;	AOP_STK for _atoi_sloc0_1_0
	lda	hl,9(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,3(sp)
	ld	(hl),a
;	genIfx
;	AOP_STK for _atoi_sloc0_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00117$
;	genCmpLt
;	AOP_STK for _atoi_sloc0_1_0
	ld	a,(hl)
	xor	a,#0x80
	cp	#0x30^0x80
	jp	c,00117$
;	genCmpGt
;	AOP_STK for _atoi_sloc0_1_0
	ld	e,#0xB9
	ld	a,(hl)
	xor	a,#0x80
	ld	d,a
	ld	a,e
	sub	a,d
	jp	c,00117$
;	_atoi.c 43
;	genMult
;	AOP_STK for _atoi_rv_1_1
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,e
	ld	h,d
	add	hl,hl
	add	hl,hl
	add	hl,de
	add	hl,hl
	ld	c,l
	ld	b,h
;	genMinus
;	AOP_STK for _atoi_sloc0_1_0
;	AOP_STK for _atoi_sloc1_1_0
	lda	hl,3(sp)
	ld	a,(hl)
	add	a,#0xD0
	dec	hl
;	genCast
;	AOP_STK for _atoi_sloc1_1_0
;	AOP_STK for _atoi_sloc2_1_0
; Removed redundent load
	ld      (hl-),a
	dec	hl
	ld	(hl+),a
	inc	hl
	ld	a,(hl)
	rla	
	sbc	a,a
	dec	hl
;	genPlus
;	AOP_STK for _atoi_sloc2_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld      (hl-),a
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	lda	hl,5(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	_atoi.c 44
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,9(sp)
	inc	(hl)
	jr	nz,00139$
	inc	hl
	inc	(hl)
00139$:
;	genGoto
	jp	00115$
;	genLabel
00117$:
;	_atoi.c 47
;	genIfx
;	AOP_STK for _atoi_sign_1_1
	xor	a,a
	lda	hl,4(sp)
	or	a,(hl)
	jp	z,00120$
;	genUminus
;	AOP_STK for _atoi_rv_1_1
	xor	a,a
	inc	hl
	ld	a,#0x00
	sbc	a,(hl)
	ld	c,a
	inc	hl
	ld	a,#0x00
	sbc	a,(hl)
	ld	b,a
;	genGoto
	jp	00121$
;	genLabel
00120$:
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	lda	hl,5(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00121$:
;	genRet
	ld	e,c
	ld	d,b
;	genLabel
00118$:
;	genEndFunction
	lda	sp,7(sp)
	ret
___atoi_end:
	.area _CODE

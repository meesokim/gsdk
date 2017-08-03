;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:49 2017

;--------------------------------------------------------
	.module _memcpy
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
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
;	_memcpy.c 31
;	genLabel
;	genFunction
;	---------------------------------
; Function memcpy
; ---------------------------------
___memcpy_start:
_memcpy:
	lda	sp,-4(sp)
;	_memcpy.c 41
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memcpy_d_1_1
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	_memcpy.c 42
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memcpy_s_1_1
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	_memcpy.c 43
;	genUminus
;	AOP_STK for 
	xor	a,a
	lda	hl,10(sp)
	ld	a,#0x00
	sbc	a,(hl)
	ld	c,a
	inc	hl
	ld	a,#0x00
	sbc	a,(hl)
	ld	b,a
;	genAssign
;	(registers are the same)
;	_memcpy.c 45
;	genRightShift
	sra	b
	rr	c
	sra	b
	rr	c
;	_memcpy.c 47
;	genLabel
00101$:
;	genIfx
	ld	a,c
	or	a,b
	jp	z,00103$
;	_memcpy.c 48
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00116$
	inc	hl
	inc	(hl)
00116$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00117$
	inc	hl
	inc	(hl)
00117$:
;	_memcpy.c 49
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00118$
	inc	hl
	inc	(hl)
00118$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00119$
	inc	hl
	inc	(hl)
00119$:
;	_memcpy.c 50
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00120$
	inc	hl
	inc	(hl)
00120$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00121$
	inc	hl
	inc	(hl)
00121$:
;	_memcpy.c 51
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00122$
	inc	hl
	inc	(hl)
00122$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00123$
	inc	hl
	inc	(hl)
00123$:
;	_memcpy.c 52
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00101$
;	genLabel
00103$:
;	_memcpy.c 55
;	genAnd
;	AOP_STK for 
	lda	hl,10(sp)
	ld	a,(hl)
	and	a,#0x02
	jr	nz,00124$
	jp	00105$
00124$:
;	_memcpy.c 56
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00125$
	inc	hl
	inc	(hl)
00125$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00126$
	inc	hl
	inc	(hl)
00126$:
;	_memcpy.c 57
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00127$
	inc	hl
	inc	(hl)
00127$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00128$
	inc	hl
	inc	(hl)
00128$:
;	genLabel
00105$:
;	_memcpy.c 59
;	genAnd
;	AOP_STK for 
	lda	hl,10(sp)
	ld	a,(hl)
	and	a,#0x01
	jr	nz,00129$
	jp	00107$
00129$:
;	_memcpy.c 60
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genLabel
00107$:
;	_memcpy.c 62
;	genRet
;	AOP_STK for 
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00108$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___memcpy_end:
	.area _CODE

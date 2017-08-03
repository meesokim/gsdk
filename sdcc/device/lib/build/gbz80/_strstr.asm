;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:51 2017

;--------------------------------------------------------
	.module _strstr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;	_strstr.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strstr
; ---------------------------------
___strstr_start:
_strstr:
	lda	sp,-9(sp)
;	_strstr.c 32
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strstr_cp_1_1
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,7(sp)
	ld	(hl+),a
	ld	(hl),e
;	_strstr.c 36
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strstr_sloc0_1_0
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,1(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for _strstr_sloc0_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	or	a,a
	jp	nz,00122$
;	_strstr.c 37
;	genRet
;	AOP_STK for _strstr_cp_1_1
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00113$
;	_strstr.c 39
;	genLabel
00122$:
;	genAssign
;	AOP_STK for _strstr_cp_1_1
;	(registers are the same)
;	genLabel
00110$:
;	genPointerGet
;	AOP_STK for _strstr_cp_1_1
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	or	a,a
	jp	z,00112$
;	_strstr.c 42
;	genAssign
;	AOP_STK for _strstr_sloc0_1_0
;	AOP_STK for _strstr_s2_1_1
	lda	hl,1(sp)
	ld	a,(hl+)
	ld	e,(hl)
	inc	hl
	ld	(hl+),a
	ld	(hl),e
;	_strstr.c 44
;	genAssign
;	AOP_STK for _strstr_cp_1_1
;	AOP_STK for _strstr_s1_1_1
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,5(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for _strstr_s2_1_1
;	(registers are the same)
;	genLabel
00105$:
;	genPointerGet
;	AOP_STK for _strstr_s1_1_1
	lda	hl,5(sp)
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
;	AOP_STK for _strstr_s2_1_1
	lda	hl,3(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;	genIfx
	xor	a,a
	or	a,b
	jp	z,00107$
;	genMinus
;	AOP_STK for _strstr_sloc1_1_0
	ld	a,c
	sub	a,b
	lda	hl,0(sp)
	ld	(hl),a
;	genIfx
;	AOP_STK for _strstr_sloc1_1_0
	xor	a,a
	or	a,(hl)
	jp	nz,00107$
;	_strstr.c 45
;	genPlus
;	AOP_STK for _strstr_s1_1_1
;	genPlusIncr
	lda	hl,5(sp)
	inc	(hl)
	jr	nz,00123$
	inc	hl
	inc	(hl)
00123$:
;	genPlus
;	AOP_STK for _strstr_s2_1_1
;	genPlusIncr
	lda	hl,3(sp)
	inc	(hl)
	jr	nz,00124$
	inc	hl
	inc	(hl)
00124$:
;	genGoto
	jp	00105$
;	genLabel
00107$:
;	_strstr.c 47
;	genPointerGet
;	AOP_STK for _strstr_s2_1_1
	lda	hl,3(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	or	a,a
	jp	nz,00109$
;	_strstr.c 48
;	genRet
;	AOP_STK for _strstr_cp_1_1
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00113$
;	genLabel
00109$:
;	_strstr.c 50
;	genPlus
;	AOP_STK for _strstr_cp_1_1
;	genPlusIncr
	lda	hl,7(sp)
	inc	(hl)
	jr	nz,00125$
	inc	hl
	inc	(hl)
00125$:
;	genAssign
;	AOP_STK for _strstr_cp_1_1
;	(registers are the same)
;	genGoto
	jp	00110$
;	genLabel
00112$:
;	_strstr.c 53
;	genRet
	ld	de,#0x0000
;	genLabel
00113$:
;	genEndFunction
	lda	sp,9(sp)
	ret
___strstr_end:
	.area _CODE

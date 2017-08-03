;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:51 2017

;--------------------------------------------------------
	.module _strrchr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr
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
;	_strrchr.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strrchr
; ---------------------------------
___strrchr_start:
_strrchr:
	lda	sp,-3(sp)
;	_strrchr.c 32
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strrchr_start_1_1
	lda	hl,5(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,1(sp)
	ld	(hl+),a
	ld	(hl),e
;	_strrchr.c 34
;	genAssign
;	AOP_STK for _strrchr_start_1_1
;	AOP_STK for 
	dec	hl
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,5(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00101$:
;	genPointerGet
;	AOP_STK for 
	lda	hl,5(sp)
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
;	genAssign
;	(operands are equal 4)
;	genIfx
	xor	a,a
	or	a,c
	jp	nz,00101$
;	_strrchr.c 37
;	genLabel
00105$:
;	genMinus
;	AOP_STK for 
	lda	hl,5(sp)
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
;	genCmpEq
;	AOP_STK for _strrchr_start_1_1
; genCmpEq: left 2, right 2, result 0
	lda	hl,1(sp)
	ld	a,(hl)
	cp	c
	jr	nz,00117$
	inc	hl
	ld	a,(hl)
	cp	b
	jr	nz,00117$
	jp	00107$
00117$:
;	genPointerGet
;	AOP_STK for _strrchr_sloc0_1_0
	ld	a,(bc)
	lda	hl,0(sp)
	ld	(hl),a
;	genCmpEq
;	AOP_STK for _strrchr_sloc0_1_0
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	lda	hl,0(sp)
	cp	(hl)
	jr	nz,00118$
	jr	00119$
00118$:
	jp	00105$
00119$:
;	genLabel
00107$:
;	_strrchr.c 40
;	genPointerGet
;	AOP_STK for _strrchr_sloc0_1_0
	ld	a,(bc)
	lda	hl,0(sp)
	ld	(hl),a
;	genCmpEq
;	AOP_STK for _strrchr_sloc0_1_0
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,7(sp)
	ld	a,(hl)
	lda	hl,0(sp)
	cp	(hl)
	jr	nz,00120$
	jr	00121$
00120$:
	jp	00109$
00121$:
;	_strrchr.c 41
;	genRet
	ld	e,c
	ld	d,b
	jp	00110$
;	genLabel
00109$:
;	_strrchr.c 43
;	genRet
	ld	de,#0x0000
;	genLabel
00110$:
;	genEndFunction
	lda	sp,3(sp)
	ret
___strrchr_end:
	.area _CODE

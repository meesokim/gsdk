;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:50 2017

;--------------------------------------------------------
	.module _strpbrk
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strpbrk
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
;	_strpbrk.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strpbrk
; ---------------------------------
___strpbrk_start:
_strpbrk:
	lda	sp,-3(sp)
;	_strpbrk.c 34
;	genAssign
;	AOP_STK for 
	lda	hl,5(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00103$:
;	genPointerGet
;	AOP_STK for _strpbrk_ch_1_1
	ld	a,(bc)
	lda	hl,2(sp)
	ld	(hl),a
;	genAssign
;	AOP_STK for _strpbrk_ch_1_1
;	(registers are the same)
;	genIfx
;	AOP_STK for _strpbrk_ch_1_1
	xor	a,a
	or	a,(hl)
	jp	z,00105$
;	_strpbrk.c 35
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for _strpbrk_ch_1_1
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_strchr
;	AOP_STK for _strpbrk_sloc0_1_0
	lda	hl,6(sp)
	ld	(hl),d
	dec	hl
	ld	(hl),e
	lda	sp,3(sp)
	pop	bc
;	genIfx
;	AOP_STK for _strpbrk_sloc0_1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	z,00103$
;	_strpbrk.c 36
;	genRet
	ld	e,c
	ld	d,b
	jp	00106$
;	genLabel
00105$:
;	_strpbrk.c 39
;	genRet
	ld	de,#0x0000
;	genLabel
00106$:
;	genEndFunction
	lda	sp,3(sp)
	ret
___strpbrk_end:
	.area _CODE

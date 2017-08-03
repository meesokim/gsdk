;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:49 2017

;--------------------------------------------------------
	.module _strchr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
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
;	_strchr.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strchr
; ---------------------------------
___strchr_start:
_strchr:
	lda	sp,-1(sp)
;	_strchr.c 32
;	genAssign
;	AOP_STK for 
	lda	hl,3(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00102$:
;	genPointerGet
;	AOP_STK for _strchr_sloc0_1_0
	ld	a,(bc)
	lda	hl,0(sp)
	ld	(hl),a
;	genIfx
;	AOP_STK for _strchr_sloc0_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00104$
;	genCmpEq
;	AOP_STK for _strchr_sloc0_1_0
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,0(sp)
	cp	(hl)
	jr	nz,00113$
	jp	00104$
00113$:
;	_strchr.c 33
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00102$
;	genLabel
00104$:
;	_strchr.c 35
;	genCmpEq
;	AOP_STK for _strchr_sloc0_1_0
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,0(sp)
	cp	(hl)
	jr	nz,00114$
	jr	00115$
00114$:
	jp	00106$
00115$:
;	_strchr.c 36
;	genRet
	ld	e,c
	ld	d,b
	jp	00107$
;	genLabel
00106$:
;	_strchr.c 37
;	genRet
	ld	de,#0x0000
;	genLabel
00107$:
;	genEndFunction
	lda	sp,1(sp)
	ret
___strchr_end:
	.area _CODE

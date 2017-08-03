;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:50 2017

;--------------------------------------------------------
	.module _strlen
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
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
;	_strlen.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strlen
; ---------------------------------
___strlen_start:
_strlen:
	lda	sp,-2(sp)
;	_strlen.c 31
;	genAssign
;	AOP_STK for _strlen_i_1_1
	lda	hl,0(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00101$:
;	genPointerGet
	ld	a,(bc)
;	genPlus
;	genPlusIncr
	inc	bc
;	genIfx
	or	a,a
	jp	z,00103$
;	_strlen.c 32
;	genPlus
;	AOP_STK for _strlen_i_1_1
;	genPlusIncr
	lda	hl,0(sp)
	inc	(hl)
	jr	nz,00108$
	inc	hl
	inc	(hl)
00108$:
;	genGoto
	jp	00101$
;	genLabel
00103$:
;	_strlen.c 34
;	genRet
;	AOP_STK for _strlen_i_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00104$:
;	genEndFunction
	lda	sp,2(sp)
	ret
___strlen_end:
	.area _CODE

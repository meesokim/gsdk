;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:47 2017

;--------------------------------------------------------
	.module _isdigit
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isdigit
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
;	_isdigit.c 26
;	genLabel
;	genFunction
;	---------------------------------
; Function isdigit
; ---------------------------------
___isdigit_start:
_isdigit:
	
;	_isdigit.c 29
;	genCmpLt
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	cp	#0x30
	jp	c,00102$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x39
	sub	a,(hl)
	jp	c,00102$
;	_isdigit.c 30
;	genRet
	ld	e,#0x01
	jp	00104$
;	genLabel
00102$:
;	_isdigit.c 31
;	genRet
	ld	e,#0x00
;	genLabel
00104$:
;	genEndFunction
	
	ret
___isdigit_end:
	.area _CODE

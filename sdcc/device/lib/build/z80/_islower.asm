;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:42 2017

;--------------------------------------------------------
	.module _islower
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _islower
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
;	_islower.c 25
;	genLabel
;	genFunction
;	---------------------------------
; Function islower
; ---------------------------------
___islower_start:
_islower:
	push	ix
	ld	ix,#0
	add	ix,sp
;	_islower.c 28
;	genCmpLt
;	AOP_STK for 
	ld	a,4(ix)
	cp	#0x61
	jp	c,00102$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x7A
	sub	a,4(ix)
	jp	c,00102$
;	_islower.c 29
;	genRet
	ld	l,#0x01
	jp	00104$
;	genLabel
00102$:
;	_islower.c 30
;	genRet
	ld	l,#0x00
;	genLabel
00104$:
;	genEndFunction
	pop	ix

	ret
___islower_end:
	.area _CODE

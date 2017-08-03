;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:48 2017

;--------------------------------------------------------
	.module _isxdigit
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit
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
;	_isxdigit.c 24
;	genLabel
;	genFunction
;	---------------------------------
; Function isxdigit
; ---------------------------------
___isxdigit_start:
_isxdigit:
	
;	_isxdigit.c 27
;	genCmpLt
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	cp	#0x30
	jp	c,00105$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x39
	sub	a,(hl)
	jp	nc,00101$
;	genLabel
00105$:
;	_isxdigit.c 28
;	genCmpLt
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	cp	#0x61
	jp	c,00107$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x66
	sub	a,(hl)
	jp	nc,00101$
;	genLabel
00107$:
;	_isxdigit.c 29
;	genCmpLt
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	cp	#0x41
	jp	c,00102$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x46
	sub	a,(hl)
	jp	c,00102$
;	genLabel
00101$:
;	_isxdigit.c 30
;	genRet
	ld	e,#0x01
	jp	00108$
;	genLabel
00102$:
;	_isxdigit.c 31
;	genRet
	ld	e,#0x00
;	genLabel
00108$:
;	genEndFunction
	
	ret
___isxdigit_end:
	.area _CODE

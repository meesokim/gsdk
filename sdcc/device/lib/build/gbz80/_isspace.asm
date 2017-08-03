;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:48 2017

;--------------------------------------------------------
	.module _isspace
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
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
;	_isspace.c 24
;	genLabel
;	genFunction
;	---------------------------------
; Function isspace
; ---------------------------------
___isspace_start:
_isspace:
	
;	_isspace.c 27
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	cp	a,#0x20
	jp	z,00101$
00115$:
;	_isspace.c 28
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	cp	a,#0x0C
	jp	z,00101$
00116$:
;	_isspace.c 29
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	cp	a,#0x0A
	jp	z,00101$
00117$:
;	_isspace.c 30
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	cp	a,#0x0D
	jp	z,00101$
00118$:
;	_isspace.c 31
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	cp	a,#0x09
	jp	z,00101$
00119$:
;	_isspace.c 32
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	cp	a,#0x0B
	jp	nz,00102$
	jr	00121$
00120$:
	jp	00102$
00121$:
;	genLabel
00101$:
;	_isspace.c 33
;	genRet
	ld	e,#0x01
	jp	00108$
;	genLabel
00102$:
;	_isspace.c 34
;	genRet
	ld	e,#0x00
;	genLabel
00108$:
;	genEndFunction
	
	ret
___isspace_end:
	.area _CODE

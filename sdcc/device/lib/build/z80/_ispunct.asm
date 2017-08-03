;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:42 2017

;--------------------------------------------------------
	.module _ispunct
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ispunct
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
;	_ispunct.c 25
;	genLabel
;	genFunction
;	---------------------------------
; Function ispunct
; ---------------------------------
___ispunct_start:
_ispunct:
	push	ix
	ld	ix,#0
	add	ix,sp
;	_ispunct.c 28
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	a,4(ix)
	push	af
	inc	sp
;	genCall
	call	_isprint
	ld	c,l
	inc	sp
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00102$
;	_ispunct.c 29
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	a,4(ix)
	push	af
	inc	sp
;	genCall
	call	_islower
	ld	c,l
	inc	sp
;	genIfx
	xor	a,a
	or	a,c
	jp	nz,00102$
;	_ispunct.c 30
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	a,4(ix)
	push	af
	inc	sp
;	genCall
	call	_isupper
	ld	c,l
	inc	sp
;	genIfx
	xor	a,a
	or	a,c
	jp	nz,00102$
;	_ispunct.c 31
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,4(ix)
	cp	a,#0x20
	jp	z,00102$
00114$:
;	_ispunct.c 32
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	a,4(ix)
	push	af
	inc	sp
;	genCall
	call	_isdigit
	ld	c,l
	inc	sp
;	genIfx
	xor	a,a
	or	a,c
	jp	nz,00102$
;	_ispunct.c 33
;	genRet
	ld	l,#0x01
	jp	00107$
;	genLabel
00102$:
;	_ispunct.c 34
;	genRet
	ld	l,#0x00
;	genLabel
00107$:
;	genEndFunction
	pop	ix

	ret
___ispunct_end:
	.area _CODE

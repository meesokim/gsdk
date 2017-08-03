;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:44 2017

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
	push	ix
	ld	ix,#0
	add	ix,sp
;	_strpbrk.c 34
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genLabel
00103$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genAssign
	ld	d,e
;	genIfx
	xor	a,a
	or	a,e
	jp	z,00105$
;	_strpbrk.c 35
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,d
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genCall
	call	_strchr
	ld	d,h
	ld	e,l
	pop	hl
	inc	sp
	pop	bc
;	genIfx
	ld	a,e
	or	a,d
	jp	z,00103$
;	_strpbrk.c 36
;	genRet
	ld	l,c
	ld	h,b
	jp	00106$
;	genLabel
00105$:
;	_strpbrk.c 39
;	genRet
	ld	hl,#0x0000
;	genLabel
00106$:
;	genEndFunction
	pop	ix

	ret
___strpbrk_end:
	.area _CODE

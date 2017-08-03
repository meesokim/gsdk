;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:43 2017

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
	push	ix
	ld	ix,#0
	add	ix,sp
;	_strchr.c 32
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genLabel
00102$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genIfx
	xor	a,a
	or	a,e
	jp	z,00104$
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,6(ix)
	cp	e
	jp	z,00104$
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
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,6(ix)
	cp	e
	jp	z,00115$
00114$:
	jp	00106$
00115$:
;	_strchr.c 36
;	genRet
	ld	l,c
	ld	h,b
	jp	00107$
;	genLabel
00106$:
;	_strchr.c 37
;	genRet
	ld	hl,#0x0000
;	genLabel
00107$:
;	genEndFunction
	pop	ix

	ret
___strchr_end:
	.area _CODE

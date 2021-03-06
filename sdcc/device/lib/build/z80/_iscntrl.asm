;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:41 2017

;--------------------------------------------------------
	.module _iscntrl
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _iscntrl
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
;	_iscntrl.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function iscntrl
; ---------------------------------
___iscntrl_start:
_iscntrl:
	push	ix
	ld	ix,#0
	add	ix,sp
;	_iscntrl.c 30
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x1F
	sub	a,4(ix)
	jp	nc,00101$
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,4(ix)
	cp	a,#0x7F
	jp	z,00108$
00107$:
	jp	00102$
00108$:
;	genLabel
00101$:
;	_iscntrl.c 31
;	genRet
	ld	l,#0x01
	jp	00104$
;	genLabel
00102$:
;	_iscntrl.c 32
;	genRet
	ld	l,#0x00
;	genLabel
00104$:
;	genEndFunction
	pop	ix

	ret
___iscntrl_end:
	.area _CODE

;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:45 2017

;--------------------------------------------------------
	.module _strspn
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strspn
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
;	_strspn.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strspn
; ---------------------------------
___strspn_start:
_strspn:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	_strspn.c 35
;	genAssign
;	AOP_STK for _strspn_count_1_1
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genLabel
00104$:
;	genPointerGet
	ld	a,(de)
	ld	c,a
;	genAssign
	ld	b,c
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00106$
;	_strspn.c 36
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	ld	a,b
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genCall
	call	_strchr
	ld	b,h
	ld	c,l
	pop	hl
	inc	sp
	pop	de
;	genIfx
	ld	a,c
	or	a,b
	jp	z,00106$
;	_strspn.c 37
;	genPlus
;	AOP_STK for _strspn_count_1_1
;	genPlusIncr
	inc	-2(ix)
	jp	nz,00112$
	inc	-1(ix)
00112$:
;	_strspn.c 40
;	genPlus
;	genPlusIncr
	inc	de
;	genGoto
	jp	00104$
;	genLabel
00106$:
;	_strspn.c 43
;	genRet
;	AOP_STK for _strspn_count_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
;	genLabel
00107$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___strspn_end:
	.area _CODE

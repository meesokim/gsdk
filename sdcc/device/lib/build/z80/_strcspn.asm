;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:44 2017

;--------------------------------------------------------
	.module _strcspn
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcspn
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
;	_strcspn.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strcspn
; ---------------------------------
___strcspn_start:
_strcspn:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	_strcspn.c 35
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genAssign
;	AOP_STK for _strcspn_count_1_1
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;	genLabel
00104$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genAssign
	ld	d,e
;	genIfx
	xor	a,a
	or	a,e
	jp	z,00106$
;	_strcspn.c 36
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
	jp	nz,00106$
;	_strcspn.c 39
;	genPlus
;	AOP_STK for _strcspn_count_1_1
;	genPlusIncr
	inc	-2(ix)
;	genGoto
	jp	nz,00104$
	inc	-1(ix)
00112$:
	jp	00104$
;	genLabel
00106$:
;	_strcspn.c 42
;	genRet
;	AOP_STK for _strcspn_count_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
;	genLabel
00107$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___strcspn_end:
	.area _CODE

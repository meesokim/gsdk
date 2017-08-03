;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:45 2017

;--------------------------------------------------------
	.module _strtok
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtok
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
_strtok_s_1_1:
	.ds 2
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
;	_strtok.c 32
;	genLabel
;	genFunction
;	---------------------------------
; Function strtok
; ---------------------------------
___strtok_start:
_strtok:
	push	ix
	ld	ix,#0
	add	ix,sp
;	_strtok.c 39
;	genIfx
;	AOP_STK for 
	ld	a,4(ix)
	or	a,5(ix)
	jp	z,00102$
;	_strtok.c 40
;	genAssign
;	AOP_STK for 
	ld	a,4(ix)
	ld	iy,#_strtok_s_1_1
	ld	0(iy),a
	ld	a,5(ix)
	ld	1(iy),a
;	genLabel
00102$:
;	_strtok.c 42
;	genAssign
	ld	bc,(_strtok_s_1_1)
;	_strtok.c 44
;	genLabel
00105$:
;	genAssign
	ld	de,(_strtok_s_1_1)
;	genPointerGet
	ld	a,(de)
;	genIfx
	or	a,a
	jp	z,00107$
;	_strtok.c 45
;	genAssign
	ld	de,(_strtok_s_1_1)
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,e
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
	jp	z,00104$
;	_strtok.c 46
;	genAssign
	ld	de,(_strtok_s_1_1)
;	genPlus
;	genPlusIncr
	ld	iy,#_strtok_s_1_1
	inc	0(iy)
	jp	nz,00114$
	inc	1(iy)
00114$:
;	genAssign (pointer)
	ld	a,#0x00
	ld	(de),a
;	_strtok.c 47
;	genRet
	ld	l,c
	ld	h,b
	jp	00108$
;	genLabel
00104$:
;	_strtok.c 49
;	genPlus
;	genPlusIncr
	ld	iy,#_strtok_s_1_1
	inc	0(iy)
;	genGoto
	jp	nz,00105$
	inc	1(iy)
00115$:
	jp	00105$
;	genLabel
00107$:
;	_strtok.c 51
;	genRet
	ld	hl,#0x0000
;	genLabel
00108$:
;	genEndFunction
	pop	ix

	ret
___strtok_end:
	.area _CODE

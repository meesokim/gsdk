;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:45 2017

;--------------------------------------------------------
	.module _strrchr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr
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
;	_strrchr.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strrchr
; ---------------------------------
___strrchr_start:
_strrchr:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	_strrchr.c 32
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strrchr_start_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;	_strrchr.c 34
;	genAssign
;	AOP_STK for _strrchr_start_1_1
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genLabel
00101$:
;	genPointerGet
	ld	a,(de)
	ld	c,a
;	genPlus
;	genPlusIncr
	inc	de
;	genAssign
;	AOP_STK for 
	ld	4(ix),e
	ld	5(ix),d
;	genIfx
	xor	a,a
	or	a,c
	jp	nz,00101$
;	_strrchr.c 37
;	genLabel
00105$:
;	genMinus
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
	dec	bc
;	genAssign
;	AOP_STK for 
	ld	4(ix),c
	ld	5(ix),b
;	genCmpEq
;	AOP_STK for _strrchr_start_1_1
; genCmpEq: left 2, right 2, result 0
	ld	a,-2(ix)
	cp	c
	jp	nz,00116$
	ld	a,-1(ix)
	cp	b
	jp	z,00107$
00116$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,6(ix)
	cp	e
	jp	z,00118$
00117$:
	jp	00105$
00118$:
;	genLabel
00107$:
;	_strrchr.c 40
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,6(ix)
	cp	e
	jp	z,00120$
00119$:
	jp	00109$
00120$:
;	_strrchr.c 41
;	genRet
	ld	l,c
	ld	h,b
	jp	00110$
;	genLabel
00109$:
;	_strrchr.c 43
;	genRet
	ld	hl,#0x0000
;	genLabel
00110$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___strrchr_end:
	.area _CODE

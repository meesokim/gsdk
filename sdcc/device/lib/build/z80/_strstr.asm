;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:45 2017

;--------------------------------------------------------
	.module _strstr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;	_strstr.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strstr
; ---------------------------------
___strstr_start:
_strstr:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl

;	_strstr.c 32
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strstr_cp_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;	_strstr.c 36
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strstr_sloc0_1_0
	ld	a,6(ix)
	ld	-8(ix),a
	ld	a,7(ix)
	ld	-7(ix),a
;	genPointerGet
;	AOP_STK for _strstr_sloc0_1_0
	ld	l,-8(ix)
	ld	h,-7(ix)
	ld	a,(hl)
;	genIfx
	or	a,a
	jp	nz,00122$
;	_strstr.c 37
;	genRet
;	AOP_STK for _strstr_cp_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	jp	00113$
;	_strstr.c 39
;	genLabel
00122$:
;	genAssign
;	AOP_STK for _strstr_cp_1_1
;	(registers are the same)
;	genLabel
00110$:
;	genPointerGet
;	AOP_STK for _strstr_cp_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genIfx
	or	a,a
	jp	z,00112$
;	_strstr.c 42
;	genAssign
;	AOP_STK for _strstr_sloc0_1_0
;	AOP_STK for _strstr_s2_1_1
	ld	a,-8(ix)
	ld	-6(ix),a
	ld	a,-7(ix)
	ld	-5(ix),a
;	_strstr.c 44
;	genAssign
;	AOP_STK for _strstr_cp_1_1
;	AOP_STK for _strstr_s1_1_1
	ld	a,-2(ix)
	ld	-4(ix),a
	ld	a,-1(ix)
	ld	-3(ix),a
;	genAssign
;	AOP_STK for _strstr_s2_1_1
;	(registers are the same)
;	genLabel
00105$:
;	genPointerGet
;	AOP_STK for _strstr_s1_1_1
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	e,(hl)
;	genIfx
	xor	a,a
	or	a,e
	jp	z,00107$
;	genPointerGet
;	AOP_STK for _strstr_s2_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	d,(hl)
;	genIfx
	xor	a,a
	or	a,d
	jp	z,00107$
;	genMinus
	ld	a,e
	sub	a,d
	ld	c,a
;	genIfx
	xor	a,a
	or	a,c
	jp	nz,00107$
;	_strstr.c 45
;	genPlus
;	AOP_STK for _strstr_s1_1_1
;	genPlusIncr
	inc	-4(ix)
	jp	nz,00123$
	inc	-3(ix)
00123$:
;	genPlus
;	AOP_STK for _strstr_s2_1_1
;	genPlusIncr
	inc	-6(ix)
;	genGoto
	jp	nz,00105$
	inc	-5(ix)
00124$:
	jp	00105$
;	genLabel
00107$:
;	_strstr.c 47
;	genPointerGet
;	AOP_STK for _strstr_s2_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	a,(hl)
;	genIfx
	or	a,a
	jp	nz,00109$
;	_strstr.c 48
;	genRet
;	AOP_STK for _strstr_cp_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	jp	00113$
;	genLabel
00109$:
;	_strstr.c 50
;	genPlus
;	AOP_STK for _strstr_cp_1_1
;	genPlusIncr
	inc	-2(ix)
;	genAssign
;	AOP_STK for _strstr_cp_1_1
;	(registers are the same)
;	genGoto
	jp	nz,00110$
	inc	-1(ix)
00125$:
	jp	00110$
;	genLabel
00112$:
;	_strstr.c 53
;	genRet
	ld	hl,#0x0000
;	genLabel
00113$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___strstr_end:
	.area _CODE

;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:46 2017

;--------------------------------------------------------
	.module _modslong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslong
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
;	_modslong.c 255
;	genLabel
;	genFunction
;	---------------------------------
; Function _modslong
; ---------------------------------
____modslong_start:
__modslong:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-18
	add	hl,sp
	ld	sp,hl

;	_modslong.c 260
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for __modslong_sloc4_1_0
	ld	a,11(ix)
	rlc	a
	ld	a,#0x00
	rla
;	genIfx
;	AOP_STK for __modslong_sloc4_1_0
	ld      -18(ix),a
	or      a,a
	jp	z,00106$
;	genUminus
;	AOP_STK for 
;	AOP_STK for __modslong_sloc0_1_0
	xor     a,a
	sbc	a,8(ix)
	ld	-8(ix),a
	ld	a,#0x00
	sbc	a,9(ix)
	ld	-7(ix),a
	ld	a,#0x00
	sbc	a,10(ix)
	ld	-6(ix),a
	ld	a,#0x00
	sbc	a,11(ix)
	ld	-5(ix),a
;	genGoto
	jp	00107$
;	genLabel
00106$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __modslong_sloc0_1_0
	ld	a,8(ix)
	ld	-8(ix),a
	ld	a,9(ix)
	ld	-7(ix),a
	ld	a,10(ix)
	ld	-6(ix),a
	ld	a,11(ix)
	ld	-5(ix),a
;	genLabel
00107$:
;	genAssign
;	AOP_STK for __modslong_sloc0_1_0
;	AOP_STK for __modslong_sloc1_1_0
	ld	a,-8(ix)
	ld	-12(ix),a
	ld	a,-7(ix)
	ld	-11(ix),a
	ld	a,-6(ix)
	ld	-10(ix),a
	ld	a,-5(ix)
	ld	-9(ix),a
;	_modslong.c 259
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for __modslong_sloc3_1_0
	ld	a,7(ix)
	rlc	a
	ld	a,#0x00
	rla
;	genIfx
;	AOP_STK for __modslong_sloc3_1_0
	ld      -17(ix),a
	or      a,a
	jp	z,00108$
;	genUminus
;	AOP_STK for 
;	AOP_STK for __modslong_sloc0_1_0
	xor     a,a
	sbc	a,4(ix)
	ld	-8(ix),a
	ld	a,#0x00
	sbc	a,5(ix)
	ld	-7(ix),a
	ld	a,#0x00
	sbc	a,6(ix)
	ld	-6(ix),a
	ld	a,#0x00
	sbc	a,7(ix)
	ld	-5(ix),a
;	genGoto
	jp	00109$
;	genLabel
00108$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __modslong_sloc0_1_0
	ld	a,4(ix)
	ld	-8(ix),a
	ld	a,5(ix)
	ld	-7(ix),a
	ld	a,6(ix)
	ld	-6(ix),a
	ld	a,7(ix)
	ld	-5(ix),a
;	genLabel
00109$:
;	genAssign
;	AOP_STK for __modslong_sloc0_1_0
;	AOP_STK for __modslong_sloc2_1_0
	ld	a,-8(ix)
	ld	-16(ix),a
	ld	a,-7(ix)
	ld	-15(ix),a
	ld	a,-6(ix)
	ld	-14(ix),a
	ld	a,-5(ix)
	ld	-13(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __modslong_sloc1_1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
;	AOP_STK for __modslong_sloc2_1_0
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genCall
	call	__modulong
;	AOP_STK for __modslong_r_1_1
	ld	-1(ix),d
	ld	-2(ix),e
	ld	-3(ix),h
	ld	-4(ix),l
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;	genAssign
;	AOP_STK for __modslong_r_1_1
	ld	e,-4(ix)
	ld	d,-3(ix)
	ld	b,-2(ix)
	ld	c,-1(ix)
;	_modslong.c 261
;	genXor
;	AOP_STK for __modslong_sloc3_1_0
;	AOP_STK for __modslong_sloc4_1_0
	ld	a,-18(ix)
	xor	a,-17(ix)
;	genIfx
	or	a,a
	jp	z,00102$
;	_modslong.c 262
;	genUminus
;	AOP_STK for __modslong_sloc2_1_0
	xor     a,a
	sbc	a,e
	ld	-16(ix),a
	ld	a,#0x00
	sbc	a,d
	ld	-15(ix),a
	ld	a,#0x00
	sbc	a,b
	ld	-14(ix),a
	ld	a,#0x00
	sbc	a,c
	ld	-13(ix),a
;	genRet
;	AOP_STK for __modslong_sloc2_1_0
	ld	l,-16(ix)
	ld	h,-15(ix)
	ld	e,-14(ix)
	ld	d,-13(ix)
	jp	00104$
;	genLabel
00102$:
;	_modslong.c 264
;	genRet
	ld	l,e
	ld	h,d
	ld	e,b
	ld	d,c
;	genLabel
00104$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
____modslong_end:
	.area _CODE

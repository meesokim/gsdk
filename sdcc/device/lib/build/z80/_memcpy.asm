;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:43 2017

;--------------------------------------------------------
	.module _memcpy
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
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
;	_memcpy.c 31
;	genLabel
;	genFunction
;	---------------------------------
; Function memcpy
; ---------------------------------
___memcpy_start:
_memcpy:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	_memcpy.c 41
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	_memcpy.c 42
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memcpy_s_1_1
	ld	a,6(ix)
	ld	-2(ix),a
	ld	a,7(ix)
	ld	-1(ix),a
;	_memcpy.c 43
;	genUminus
;	AOP_STK for 
	xor     a,a
	sbc	a,8(ix)
	ld	c,a
	ld	a,#0x00
	sbc	a,9(ix)
	ld	b,a
;	genAssign
;	(registers are the same)
;	_memcpy.c 45
;	genRightShift
	sra	b
	rr	c
	sra	b
	rr	c
;	_memcpy.c 47
;	genLabel
00101$:
;	genIfx
	ld	a,c
	or	a,b
	jp	z,00103$
;	_memcpy.c 48
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jp	nz,00116$
	inc	-1(ix)
00116$:
;	genAssign (pointer)
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;	_memcpy.c 49
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jp	nz,00117$
	inc	-1(ix)
00117$:
;	genAssign (pointer)
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;	_memcpy.c 50
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jp	nz,00118$
	inc	-1(ix)
00118$:
;	genAssign (pointer)
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;	_memcpy.c 51
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jp	nz,00119$
	inc	-1(ix)
00119$:
;	genAssign (pointer)
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;	_memcpy.c 52
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00101$
;	genLabel
00103$:
;	_memcpy.c 55
;	genAnd
;	AOP_STK for 
	ld	a,8(ix)
	and	a,#0x02
	jp	z,00105$
00120$:
;	_memcpy.c 56
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jp	nz,00121$
	inc	-1(ix)
00121$:
;	genAssign (pointer)
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;	_memcpy.c 57
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jp	nz,00122$
	inc	-1(ix)
00122$:
;	genAssign (pointer)
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;	genLabel
00105$:
;	_memcpy.c 59
;	genAnd
;	AOP_STK for 
	ld	a,8(ix)
	and	a,#0x01
	jp	z,00107$
00123$:
;	_memcpy.c 60
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genAssign (pointer)
	ld	(de),a
;	genLabel
00107$:
;	_memcpy.c 62
;	genRet
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
;	genLabel
00108$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___memcpy_end:
	.area _CODE

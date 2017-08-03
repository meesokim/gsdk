;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:47 2017

;--------------------------------------------------------
	.module printf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __char_emitter
	.globl __printf
	.globl __printn
	.globl _printf
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
;	printf.c 13
;	genLabel
;	genFunction
;	---------------------------------
; Function _printn
; ---------------------------------
____printn_start:
__printn:
	push	ix
	ld	ix,#0
	add	ix,sp
;	printf.c 15
;	printf.c 16
;	genIfx
;	AOP_STK for 
	xor	a,a
	or	a,8(ix)
	jp	z,00102$
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genCmpLt
	ld	a,b
	bit	7,a
	jp	z,00102$
;	printf.c 17
;	genAssign
;	AOP_STK for 
	ld	c,9(ix)
	ld	b,10(ix)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,11(ix)
	ld	h,12(ix)
	push	hl
;	genIpush
	ld	a,#0x2D
	push	af
	inc	sp
;	genPcall
	ld	hl,#00111$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00111$:
	pop	hl
	inc	sp
;	printf.c 18
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genUminus
	xor     a,a
	sbc	a,c
	ld	c,a
	ld	a,#0x00
	sbc	a,b
	ld	b,a
;	genAssign
;	AOP_STK for 
	ld	4(ix),c
	ld	5(ix),b
;	genLabel
00102$:
;	printf.c 20
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for 
	ld	a,4(ix)
	sub	a,6(ix)
	ld	a,5(ix)
	sbc	a,7(ix)
	jp	c,00105$
;	printf.c 21
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__divuint_rrx_s
	ld	b,h
	ld	c,l
	pop	hl
	pop	hl
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,11(ix)
	ld	h,12(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,9(ix)
	ld	h,10(ix)
	push	hl
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	bc
;	genCall
	call	__printn
	ld	hl,#9
	add	hl,sp
	ld	sp,hl
;	genLabel
00105$:
;	printf.c 22
;	genAssign
;	AOP_STK for 
	ld	c,9(ix)
	ld	b,10(ix)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__moduint_rrx_s
	ld	d,h
	ld	e,l
	pop	hl
	pop	hl
	pop	bc
;	genPlus
;	Can't optimise plus by inc, falling back to the normal way
	ld	hl,#__str_0
	add	hl,de
	ld	e,l
	ld	d,h
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,11(ix)
	ld	h,12(ix)
	push	hl
;	genIpush
	ld	a,e
	push	af
	inc	sp
;	genPcall
	ld	hl,#00112$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00112$:
	pop	hl
	inc	sp
;	genLabel
00106$:
;	genEndFunction
	pop	ix

	ret
____printn_end:
__str_0:
	.ascii "0123456789ABCDEF"
	.db 0x00
;	printf.c 25
;	genLabel
;	genFunction
;	---------------------------------
; Function _printf
; ---------------------------------
____printf_start:
__printf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	printf.c 27
;	genAssign
;	AOP_STK for 
	ld	c,6(ix)
	ld	b,7(ix)
;	genLabel
00113$:
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genPointerGet
;	AOP_STK for __printf_sloc0_1_0
	ld	a,(de)
;	genIfx
;	AOP_STK for __printf_sloc0_1_0
	ld      -1(ix),a
	or      a,a
	jp	z,00116$
;	printf.c 28
;	genCmpEq
;	AOP_STK for __printf_sloc0_1_0
; genCmpEq: left 1, right 1, result 0
	ld	a,-1(ix)
	cp	a,#0x25
	jp	z,00129$
00128$:
	jp	00111$
00129$:
;	printf.c 29
;	genPlus
;	genPlusIncr
	inc	de
;	genAssign
;	AOP_STK for 
	ld	4(ix),e
	ld	5(ix),d
;	genPointerGet
	ld	a,(de)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	e,a
	cp	a,#0x63
	jp	z,00101$
00130$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	cp	a,#0x64
	jp	z,00103$
00131$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	cp	a,#0x73
	jp	z,00108$
00132$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	cp	a,#0x75
	jp	z,00102$
00133$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	cp	a,#0x78
	jp	z,00104$
00134$:
;	genGoto
	jp	00112$
;	printf.c 34
;	genLabel
00101$:
;	printf.c 31
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	e,10(ix)
	ld	d,11(ix)
	inc	de
	inc	de
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	dec	de
	dec	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genCast
; Removed redundent load
;	printf.c 32
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
	ld	a,e
	push	af
	inc	sp
;	genPcall
	ld	hl,#00135$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00135$:
	pop	hl
	inc	sp
;	printf.c 33
;	genGoto
	jp	00112$
;	printf.c 40
;	genLabel
00102$:
;	printf.c 37
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	e,10(ix)
	ld	d,11(ix)
	inc	de
	inc	de
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	dec	de
	dec	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAssign
;	(registers are the same)
;	printf.c 38
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
	push	bc
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genIpush
	ld	hl,#0x000A
	push	hl
;	genIpush
	push	de
;	genCall
	call	__printn
	ld	hl,#9
	add	hl,sp
	ld	sp,hl
	pop	bc
;	printf.c 39
;	genGoto
	jp	00112$
;	printf.c 46
;	genLabel
00103$:
;	printf.c 43
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	e,10(ix)
	ld	d,11(ix)
	inc	de
	inc	de
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	dec	de
	dec	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAssign
;	(registers are the same)
;	printf.c 44
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
	push	bc
;	genIpush
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
	ld	hl,#0x000A
	push	hl
;	genIpush
	push	de
;	genCall
	call	__printn
	ld	hl,#9
	add	hl,sp
	ld	sp,hl
	pop	bc
;	printf.c 45
;	genGoto
	jp	00112$
;	printf.c 52
;	genLabel
00104$:
;	printf.c 49
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	e,10(ix)
	ld	d,11(ix)
	inc	de
	inc	de
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	dec	de
	dec	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAssign
;	(registers are the same)
;	printf.c 50
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
	push	bc
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genIpush
	ld	hl,#0x0010
	push	hl
;	genIpush
	push	de
;	genCall
	call	__printn
	ld	hl,#9
	add	hl,sp
	ld	sp,hl
	pop	bc
;	printf.c 51
;	genGoto
	jp	00112$
;	printf.c 60
;	genLabel
00108$:
;	printf.c 55
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	e,10(ix)
	ld	d,11(ix)
	inc	de
	inc	de
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	dec	de
	dec	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAssign
;	(registers are the same)
;	printf.c 56
;	genAssign
;	(registers are the same)
;	genLabel
00105$:
;	genPointerGet
;	AOP_STK for __printf_sloc1_1_0
	ld	a,(de)
;	genIfx
;	AOP_STK for __printf_sloc1_1_0
	ld      -2(ix),a
	or      a,a
	jp	z,00112$
;	printf.c 57
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
;	AOP_STK for __printf_sloc1_1_0
	ld	a,-2(ix)
	push	af
	inc	sp
;	genPcall
	ld	hl,#00136$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00136$:
	pop	hl
	inc	sp
	pop	de
;	printf.c 58
;	genPlus
;	genPlusIncr
	inc	de
;	genGoto
	jp	00105$
;	printf.c 61
;	genLabel
00111$:
;	printf.c 64
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
;	AOP_STK for __printf_sloc0_1_0
	ld	a,-1(ix)
	push	af
	inc	sp
;	genPcall
	ld	hl,#00137$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00137$:
	pop	hl
	inc	sp
;	genLabel
00112$:
;	printf.c 66
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	ld	a,e
	add	a,#0x01
	ld	4(ix),a
	ld	a,d
	adc	a,#0x00
	ld	5(ix),a
;	genGoto
	jp	00113$
;	genLabel
00116$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
____printf_end:
;	printf.c 72
;	genLabel
;	genFunction
;	---------------------------------
; Function _char_emitter
; ---------------------------------
____char_emitter_start:
__char_emitter:
	push	ix
	ld	ix,#0
	add	ix,sp
;	printf.c 77
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	a,4(ix)
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;	genLabel
00101$:
;	genEndFunction
	pop	ix

	ret
____char_emitter_end:
;	printf.c 80
;	genLabel
;	genFunction
;	---------------------------------
; Function printf
; ---------------------------------
___printf_start:
_printf:
	push	ix
	ld	ix,#0
	add	ix,sp
;	printf.c 83
;	genAddrOf
	ld	hl,#4+0+0+0
	add	hl,sp
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
;	printf.c 85
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
	ld	hl,#0x0000
	push	hl
;	genIpush
	ld	hl,#__char_emitter
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__printf
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;	printf.c 88
;	genRet
	ld	hl,#0x0000
;	genLabel
00101$:
;	genEndFunction
	pop	ix

	ret
___printf_end:
	.area _CODE

;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:53 2017

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
	lda	sp,-4(sp)
;	printf.c 15
;	printf.c 16
;	genIfx
;	AOP_STK for 
	xor	a,a
	lda	hl,10(sp)
	or	a,(hl)
	jp	z,00102$
;	genAssign
;	AOP_STK for 
	lda	hl,6(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genCmpLt
	ld	a,b
	bit	7,a
	jp	z,00102$
;	printf.c 17
;	genAssign
;	AOP_STK for 
	lda	hl,11(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
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
	lda	sp,3(sp)
;	printf.c 18
;	genAssign
;	AOP_STK for 
	lda	hl,6(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genUminus
	xor     a,a
	sbc	a,c
	ld	c,a
	ld	a,#0x00
	sbc	a,b
	ld	b,a
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genLabel
00102$:
;	printf.c 20
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl+)
	inc	hl
	sub	a,(hl)
	dec	hl
	ld	a,(hl+)
	inc	hl
	sbc	a,(hl)
	jp	c,00105$
;	printf.c 21
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__divuint_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,4(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	push	bc
;	genCall
	call	__printn
	lda	sp,9(sp)
;	genLabel
00105$:
;	printf.c 22
;	genAssign
;	AOP_STK for 
	lda	hl,11(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__moduint_rrx_s
;	AOP_STK for __printn_sloc0_1_0
	lda	hl,9(sp)
	ld	(hl),d
	dec	hl
	ld	(hl),e
	lda	sp,4(sp)
	pop	bc
;	genPlus
;	AOP_STK for __printn_sloc0_1_0
;	AOP_STK for __printn_sloc1_1_0
;	Can't optimise plus by inc, falling back to the normal way
	ld	de,#__str_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
;	genPointerGet
;	AOP_STK for __printn_sloc1_1_0
;	AOP_STK for __printn_sloc0_1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __printn_sloc0_1_0
	lda	hl,4(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
	ld	hl,#00112$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00112$:
	lda	sp,3(sp)
;	genLabel
00106$:
;	genEndFunction
	lda	sp,4(sp)
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
	lda	sp,-14(sp)
;	printf.c 27
;	genAssign
;	AOP_STK for 
	lda	hl,18(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00113$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __printf_sloc0_1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for __printf_sloc0_1_0
;	AOP_STK for __printf_sloc1_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
	ld	(hl),a
;	genIfx
;	AOP_STK for __printf_sloc1_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00116$
;	printf.c 28
;	genCmpEq
;	AOP_STK for __printf_sloc1_1_0
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl)
	cp	a,#0x25
	jp	nz,00111$
	jr	00129$
00128$:
	jp	00111$
00129$:
;	printf.c 29
;	genPlus
;	AOP_STK for __printf_sloc0_1_0
;	AOP_STK for 
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	lda	hl,3(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,16(sp)
;	genAssign
;	(operands are equal 4)
;	genPointerGet
;	AOP_STK for 
;	AOP_STK for __printf_sloc0_1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	lda	hl,3(sp)
;	genCmpEq
;	AOP_STK for __printf_sloc0_1_0
; genCmpEq: left 1, right 1, result 0
	ld      (hl),a
; Removed redundent load
	cp	a,#0x63
	jp	z,00101$
00130$:
;	genCmpEq
;	AOP_STK for __printf_sloc0_1_0
; genCmpEq: left 1, right 1, result 0
	lda	hl,3(sp)
	ld	a,(hl)
	cp	a,#0x64
	jp	z,00103$
00131$:
;	genCmpEq
;	AOP_STK for __printf_sloc0_1_0
; genCmpEq: left 1, right 1, result 0
	lda	hl,3(sp)
	ld	a,(hl)
	cp	a,#0x73
	jp	z,00108$
00132$:
;	genCmpEq
;	AOP_STK for __printf_sloc0_1_0
; genCmpEq: left 1, right 1, result 0
	lda	hl,3(sp)
	ld	a,(hl)
	cp	a,#0x75
	jp	z,00102$
00133$:
;	genCmpEq
;	AOP_STK for __printf_sloc0_1_0
; genCmpEq: left 1, right 1, result 0
	lda	hl,3(sp)
	ld	a,(hl)
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
;	Can't optimise plus by inc, falling back to the normal way
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,22(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign
;	(operands are equal 4)
;	genMinus
;	AOP_STK for 
;	AOP_STK for __printf_sloc0_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	lda	hl,4(sp)
	ld      (hl-),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for __printf_sloc0_1_0
;	AOP_STK for __printf_sloc2_1_0
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
;	genCast
;	AOP_STK for __printf_sloc2_1_0
;	AOP_STK for __printf_c_5_5
	ld      (hl-),a
	ld	a,(hl)
	lda	hl,13(sp)
	ld	(hl),a
;	printf.c 32
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __printf_c_5_5
	lda	hl,15(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
	ld	hl,#00135$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00135$:
	lda	sp,3(sp)
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
;	Can't optimise plus by inc, falling back to the normal way
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,22(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign
;	(operands are equal 4)
;	genMinus
;	AOP_STK for 
;	AOP_STK for __printf_sloc2_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	lda	hl,1(sp)
	ld      (hl-),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for __printf_sloc2_1_0
;	AOP_STK for __printf_u_5_6
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,11(sp)
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genAssign
;	AOP_STK for __printf_u_5_6
;	(registers are the same)
;	printf.c 38
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
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
;	AOP_STK for __printf_u_5_6
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__printn
	lda	sp,9(sp)
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
;	Can't optimise plus by inc, falling back to the normal way
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,22(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign
;	(operands are equal 4)
;	genMinus
;	AOP_STK for 
;	AOP_STK for __printf_sloc2_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	lda	hl,1(sp)
	ld      (hl-),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for __printf_sloc2_1_0
;	AOP_STK for __printf_u_5_7
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,9(sp)
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genAssign
;	AOP_STK for __printf_u_5_7
;	(registers are the same)
;	printf.c 44
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
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
;	AOP_STK for __printf_u_5_7
	lda	hl,18(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__printn
	lda	sp,9(sp)
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
;	Can't optimise plus by inc, falling back to the normal way
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,22(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign
;	(operands are equal 4)
;	genMinus
;	AOP_STK for 
;	AOP_STK for __printf_sloc2_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	lda	hl,1(sp)
	ld      (hl-),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for __printf_sloc2_1_0
;	AOP_STK for __printf_u_5_8
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,7(sp)
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genAssign
;	AOP_STK for __printf_u_5_8
;	(registers are the same)
;	printf.c 50
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
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
;	AOP_STK for __printf_u_5_8
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__printn
	lda	sp,9(sp)
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
;	Can't optimise plus by inc, falling back to the normal way
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,22(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign
;	(operands are equal 4)
;	genMinus
;	AOP_STK for 
;	AOP_STK for __printf_sloc2_1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	lda	hl,1(sp)
	ld      (hl-),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for __printf_sloc2_1_0
;	AOP_STK for __printf_s_5_9
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,5(sp)
	ld	(hl),a
	inc	de
	ld	a,(de)
	inc	hl
	ld	(hl),a
;	genAssign
;	AOP_STK for __printf_s_5_9
;	(registers are the same)
;	printf.c 56
;	genAssign
;	AOP_STK for __printf_s_5_9
;	(registers are the same)
;	genLabel
00105$:
;	genPointerGet
;	AOP_STK for __printf_s_5_9
;	AOP_STK for __printf_sloc2_1_0
	lda	hl,5(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl),a
;	genIfx
;	AOP_STK for __printf_sloc2_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00112$
;	printf.c 57
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __printf_sloc2_1_0
	lda	hl,2(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
	ld	hl,#00136$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00136$:
	lda	sp,3(sp)
;	printf.c 58
;	genPlus
;	AOP_STK for __printf_s_5_9
;	genPlusIncr
	lda	hl,5(sp)
	inc	(hl)
	jr	nz,00137$
	inc	hl
	inc	(hl)
00137$:
;	genGoto
	jp	00105$
;	printf.c 61
;	genLabel
00111$:
;	printf.c 64
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __printf_sloc1_1_0
	lda	hl,4(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
	ld	hl,#00138$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00138$:
	lda	sp,3(sp)
;	genLabel
00112$:
;	printf.c 66
;	genAssign
;	AOP_STK for 
;	AOP_STK for __printf_sloc2_1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPlus
;	AOP_STK for __printf_sloc2_1_0
;	AOP_STK for 
;	genPlusIncr
;	Can't optimise plus by inc, falling back to the normal way
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),d
;	genGoto
	jp	00113$
;	genLabel
00116$:
;	genEndFunction
	lda	sp,14(sp)
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
	
;	printf.c 77
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
;	genLabel
00101$:
;	genEndFunction
	
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
	
;	printf.c 83
;	genAddrOf
	lda	hl,2(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	ld	l,c
	ld	h,b
	inc	hl
	inc	hl
;	printf.c 85
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	hl
;	genIpush
	ld	hl,#0x0000
	push	hl
;	genIpush
	ld	hl,#__char_emitter
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__printf
	lda	sp,8(sp)
;	printf.c 88
;	genRet
	ld	de,#0x0000
;	genLabel
00101$:
;	genEndFunction
	
	ret
___printf_end:
	.area _CODE

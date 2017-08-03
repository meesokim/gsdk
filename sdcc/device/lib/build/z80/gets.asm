;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:45 2017

;--------------------------------------------------------
	.module gets
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets
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
;	gets.c 3
;	genLabel
;	genFunction
;	---------------------------------
; Function gets
; ---------------------------------
___gets_start:
_gets:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-3
	add	hl,sp
	ld	sp,hl

;	gets.c 4
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	gets.c 6
;	genAssign
;	AOP_STK for _gets_count_1_1
	ld	-3(ix),#0x00
	ld	-2(ix),#0x00
;	gets.c 8
;	genLabel
00109$:
;	gets.c 9
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	call	_getchar
;	AOP_STK for _gets_c_1_1
	ld	-1(ix),l
	pop	bc
;	genAssign
;	AOP_STK for _gets_c_1_1
	ld	e,-1(ix)
;	gets.c 10
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	cp	a,#0x08
	jp	z,00103$
00118$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	cp	a,#0x0A
	jp	z,00104$
00119$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	cp	a,#0x0D
	jp	z,00104$
00120$:
;	genGoto
	jp	00106$
;	gets.c 19
;	genLabel
00103$:
;	gets.c 12
;	genIfx
;	AOP_STK for _gets_count_1_1
	ld	a,-3(ix)
	or	a,-2(ix)
	jp	z,00109$
;	gets.c 13
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
	ld	a,#0x08
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
	pop	hl
	ld	e,l
	pop	bc
;	gets.c 14
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
	ld	a,#0x20
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
	pop	hl
	ld	e,l
	pop	bc
;	gets.c 15
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
	ld	a,#0x08
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
	pop	hl
	ld	e,l
	pop	bc
;	gets.c 16
;	genMinus
	dec	bc
;	gets.c 17
;	genMinus
;	AOP_STK for _gets_count_1_1
	ld	l,-3(ix)
	ld	h,-2(ix)
	dec	hl
	ld	a,l
	ld	d,h
	ld	-3(ix),a
	ld	-2(ix),d
;	gets.c 19
;	genGoto
	jp	00109$
;	gets.c 22
;	genLabel
00104$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
	ld	a,#0x0D
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
	pop	hl
	ld	e,l
	pop	bc
;	gets.c 23
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
	ld	a,#0x0A
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
	pop	hl
	ld	e,l
	pop	bc
;	gets.c 24
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	gets.c 25
;	genRet
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	jp	00111$
;	gets.c 27
;	genLabel
00106$:
;	genAssign (pointer)
	ld	a,e
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;	gets.c 28
;	genPlus
;	AOP_STK for _gets_count_1_1
;	genPlusIncr
	inc	-3(ix)
	jp	nz,00121$
	inc	-2(ix)
00121$:
;	gets.c 29
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,e
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
	pop	bc
;	gets.c 31
;	genGoto
	jp	00109$
;	genLabel
00111$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___gets_end:
	.area _CODE

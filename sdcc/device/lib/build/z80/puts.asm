;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:45 2017

;--------------------------------------------------------
	.module puts
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _puts
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
;	puts.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function puts
; ---------------------------------
___puts_start:
_puts:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	puts.c 30
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genAssign
;	AOP_STK for _puts_i_1_1
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;	genLabel
00101$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genIfx
	xor	a,a
	or	a,e
	jp	z,00103$
;	puts.c 31
;	genPlus
;	genPlusIncr
	inc	bc
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
;	puts.c 32
;	genPlus
;	AOP_STK for _puts_i_1_1
;	genPlusIncr
	inc	-2(ix)
;	genGoto
	jp	nz,00101$
	inc	-1(ix)
00108$:
	jp	00101$
;	genLabel
00103$:
;	puts.c 34
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x0A
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;	puts.c 35
;	genPlus
;	AOP_STK for _puts_i_1_1
;	genPlusIncr
	ld	c,-2(ix)
	ld	b,-1(ix)
	inc	bc
;	genRet
	ld	l,c
	ld	h,b
;	genLabel
00104$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
___puts_end:
	.area _CODE

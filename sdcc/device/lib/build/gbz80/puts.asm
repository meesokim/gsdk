;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:51 2017

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
	lda	sp,-3(sp)
;	puts.c 30
;	genAssign
;	AOP_STK for 
	lda	hl,5(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign
;	AOP_STK for _puts_i_1_1
	lda	hl,1(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genLabel
00101$:
;	genPointerGet
;	AOP_STK for _puts_sloc0_1_0
	ld	a,(bc)
	lda	hl,0(sp)
	ld	(hl),a
;	genIfx
;	AOP_STK for _puts_sloc0_1_0
	xor	a,a
	or	a,(hl)
	jp	z,00103$
;	puts.c 31
;	genPlus
;	genPlusIncr
	inc	bc
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for _puts_sloc0_1_0
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
	pop	bc
;	puts.c 32
;	genPlus
;	AOP_STK for _puts_i_1_1
;	genPlusIncr
	lda	hl,1(sp)
	inc	(hl)
	jr	nz,00108$
	inc	hl
	inc	(hl)
00108$:
;	genGoto
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
	lda	sp,1(sp)
;	puts.c 35
;	genPlus
;	AOP_STK for _puts_i_1_1
;	genPlusIncr
	lda	hl,1(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;	genRet
	ld	e,c
	ld	d,b
;	genLabel
00104$:
;	genEndFunction
	lda	sp,3(sp)
	ret
___puts_end:
	.area _CODE

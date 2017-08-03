;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:51 2017

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
	lda	sp,-5(sp)
;	gets.c 4
;	genAssign
;	AOP_STK for 
;	AOP_STK for _gets_s_1_1
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),e
;	gets.c 6
;	genAssign
;	AOP_STK for _gets_count_1_1
	lda	hl,0(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	gets.c 8
;	genLabel
00109$:
;	gets.c 9
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_getchar
;	AOP_STK for _gets_c_1_1
	lda	hl,2(sp)
	ld	(hl),e
;	genAssign
;	AOP_STK for _gets_c_1_1
	lda	hl,2(sp)
	ld	c,(hl)
;	gets.c 10
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	a,#0x08
	jp	z,00103$
00118$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	cp	a,#0x0A
	jp	z,00104$
00119$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
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
	lda	hl,0(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	z,00109$
;	gets.c 13
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x08
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
	pop	hl
	ld	c,l
;	gets.c 14
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x20
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
	pop	hl
	ld	c,l
;	gets.c 15
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x08
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
	pop	hl
	ld	c,l
;	gets.c 16
;	genMinus
;	AOP_STK for _gets_s_1_1
	lda	hl,3(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	gets.c 17
;	genMinus
;	AOP_STK for _gets_count_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	gets.c 19
;	genGoto
	jp	00109$
;	gets.c 22
;	genLabel
00104$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x0D
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
	pop	hl
	ld	c,l
;	gets.c 23
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x0A
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
	pop	hl
	ld	c,l
;	gets.c 24
;	genAssign (pointer)
;	AOP_STK for _gets_s_1_1
	lda	hl,3(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	gets.c 25
;	genRet
;	AOP_STK for 
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00111$
;	gets.c 27
;	genLabel
00106$:
;	genAssign (pointer)
;	AOP_STK for _gets_s_1_1
	lda	hl,3(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genPlus
;	AOP_STK for _gets_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00121$
	inc	hl
	inc	(hl)
00121$:
;	gets.c 28
;	genPlus
;	AOP_STK for _gets_count_1_1
;	genPlusIncr
	lda	hl,0(sp)
	inc	(hl)
	jr	nz,00122$
	inc	hl
	inc	(hl)
00122$:
;	gets.c 29
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
;	gets.c 31
;	genGoto
	jp	00109$
;	genLabel
00111$:
;	genEndFunction
	lda	sp,5(sp)
	ret
___gets_end:
	.area _CODE

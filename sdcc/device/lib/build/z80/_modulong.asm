;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:46 2017

;--------------------------------------------------------
	.module _modulong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong
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
;	_modulong.c 335
;	genLabel
;	genFunction
;	---------------------------------
; Function _modulong
; ---------------------------------
____modulong_start:
__modulong:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl

;	_modulong.c 337
;	genAssign
;	AOP_STK for __modulong_count_1_1
	ld	-1(ix),#0x00
;	_modulong.c 339
;	genAssign
;	AOP_STK for __modulong_sloc0_1_0
	ld	-2(ix),#0x00
;	genLabel
00103$:
;	genGetHBIT
;	AOP_STK for 
	ld	a,11(ix)
	rlc	a
	and	a,#1
	ld	e,a
;	genIfx
	xor	a,a
	or	a,e
	jp	nz,00117$
;	_modulong.c 341
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genCall
	call	__rlulong_rrx_s
	ld	b,d
	ld	c,e
	ld	d,h
	ld	e,l
	pop	hl
	pop	hl
	inc	sp
;	genAssign
;	AOP_STK for 
	ld	8(ix),e
	ld	9(ix),d
	ld	10(ix),c
	ld	11(ix),b
;	_modulong.c 342
;	genCmpGt
;	AOP_STK for 
	ld	a,4(ix)
	sub	a,e
	ld	a,5(ix)
	sbc	a,d
	ld	a,6(ix)
	sbc	a,c
	ld	a,7(ix)
	sbc	a,b
	jp	nc,00102$
;	_modulong.c 344
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
	ld	l,c
	ld	h,b
	push	hl
	ld	l,e
	ld	h,d
	push	hl
;	genCall
	call	__rrulong_rrx_s
; Removed redundent load
; Removed redundent load
	ld	b,h
	ld	c,l
	pop	hl
	pop	hl
	inc	sp
;	genAssign
;	AOP_STK for 
	ld	8(ix),c
	ld	9(ix),b
	ld	10(ix),e
	ld	11(ix),d
;	_modulong.c 345
;	genGoto
	jp	00117$
;	genLabel
00102$:
;	_modulong.c 347
;	genPlus
;	AOP_STK for __modulong_sloc0_1_0
;	genPlusIncr
	inc	-2(ix)
;	genAssign
;	AOP_STK for __modulong_sloc0_1_0
;	AOP_STK for __modulong_count_1_1
	ld	a,-2(ix)
	ld	-1(ix),a
;	genGoto
	jp	00103$
;	_modulong.c 349
;	genLabel
00117$:
;	genAssign
;	AOP_STK for __modulong_count_1_1
	ld	c,-1(ix)
;	genLabel
00108$:
;	_modulong.c 351
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for 
	ld	a,4(ix)
	sub	a,8(ix)
	ld	a,5(ix)
	sbc	a,9(ix)
	ld	a,6(ix)
	sbc	a,10(ix)
	ld	a,7(ix)
	sbc	a,11(ix)
	jp	c,00107$
;	_modulong.c 352
;	genMinus
;	AOP_STK for 
;	AOP_STK for 
	ld	a,4(ix)
	sub	a,8(ix)
	ld	4(ix),a
	ld	a,5(ix)
	sbc	a,9(ix)
	ld	5(ix),a
	ld	a,6(ix)
	sbc	a,10(ix)
	ld	6(ix),a
	ld	a,7(ix)
	sbc	a,11(ix)
	ld	7(ix),a
;	genLabel
00107$:
;	_modulong.c 353
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for 
	ld	11(ix),d
	ld	10(ix),e
	ld	9(ix),h
	ld	8(ix),l
	pop	hl
	pop	hl
	inc	sp
	pop	hl
	ld	c,l
;	genAssign
;	(operands are equal 4)
;	_modulong.c 355
;	genAssign
	ld	b,c
;	genMinus
	dec	c
;	genIfx
	xor	a,a
	or	a,b
	jp	nz,00108$
;	_modulong.c 357
;	genRet
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	ld	e,6(ix)
	ld	d,7(ix)
;	genLabel
00111$:
;	genEndFunction
	ld	sp,ix
	pop	ix

	ret
____modulong_end:
	.area _CODE

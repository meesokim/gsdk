;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:51 2017

;--------------------------------------------------------
	.module _strspn
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strspn
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
;	_strspn.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strspn
; ---------------------------------
___strspn_start:
_strspn:
	lda	sp,-3(sp)
;	_strspn.c 35
;	genAssign
;	AOP_STK for _strspn_count_1_1
	lda	hl,1(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genAssign
;	(operands are equal 3)
;	genLabel
00104$:
;	genPointerGet
;	AOP_STK for 
;	AOP_STK for _strspn_ch_1_1
	lda	hl,5(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl),a
;	genAssign
;	AOP_STK for _strspn_ch_1_1
;	(registers are the same)
;	genIfx
;	AOP_STK for _strspn_ch_1_1
	xor	a,a
	or	a,(hl)
	jp	z,00106$
;	_strspn.c 36
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _strspn_ch_1_1
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_strchr
	ld	b,d
	ld	c,e
	lda	sp,3(sp)
;	genIfx
	ld	a,c
	or	a,b
	jp	z,00106$
;	_strspn.c 37
;	genPlus
;	AOP_STK for _strspn_count_1_1
;	genPlusIncr
	lda	hl,1(sp)
	inc	(hl)
	jr	nz,00112$
	inc	hl
	inc	(hl)
00112$:
;	_strspn.c 40
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,5(sp)
	inc	(hl)
	jr	nz,00113$
	inc	hl
	inc	(hl)
00113$:
;	genGoto
	jp	00104$
;	genLabel
00106$:
;	_strspn.c 43
;	genRet
;	AOP_STK for _strspn_count_1_1
	lda	hl,1(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00107$:
;	genEndFunction
	lda	sp,3(sp)
	ret
___strspn_end:
	.area _CODE

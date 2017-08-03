;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:50 2017

;--------------------------------------------------------
	.module _strcspn
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcspn
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
;	_strcspn.c 27
;	genLabel
;	genFunction
;	---------------------------------
; Function strcspn
; ---------------------------------
___strcspn_start:
_strcspn:
	lda	sp,-4(sp)
;	_strcspn.c 35
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcspn_sloc0_1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for _strcspn_count_1_1
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genLabel
00104$:
;	genPointerGet
;	AOP_STK for _strcspn_sloc0_1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genAssign
	ld	b,c
;	genIfx
	xor	a,a
	or	a,c
	jp	z,00106$
;	_strcspn.c 36
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,b
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,9(sp)
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
	jp	nz,00106$
;	_strcspn.c 39
;	genPlus
;	AOP_STK for _strcspn_count_1_1
;	genPlusIncr
	lda	hl,2(sp)
	inc	(hl)
	jr	nz,00112$
	inc	hl
	inc	(hl)
00112$:
;	genGoto
	jp	00104$
;	genLabel
00106$:
;	_strcspn.c 42
;	genRet
;	AOP_STK for _strcspn_count_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00107$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___strcspn_end:
	.area _CODE

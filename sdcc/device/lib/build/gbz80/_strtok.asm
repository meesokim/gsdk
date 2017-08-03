;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:51 2017

;--------------------------------------------------------
	.module _strtok
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtok
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
_strtok_s_1_1:
	.ds 2
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
;	_strtok.c 32
;	genLabel
;	genFunction
;	---------------------------------
; Function strtok
; ---------------------------------
___strtok_start:
_strtok:
	lda	sp,-2(sp)
;	_strtok.c 39
;	genIfx
;	AOP_STK for 
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	z,00102$
;	_strtok.c 40
;	genAssign
;	AOP_STK for 
;	AOP_HL for _strtok_s_1_1
	dec	hl
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_strtok_s_1_1
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00102$:
;	_strtok.c 42
;	genAssign
;	AOP_HL for _strtok_s_1_1
;	AOP_STK for _strtok_s1_1_1
	ld	hl,#_strtok_s_1_1
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	_strtok.c 44
;	genLabel
00105$:
;	genAssign
;	AOP_HL for _strtok_s_1_1
	ld	hl,#_strtok_s_1_1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jp	z,00107$
;	_strtok.c 45
;	genAssign
;	AOP_HL for _strtok_s_1_1
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,7(sp)
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
	jp	z,00104$
;	_strtok.c 46
;	genAssign
;	AOP_HL for _strtok_s_1_1
	ld	hl,#_strtok_s_1_1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_HL for _strtok_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00114$
	inc	hl
	inc	(hl)
00114$:
;	genAssign (pointer)
	ld	a,#0x00
	ld	(bc),a
;	_strtok.c 47
;	genRet
;	AOP_STK for _strtok_s1_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00108$
;	genLabel
00104$:
;	_strtok.c 49
;	genPlus
;	AOP_HL for _strtok_s_1_1
;	genPlusIncr
	ld	hl,#_strtok_s_1_1
	inc	(hl)
	jr	nz,00115$
	inc	hl
	inc	(hl)
00115$:
;	genGoto
	jp	00105$
;	genLabel
00107$:
;	_strtok.c 51
;	genRet
	ld	de,#0x0000
;	genLabel
00108$:
;	genEndFunction
	lda	sp,2(sp)
	ret
___strtok_end:
	.area _CODE

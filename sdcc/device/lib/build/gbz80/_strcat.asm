;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:52 2017

;--------------------------------------------------------
	.module _strcat
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat
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
;	_strcat.c 26
;	genLabel
;	genFunction
;	---------------------------------
; Function strcat
; ---------------------------------
___strcat_start:
_strcat:
	
;	_strcat.c 31
;	genAssign
;	AOP_STK for 
	lda	hl,2(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	_strcat.c 33
;	genAssign
;	(registers are the same)
;	genLabel
00101$:
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jp	z,00111$
;	_strcat.c 34
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00101$
;	_strcat.c 36
;	genLabel
00111$:
;	genAssign
;	(operands are equal 3)
;	genAssign
;	(registers are the same)
;	genLabel
00104$:
;	genPointerGet
;	AOP_STK for 
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00113$
	inc	hl
	inc	(hl)
00113$:
;	genAssign (pointer)
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;	genIfx
	or	a,a
	jp	nz,00104$
;	_strcat.c 38
;	genRet
;	AOP_STK for 
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00107$:
;	genEndFunction
	
	ret
___strcat_end:
	.area _CODE

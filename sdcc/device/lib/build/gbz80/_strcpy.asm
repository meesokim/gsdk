;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Fri Aug  4 01:27:50 2017

;--------------------------------------------------------
	.module _strcpy
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy
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
;	_strcpy.c 31
;	genLabel
;	genFunction
;	---------------------------------
; Function strcpy
; ---------------------------------
___strcpy_start:
_strcpy:
	lda	sp,-4(sp)
;	_strcpy.c 36
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcpy_to_1_1
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	_strcpy.c 37
;	genAssign
;	AOP_STK for 
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	_strcpy.c 39
;	genAssign
;	AOP_STK for _strcpy_from_1_1
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genAssign
;	AOP_STK for _strcpy_to_1_1
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00101$:
;	genPointerGet
;	AOP_STK for _strcpy_from_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _strcpy_from_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	nz,00108$
	inc	hl
	inc	(hl)
00108$:
;	genAssign (pointer)
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;	genIfx
	or	a,a
	jp	nz,00101$
;	_strcpy.c 41
;	genRet
;	AOP_STK for 
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00104$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___strcpy_end:
	.area _CODE

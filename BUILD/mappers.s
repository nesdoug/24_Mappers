;
; File generated by cc65 v 2.18 - Git c0a873e
;
	.fopt		compiler,"cc65 v 2.18 - Git c0a873e"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_pal_bg
	.import		_ppu_wait_nmi
	.import		_ppu_off
	.import		_ppu_on_all
	.import		_pad_poll
	.import		_vram_adr
	.import		_vram_unrle
	.import		_get_pad_new
	.export		_all_bgs
	.export		_pad1
	.export		_pad1_new
	.export		_which_chr
	.export		_pal_apple
	.export		_pal_ball
	.export		_pal_snake
	.export		_pal_flower
	.export		_palettes
	.export		_bus_conflict_fix
	.export		_main

.segment	"RODATA"

_all_bgs:
	.byte	$FF
	.byte	$00
	.byte	$FF
	.byte	$C8
	.byte	$01
	.byte	$02
	.byte	$03
	.byte	$04
	.byte	$05
	.byte	$06
	.byte	$07
	.byte	$08
	.byte	$09
	.byte	$0A
	.byte	$0B
	.byte	$0C
	.byte	$0D
	.byte	$0E
	.byte	$0F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$10
	.byte	$11
	.byte	$12
	.byte	$13
	.byte	$14
	.byte	$15
	.byte	$16
	.byte	$17
	.byte	$18
	.byte	$19
	.byte	$1A
	.byte	$1B
	.byte	$1C
	.byte	$1D
	.byte	$1E
	.byte	$1F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$20
	.byte	$21
	.byte	$22
	.byte	$23
	.byte	$24
	.byte	$25
	.byte	$26
	.byte	$27
	.byte	$28
	.byte	$29
	.byte	$2A
	.byte	$2B
	.byte	$2C
	.byte	$2D
	.byte	$2E
	.byte	$2F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$30
	.byte	$31
	.byte	$32
	.byte	$33
	.byte	$34
	.byte	$35
	.byte	$36
	.byte	$37
	.byte	$38
	.byte	$39
	.byte	$3A
	.byte	$3B
	.byte	$3C
	.byte	$3D
	.byte	$3E
	.byte	$3F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$40
	.byte	$41
	.byte	$42
	.byte	$43
	.byte	$44
	.byte	$45
	.byte	$46
	.byte	$47
	.byte	$48
	.byte	$49
	.byte	$4A
	.byte	$4B
	.byte	$4C
	.byte	$4D
	.byte	$4E
	.byte	$4F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$50
	.byte	$51
	.byte	$52
	.byte	$53
	.byte	$54
	.byte	$55
	.byte	$56
	.byte	$57
	.byte	$58
	.byte	$59
	.byte	$5A
	.byte	$5B
	.byte	$5C
	.byte	$5D
	.byte	$5E
	.byte	$5F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$60
	.byte	$61
	.byte	$62
	.byte	$63
	.byte	$64
	.byte	$65
	.byte	$66
	.byte	$67
	.byte	$68
	.byte	$69
	.byte	$6A
	.byte	$6B
	.byte	$6C
	.byte	$6D
	.byte	$6E
	.byte	$6F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$70
	.byte	$71
	.byte	$72
	.byte	$73
	.byte	$74
	.byte	$75
	.byte	$76
	.byte	$77
	.byte	$78
	.byte	$79
	.byte	$7A
	.byte	$7B
	.byte	$7C
	.byte	$7D
	.byte	$7E
	.byte	$7F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$80
	.byte	$81
	.byte	$82
	.byte	$83
	.byte	$84
	.byte	$85
	.byte	$86
	.byte	$87
	.byte	$88
	.byte	$89
	.byte	$8A
	.byte	$8B
	.byte	$8C
	.byte	$8D
	.byte	$8E
	.byte	$8F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$90
	.byte	$91
	.byte	$92
	.byte	$93
	.byte	$94
	.byte	$95
	.byte	$96
	.byte	$97
	.byte	$98
	.byte	$99
	.byte	$9A
	.byte	$9B
	.byte	$9C
	.byte	$9D
	.byte	$9E
	.byte	$9F
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$A0
	.byte	$A1
	.byte	$A2
	.byte	$A3
	.byte	$A4
	.byte	$A5
	.byte	$A6
	.byte	$A7
	.byte	$A8
	.byte	$A9
	.byte	$AA
	.byte	$AB
	.byte	$AC
	.byte	$AD
	.byte	$AE
	.byte	$AF
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$B0
	.byte	$B1
	.byte	$B2
	.byte	$B3
	.byte	$B4
	.byte	$B5
	.byte	$B6
	.byte	$B7
	.byte	$B8
	.byte	$B9
	.byte	$BA
	.byte	$BB
	.byte	$BC
	.byte	$BD
	.byte	$BE
	.byte	$BF
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$C0
	.byte	$C1
	.byte	$C2
	.byte	$C3
	.byte	$C4
	.byte	$C5
	.byte	$C6
	.byte	$C7
	.byte	$C8
	.byte	$C9
	.byte	$CA
	.byte	$CB
	.byte	$CC
	.byte	$CD
	.byte	$CE
	.byte	$CF
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$D0
	.byte	$D1
	.byte	$D2
	.byte	$D3
	.byte	$D4
	.byte	$D5
	.byte	$D6
	.byte	$D7
	.byte	$D8
	.byte	$D9
	.byte	$DA
	.byte	$DB
	.byte	$DC
	.byte	$DD
	.byte	$DE
	.byte	$DF
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$E0
	.byte	$E1
	.byte	$E2
	.byte	$E3
	.byte	$E4
	.byte	$E5
	.byte	$E6
	.byte	$E7
	.byte	$E8
	.byte	$E9
	.byte	$EA
	.byte	$EB
	.byte	$EC
	.byte	$ED
	.byte	$EE
	.byte	$EF
	.byte	$00
	.byte	$FF
	.byte	$0F
	.byte	$F0
	.byte	$F1
	.byte	$F2
	.byte	$F3
	.byte	$F4
	.byte	$F5
	.byte	$F6
	.byte	$F7
	.byte	$F8
	.byte	$F9
	.byte	$FA
	.byte	$FB
	.byte	$FC
	.byte	$FD
	.byte	$FE
	.byte	$00
	.byte	$FF
	.byte	$FE
	.byte	$00
	.byte	$FF
	.byte	$48
	.byte	$00
	.byte	$FF
	.byte	$00
_pal_apple:
	.byte	$08
	.byte	$16
	.byte	$27
	.byte	$38
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
_pal_ball:
	.byte	$06
	.byte	$27
	.byte	$12
	.byte	$16
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
_pal_snake:
	.byte	$0F
	.byte	$17
	.byte	$29
	.byte	$39
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
_pal_flower:
	.byte	$08
	.byte	$19
	.byte	$27
	.byte	$30
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
_palettes:
	.addr	_pal_apple
	.addr	_pal_ball
	.addr	_pal_snake
	.addr	_pal_flower
_bus_conflict_fix:
	.byte	$00
	.byte	$01
	.byte	$02
	.byte	$03

.segment	"BSS"

.segment	"ZEROPAGE"
_pad1:
	.res	1,$00
_pad1_new:
	.res	1,$00
_which_chr:
	.res	1,$00

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; ppu_off(); // screen off
;
	jsr     _ppu_off
;
; pal_bg(pal_apple); // load the palette
;
	lda     #<(_pal_apple)
	ldx     #>(_pal_apple)
	jsr     _pal_bg
;
; vram_adr(NAMETABLE_A);
;
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; vram_unrle(all_bgs);
;
	lda     #<(_all_bgs)
	ldx     #>(_all_bgs)
	jsr     _vram_unrle
;
; ppu_on_all(); // turn on screen
;
	jsr     _ppu_on_all
;
; ppu_wait_nmi();
;
L018C:	jsr     _ppu_wait_nmi
;
; pad1 = pad_poll(0);
;
	lda     #$00
	jsr     _pad_poll
	sta     _pad1
;
; pad1_new = get_pad_new(0);
;
	lda     #$00
	jsr     _get_pad_new
	sta     _pad1_new
;
; if(pad1_new & PAD_START){
;
	and     #$10
	beq     L018C
;
; ++which_chr;
;
	inc     _which_chr
;
; if(which_chr >= 4) which_chr = 0;
;
	lda     _which_chr
	cmp     #$04
	ldx     #$00
	bcc     L01A8
	stx     _which_chr
;
; pal_bg(palettes[which_chr]); // change the bg palette
;
L01A8:	lda     _which_chr
	asl     a
	bcc     L01A7
	inx
	clc
L01A7:	adc     #<(_palettes)
	sta     ptr1
	txa
	adc     #>(_palettes)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     _pal_bg
;
; POKE(bus_conflict_fix+which_chr, which_chr); // change the tileset
;
	lda     _which_chr
	clc
	adc     #<(_bus_conflict_fix)
	sta     ptr1
	lda     #$00
	adc     #>(_bus_conflict_fix)
	sta     ptr1+1
	lda     _which_chr
	ldy     #$00
	sta     (ptr1),y
;
; while (1){
;
	jmp     L018C

.endproc


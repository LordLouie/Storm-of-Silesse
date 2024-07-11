!freespace_map_effects = $2f8000 ; 0x578000 (ExLorom)

; tilemap specialization
org $84d4de
l_84d4de:
	ldx $15a9 ; X pos
	lda $15a5 ; map magic anime id
	cmp #$0005
	beq .meteor
	
	cmp #$0004
	bne .normal
		
.valflame
	cpx #$00a0
	bmi .normal
	
	lda.w #(map_valflame_4_left>>8)&$ff00
	ldx.w #map_valflame_4_left
	bra +

.meteor
	cpx #$00a0
	bmi .normal
	lda #$9f00
	ldx #$de15
	bra +
	
.normal
	ldy #$000c
	lda [$2f],y
	tax
	iny
	lda [$2f],y
+	sta $30
	stx $2f
	
	lda $30
	beq .rts
	
	ldx $15a1
	phy
	lda #$001a
	jsl $84e226
	lda $7faaf3 : sta $32
	lda $7faaf4 : sta $33
	ply
	jsl $80b00a
	
.rts
	rts
warnpc $84d538
padbyte $00 : pad $84d538

;----------------------------------------------------------------------------

; byte 00:
;    < $ff: fe4 engine
;   == $ff: fe5 engine
org $908dc4
	db $02, $01, $01, $02 ; ボルガノン

org $9099a7 : dw l_map_magic_03 ; (bolganone)
org $9099a9 : dw l_map_magic_04 ; (valflame)

org $9099b3 : dw l_map_magic_09 ; (thor hammer)

org $9099c7 : dw l_map_magic_19 ; (aura)

org $9099db : dw $9c1a ; [0x1d] physic (reblow): same as 0x1a

org $9099f5 : dw $9bf0 ; [0x2a] arch: same as 0x29


org $909adf
l_map_magic_09:
	; <sprite>    : <sprite-pal>  : <script?>  : <bg1>         : <bg1-tilemap> : <bg1-pal>  : <pal-script?>
	dl map_thor_0 : dl map_thor_1 : dl $000000 : dl map_thor_3 : dl map_thor_4 : dl $9ff3a4 : dl $000000

org $909c05
l_map_magic_19:
	dl $000000 : dl $000000 : dl $000000 : dl map_aura_3 : dl map_aura_4 : dl $000000 : dl $000000

org $909c44
l_map_magic_04:
	dl map_valflame_0 : dl map_valflame_1 : dl $000000 : dl map_valflame_3 : dl map_valflame_4 : dl $000000 : dl $000000

; Unused effect (Dulam)
org $909cc2
l_map_magic_03:
	dl map_bolganone_0 : dl map_bolganone_1 : dl $000000 : dl map_bolganone_3 : dl map_bolganone_4 : dl $000000 : dl $000000

; thor hammer: sprite color transitions
org $90a71e
padbyte $ff : pad $90a780

;----------------------------------------------------------------------------

org $978f8e
	dw $a624 ; [unused] fire (removed)
	dw $a624 ; [unused] elfire (removed)
	dw map_bolganone_main

; overwrite FE4 fire/elfire
org $979f5a
map_bolganone_main:
	lda.w #(map_bolganone_sprite_proc>>8)&$ff00 : sta $6e
	lda.w #map_bolganone_sprite_proc : sta $6d
	jsl $81824b ; low priority ($81822e: high priority)

	jsr $9066 : dw .map_bolganone
	rtl

.map_bolganone
	db "ON"
	dw .init
	dw .main
	dw .proc

.init
	jsr $9179 ; (FE4: $9f:83f1)
	lda #$0020
	sta $063d,x
	stz $067d,x
	stz $069d,x
	jsr $9db8 ; (FE4: $9f:910a)
	jsl .fe4_9fa380 ; reset bg color
	stz $171e ; (FE4: $7e:cc06)
	stz $1720 ; (FE4: $7e:cc08)
	stz $1722 ; (FE4: $7e:cc0a)
	stz $1724 ; (FE4: $7e:cc0c)
	rtl

.main
	jsr $9dec ; (FE4: $9f:9136)
	bcc +
	lda.w #.fe4_9fa311 : sta $05bd,x

+	rtl

.fe4_9fa311
	lda $171e
	dec
	bne +

	jsr $9066 : dw $f314 ; (FE4: $9f:ec49)
	jsr $909e : dw $d9eb ; (FE4: $9f:dbb8)
	jsr $909e : dw $da3e ; (FE4: $9f:dbf1)
	jsr $909e : dw $d99f ; (FE4: $9f:db6c)
	jsr $909e : dw $d9b2 ; (FE4: $9f:db7f)
	jsr $909e : dw $dac4 ; (FE4: $9f:dc77)
	lda.w #.fe4_9fa345 : sta $05bd,x
	lda #$001e : sta $063d,x

+	rtl

.fe4_9fa345
;	jsr $9009 ; (FE4: $9f:827a) not work
	jsl .fe4_9fa380
	dec $063d,x
	bne +

	lda #$0010 : sta $063d,x
	lda.w #.fe4_9fa35e : sta $05bd,x

+	rtl

warnpc $97a001
padbyte $00 : pad $97a001

; overwrite FE4 fire/elfire
org $97a02b
.fe4_9fa378
;	jsr $9009 ; (FE4: $9f:827a) not work
	jsl .fe4_9fa380
	rtl

warnpc $97a038
padbyte $00 : pad $97a038

; overwrite FE4 fire/elfire
org $97a05d
.fe4_9fa35e
;	jsr $9009 ; (FE4: $9f:827a) not work
	jsl .fe4_9fa380
	dec $063d,x
	bne +

	lda #$0001 : sta $7faf7c
	jsl $818711 ; *damage effect*
	lda.w #.fe4_9fa378 : sta $05bd,x

+	rtl

.fe4_9fa380
	lda $067d,x
	beq +
	dec $067d,x
	rtl

+	lda #$0003
	sta $067d,x
	phx
	lda $069d,x
	asl #4
	tax
	lda.w .pal_table,x
	cmp #$ffff
	beq .end

	sta $0152
	lda.w .pal_table+2,x : sta $0154
	lda.w .pal_table+4,x : sta $0156
	lda.w .pal_table+6,x : sta $0158
	lda.w .pal_table+8,x : sta $015a
	lda.w .pal_table+10,x : sta $015c
	lda.w .pal_table+12,x : sta $015e
	plx
	inc $069d,x
	rtl

.end
	plx
	stz $05fd,x
	lda #$0001 : sta $1720
	rtl

.pal_table
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0005, $000A, $000E, $0012, $0015, .table_end
	dw $0006, $000A, $000E, $0012, $0015, $0019, $001C, .table_end
	dw $000C, $0010, $0017, $015D, $021F, $02BF, $02FF, .table_end
	dw $0000, $0000, $0006, $000A, $000E, $0012, $0015, .table_end
	dw $0000, $0000, $0005, $000A, $000E, $0012, $0015, .table_end
	dw $0000, $0000, $0000, $0000, $0005, $000A, $000E, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end
	dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, .table_end

.table_end
	dw $FFFF

.proc
	dw $0018
	dw $9faf : dw $0000 : dl $0015a9 ; ???
	dw $9dee : dl $8ea7c9 : db $03 : db $00, $00, $00 ; (quake)
	dw $0040
	dw $9ed5 : dl $8ea7e7 ; (the game will be freezed without this line)
	dw $9ef1 : dl $8e901f ; (map scrolling will be broken without this line)

.loop
	dw $0001
	dw $9e2b : dw .loop

map_bolganone_sprite_proc:
	dw .init
	dw .main
	dw .script

.init
	lda $7fb09b : sta $08e4,x
	lda $7fb097 : and #$00ff : sta $0884,x
	jsr $8fe2 : db $66 ; *sound effect* [0x52: elfire #1]
	lda $7fb098
	inc #2
	and #$00ff
	sta $08c4,x
	rtl

.main
	lda $171e
	dec #2
	beq +
	rtl

+	lda.w #.fe4_9fa537 : sta $07e4,x

.fe4_9fa537
	jsr $9e4f ; (FE4: $9f:919f)
	bcc +

	tdc : inc : sta $7fb08f
	jsl $94a210 ; *terminate*
	stz $0764,x

+	rtl

.fe4_9fa58d
	lda $1720
	beq +
	iny #2
	rtl

+	lda $0000,y
	tay
	rtl

.fe4_9fa59b
	tdc : inc
	bra +

.fe4_9fa5a3
	lda #$0002
+	sta $171e
	rtl

.script
	db $00 : db $08 : dw .pattern_1
	db $00 : db $08 : dw .pattern_2
	db $00 : db $02 : dw .pattern_3
	db $17 : dw .fe4_9fa59b

.loop1
	db $00 : db $01 : dw .pattern_3
	db $17 : dw .fe4_9fa58d : dw .loop1

	db $00 : db $08 : dw .pattern_2
	db $00 : db $08 : dw .pattern_1
	db $17 : dw .fe4_9fa5a3

.loop2
	db $00 : db $01 : dw .pattern_0
	db $15 : dw .loop2

.pattern_0
	dw $0000

.pattern_1
	dw $0001
	dw $01fc : db $00 : dw $2c10

.pattern_2
	dw $0001
	dw $c3f8 : db $f8 : dw $2c01

.pattern_3
	dw $0002
	dw $c200 : db $f9 : dw $6c03
	dw $c3f0 : db $f9 : dw $2c03

warnpc $97a35a
padbyte $00 : pad $97a35a

;----------------------------------------------------------------------------

org $97a480
map_aura_main:
	jsr $9066 : dw .map_aura
	rtl

.map_aura
	db "ON"
	dw .init
	dw .main
	dw $f274

.init
	jsr $9179
	jsr $9db8
	stz $067d,x
	stz $069d,x
	rtl

.main
	jsr $9e0e
	bcc +
	jsl .97a530
	lda.w #.a4ab : sta $05bd,x
+	rtl

.a4ab
	jsr $9066 : dw $f294
	jsr $909e : dw $d9eb
	jsl $97da24
	jsr $909e : dw $d99f
	jsr $909e : dw $d9b2
	jsr $909e : dw $dcb9

	lda $7fb097
	and #$00ff
	jsr $8fe2 : db $68 ; *sound effect* [0x60: fenrir] (0x5e: Jormungandr)
	lda.w #.a4e4 : sta $05bd,x
	lda #$0028 : sta $063d,x
	rtl

.a4e4
	dec $063d,x
	bne +
	lda #$0001 : sta $7faf7c
	jsl $818711 ; *damage effect*
	lda.w #.a4fd : sta $05bd,x
	lda #$0008 : sta $063d,x
+	rtl

.a4fd
	dec $063d,x
	bne +
	lda.w #.a509 : sta $05bd,x
+	rtl

.a509
	jsl .97a530
	bcc +
	lda.w #.a519 : sta $05bd,x
	jsr $90e5
+	rtl

.a519
	jsr $9e4f
	bcc .a52f

	lda.w #.a52f : sta $05bd,x
	lda #$0001 : sta $7fb08f
	jsl $94a210 ; *terminate*

.a52f
	rtl

.97a530
	lda #$0003 : sta $067d,x
	ldy $069d,x
	lda $a57a,y
	cmp #$ffff
	beq .end

	phx
	tya
	clc
	adc #$000e
	sta $069d,x
	tyx
	lda $a57a,x : sta $0152
	lda $a57c,x : sta $0154
	lda $a57e,x : sta $0156
	lda $a580,x : sta $0158
	lda $a582,x : sta $015a
	lda $a584,x : sta $015c
	lda $a586,x : sta $015e
	plx
	clc
	rtl

.end
	sec
	rtl
warnpc $97a57a
padbyte $00 : pad $97a57a

;----------------------------------------------------------------------------

org $97c468
map_thor_main:
	jsr $9066 : dw .map_thor
	rtl

.map_thor
	db "ON"
	dw .init
	dw .main
	dw .proc

.init
	jsr $9179
	jsr $9db8
	stz $063d,x
	stz $065d,x
	lda #$0000
	sta $171e
	sta $1720
	sta $1722
	sta $1724
-	rtl

.main
	jsr $9dce
	bcc -

	jsr $9066 : dw $f2c9
	sta $071d,x
	jsr $909e : dw $d9eb
	jsl $97da31
	jsr $909e : dw $d99f
	jsr $909e : dw $d9b2
	jsr $909e : dw $dac4
	lda.w #.c510 : sta $05bd,x
	lda #$0020 : sta $063d,x
	stz $067d,x
	stz $069d,x
	jsl $97c67d
	lda #$9700 : sta $6e
	lda #$c6d3 : sta $6d
	jsl $81822e
	rtl

.c510
	jsl $97c67d
	dec $063d,x
	bne +
	lda.w #.c526 : sta $05bd,x
	lda #$0030 : sta $063d,x
+	rtl

.c526
	jsl $97c67d
	dec $063d,x
	bne .rtl

	lda #$0001 : sta $7faf7c
	jsl $818711 ; *damage effect*
	lda.w #.c543 : sta $05bd,x
	lda #$0050 : sta $063d,x
	rtl

.c543
	jsl $97c67d
	lda $171e
	beq .rtl

	ldy $071d,x
	lda $06bd,y
	eor #$ffff
	inc
	sta $06bd,y
	lda.w #.c566 : sta $05bd,x
	lda #$000c : sta $063d,x

.rtl
	rtl

.c566
	dec $063d,x
	bne +

	lda.w #.c575 : sta $05bd,x
	jsr $90e5

+	rtl

.c575
	jsr $9e4f
	bcc .c58b

	lda.w #.c58b : sta $05bd,x
	lda #$0001 : sta $7fb08f
	jsl $94a210

.c58b
	rtl
warnpc $97c58c
padbyte $00 : pad $97c58c

org $97c58c
.proc

org $97c703
	jsr $8fe2 : db $67 ; *sound effect* [0x57: thoron]
	rtl
warnpc $97c70c
padbyte $00 : pad $97c70c

org $97c759
map_thor_sprite_script:
.begin
	db $00 : db $01 : dw .pattern_0
	db $17 : dw .branch : dw .begin
	
.loop
	db $00 : db $03 : dw .pattern_1
	db $00 : db $01 : dw .pattern_0
	db $00 : db $03 : dw .pattern_2
	db $00 : db $01 : dw .pattern_0
	db $00 : db $01 : dw .pattern_3
	db $00 : db $01 : dw .pattern_0
	db $15 : dw .loop
	
.branch
	lda $1720
	bne +
	lda $0000,y
	tay
	rtl
	
+	iny #2
	rtl
	
.pattern_0
	dw $0000
	
.pattern_1
	dw $0008
	dw $c3d8 : db $f7 : dw $b006 
	dw $c3fa : db $da : dw $b00c 
	dw $c210 : db $10 : dw $3002 
	dw $c20e : db $e0 : dw $b002 
	dw $c216 : db $f8 : dw $3006 
	dw $c3e0 : db $e0 : dw $f004 
	dw $c3e0 : db $10 : dw $7004 
	dw $c3f3 : db $19 : dw $300c 
	
.pattern_2
	dw $0008
	dw $c3f2 : db $19 : dw $b002 
	dw $c216 : db $f5 : dw $b006 
	dw $c3d8 : db $fa : dw $3008 
	dw $c3e0 : db $10 : dw $7002 
	dw $c20e : db $e0 : dw $b000 
	dw $c210 : db $10 : dw $3000 
	dw $c3e1 : db $e0 : dw $3004 
	dw $c3f9 : db $da : dw $b00a 
	
.pattern_3
	dw $0008
	dw $c20e : db $e0 : dw $7004 
	dw $c216 : db $f8 : dw $7008 
	dw $c210 : db $10 : dw $3004 
	dw $c3f3 : db $19 : dw $300a 
	dw $c3e0 : db $10 : dw $7000 
	dw $c3d8 : db $fa : dw $3006 
	dw $c3e0 : db $e0 : dw $f002 
	dw $c3f9 : db $da : dw $300c

warnpc $97c870
padbyte $ff : pad $97c870

;----------------------------------------------------------------------------

; valflame
org $97d298
	jsr $8fe2 : db $00 ; *sound effect* [0x00: none]
	rtl

org $97d4ae
	jsr $8fe2 : db $47 ; *sound effect* [0x50: elfire #2]
	rtl

org $97d6c5
	jsr $8fe2 : db $69 ; *sound effect* [0x00: none]
	rtl

;----------------------------------------------------------------------------

org $a082e0
map_thor_1: incbin resource/map_magic/thor_1.pal

;----------------------------------------------------------------------------

org !freespace_map_effects
map_thor_0: incbin resource/map_magic/thor_0.4bpp.fe4
map_thor_3: incbin resource/map_magic/thor_3.4bpp.fe4
map_thor_4: incbin resource/map_magic/thor_4.tilemap.fe4
map_valflame_0: incbin resource/map_magic/valflame_0.4bpp.fe4
map_valflame_1: incbin resource/map_magic/valflame_1.pal
map_valflame_3: incbin resource/map_magic/valflame_3.4bpp.fe4
map_valflame_4: incbin resource/map_magic/valflame_4.tilemap.fe4
map_valflame_4_left: incbin resource/map_magic/valflame_4_left.tilemap.fe4
map_bolganone_0: incbin resource/map_magic/bolganone_0.4bpp.fe4
map_bolganone_1: incbin resource/map_magic/bolganone_1.pal
map_bolganone_3: incbin resource/map_magic/bolganone_3.4bpp.fe4
map_bolganone_4: incbin resource/map_magic/bolganone_4.tilemap.fe4
map_aura_3: incbin resource/map_magic/aura_3.4bpp.fe4
map_aura_4: incbin resource/map_magic/aura_4.tilemap.fe4
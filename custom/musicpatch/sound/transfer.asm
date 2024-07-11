
org $808ed7
l_808ed7:
    php
    phb
    phk
    plb
    sep #$30
    lda $04f4
    stz $2141
    sta $2140
    sep #$10
    rep #$20
    ldx #$00
    stx $04fd
    ldx $04f5
    beq +
    jsl $8082e8
+   ldx $04f4
    bra .begin

.trans_loop
    pea .trans-1
    iny #2

.read16
    lda [$5f]
    inc $5f
    beq +
--  inc $5f
    beq ++
-   rts
+   inc $5f
++  inc $61
    sec
    ror $5f
    bcc -
    xba
    sep #$20
    lda [$5f]
    xba
    rep #$20
    bra --

.trans
-   cpx $2140
    bne -
    sep #$20
    sta $2142
    xba
    sta $2143
    rep #$20
    sty $2140
    inx
    inx

.dec
    dec $04f0
    bne .trans_loop

.begin
    phx

.read_next
    lda [$62]
    beq .case_zero
    cmp #$0064
    bcs +

    jsr $9115
    ldx $04fd
    bne ++

+   inc $62
    inc $62

++  sta $04f0
    and #$f000
    beq +
    sep #$20
    xba
    lsr #3
    tax
    jsr ($9023,x)
    rep #$20

+   lda $04f0
    beq .read_next

    phb
    ldx $04b9
    phx
    plb
    rep #$11
    and #$07ff
    sbc #$0063
    asl #3
    adc $800c
    tax
    lda $0007,x
    lsr
    bcc .uncompressed

    jsr $9092
    bra +

.uncompressed
    lda $0001,x : sta $60
    lda $0000,x : sta $5f
    ldy $0005,x
    bne +
    lda $0004f2
    tay

+   lda $0003,x
    plb
    pha
    inc
    lsr
    sta $04f0
    pla
    sty $04f2
    clc
    adc $04f2
    sta $04f2
    tya
    sep #$10

.case_zero
    plx
    txy
    iny #3
-   iny
    beq -

-   cpx $2140
    bne -

    ldx #$00
    cmp #$fff8
    bne +
    inx

+   sep #$20
    sta $2142
    xba
    sta $2143
    rep #$20
    sty $2141
    sty $2140
    inc : dec
    beq .end

    jsr .read16
    cpx #$00
    beq .trans_loop2
    sep #$20
    sta $0507
    rep #$20

.trans_loop2
    cpy $2140
    bne .trans_loop2

    ldy #$02
    ldx #$00
    sep #$20
    sta $2142
    xba
    sta $2143
    rep #$20
    sty $2140
    stx $2141
    jmp .dec

.end
    ldx $2141
    cpx $04f4
    beq .end

    ldx #$00
    stx $04f4
    ldx $04f5
    beq +
    jsl $8082da
+   plb
    plp
    rtl

padbyte $ff : pad $809023

org $8090d9
    bra +
    nop #4
+   lda $0001,x
    sta $01
    lda $0000,x
    sta $00

org $8090ea
extract_sound_data:
    jsl decomp_2

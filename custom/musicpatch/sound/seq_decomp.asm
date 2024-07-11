!decomp_buff = $0000

decomp_inc_bank:
    inc.b !decomp_buff+2
    ldy #$8000
    rts

macro read_byte()
    lda.b [!decomp_buff],y
    iny
    bne $03
    jsr decomp_inc_bank
endmacro

macro read_flags()
    %read_byte()
    rol
    sta.b !decomp_buff+3
endmacro

macro read_flags2()
    xba
    %read_flags()
    xba
endmacro

decomp_2:
    php
    phb
    sep #$21
    lda.b !decomp_buff+5
    pha
    plb
    phd
    pea.w !decomp_buff&$1f00
    pld
    ldx.b !decomp_buff+3
    inc
    sta.b !decomp_buff+4
    stz.b !decomp_buff+8
    ldy.b !decomp_buff
    stz.b !decomp_buff
    stz.b !decomp_buff+1
    bra .flag
    
.end
    pld
    plb
    plp
    rtl

.inc_bank_fast:
    jsr decomp_inc_bank
    bra +
    
.uncomp
    lda.b [!decomp_buff],y
    iny
    beq .inc_bank_fast ; (2 cycles in most case)
+   sta $0000,x
    inx

.begin
    asl.b !decomp_buff+3
    bcc .lz
    bne .uncomp
    
.flag
    %read_flags()
    bcs .uncomp
    
.lz 
    lda #$01
-   asl.b !decomp_buff+3
    bcc +
    bne ++
    %read_flags2()
    bcs ++
+   asl.b !decomp_buff+3
    bne +
    %read_flags2()
+   rol
    bpl -
++  sta.b !decomp_buff+7
    inc
    beq .end
    
    asl.b !decomp_buff+3
    bcc .0
    beq +
    jmp .1
+   %read_flags()
    bcs .1
    
.0  
    asl.b !decomp_buff+3
    bcc .00
    bne .01
    %read_flags()
    bcs .01
    
.00
    asl.b !decomp_buff+3
    bcc .000
    bne .001
    %read_flags()
    bcs .001
    
.000
    asl.b !decomp_buff+3
    bcc .0000
    bne .0001
    %read_flags()
    bcs .0001

.0000
    lda #$80
    bra .get_ofs
    
.0001
    lda #$c1
    bra +
    
.001
    lda #$f1
    bra +

.01
    lda #$fd
    
+   asl.b !decomp_buff+3
    bcc +
    bne .get_ofs
    %read_flags2()
    bcs .get_ofs
+   asl
    dec
    
.get_ofs
    asl.b !decomp_buff+3
    bne +
    %read_flags2()
+   rol
    bcs .get_ofs
    
    stz.b !decomp_buff+6
    sta.b !decomp_buff+5
    bra .mvn
    
.1
    asl.b !decomp_buff+3
    bcc .10
    bne .11
    %read_flags()
    bcs .11
    
.10 
    lda #$01
    asl.b !decomp_buff+3
    bcc .low
    bne .high
    %read_flags()
    lda #$01
    bcc .low
    bra .high
    
.11
    lda #$c1
    asl.b !decomp_buff+3
    bcc +
    bne .high
    %read_flags()
    lda #$c1
    bcs .high
+   lda #$81
    
.high
    asl.b !decomp_buff+3
    bne +
    %read_flags2()
+   rol
    bcs .high
    
.low
    sta.b !decomp_buff+6
    %read_byte()
    sta.b !decomp_buff+5
    
.mvn
    rep #$21
    txa
    sbc.b !decomp_buff+5
    sty.b !decomp_buff+5
    txy
    tax
    lda.b !decomp_buff+7
    sep #$20
    bit.b !decomp_buff+4
    bpl +
    mvn $7f7f
    bra ++
+   mvn $7e7e
++  tyx
    ldy.b !decomp_buff+5
    jmp .begin

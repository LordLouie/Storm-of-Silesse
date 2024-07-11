
; 01 00 00 00 00 03 03 00 [0x01 ~ 0x80]
; 01 00 03 00 00 00 00 00 [0x81 ~ 0xff]

fe4_map_se_seq_begin:

arch spc700
base !aram_fe4_map_se_seq

; $2ae1 [0x53]
fe4_map_se_seq_bolganone:
    db $27, $0f : db $2e
    db $e7, $10 : dw .l1 ; $2b07
    db $20, $45, $50, $93
    db $cc
    db $0a
    db $e7, $12 : dw .l2 ; $2afd
    db $0d
    db $e7, $12 : dw .l2 ; $2afd
    db $16
    db $d0, $1e, $87
    db $1e
    db $f9

.l2
    db $2f, $0f : db $6d
    db $5f, $a6, $09
    db $cb, $b0
    db $f7
    db $f9

.l1
    db $2b, $0f : db $6e
    db $53, $8d, $01
    db $d0, $64, $69
    db $d2, $78, $8c
    db $d5, $19
    db $5c
    db $e3, $01
    db $01
    db $e3, $00
    db $01
    db $75
    db $e3, $0d
    db $01
    db $e3, $0c
    db $01
    db $d8
    db $f9

; $2cc3 [0x64]
fe4_map_se_seq_valflame_1:
    db $2d, $0f : db $6e
    db $53, $87, $01
    db $d2, $f0, $89
    db $d5, $2d
    db $e3, $01
    db $01
    db $e3, $00
    db $01
    db $e3, $0d
    db $01
    db $e3, $0c
    db $01
    db $d8
    db $f9

; $2cdc [0x4d]
fe4_map_se_seq_valflame_2:
    db $28, $0f : db $56
    db $cb, $cc
    db $bb, $01
    db $d2, $20, $a3
    db $17
    db $cb, $b9
    db $04
    db $e7, $12 : dw .l1 ; $2cf0
    db $04
    db $f9

.l1
    db $2e, $0f : db $6d
    db $5e, $a1, $01
    db $d2, $06, $ad
    db $06
    db $d2, $19, $a1
    db $11, $70, $08
    db $f9

; $2bfd [0x5d]
fe4_map_se_seq_thor:
    db $2f, $0f : db $2f
    db $e7, $10 : dw .l1 ; $2c25
    db $06
    db $e7, $12 : dw .l2 ; $2c35

.l3
    db $c8, $37
    db $d0, $3c, $af
    db $e6, $96
    db $5f
    db $d3 : dw .l4 ; $2c1d
    db $c8, $ff
    db $d3 : dw .l4 ; $2c1d
    db $d3 : dw .l4 ; $2c1d
    db $f9

.l4
    db $d5, $09
    db $a4
    db $cc
    db $01
    db $f7
    db $d8
    db $d4

.l1
    db $29, $0f : db $5b ; (FE4: $5e)
    db $50, $8c, $09, $73, $01
    db $cb, $5f
    db $ce, $6f
    db $cb, $b9
    db $09
    db $f9

.l2
    db $2a, $0f : db $2f
    db $d3 : dw .l3 ; $2c09

; $2d9e [0x60]
fe4_map_se_seq_aura:
    db $29, $0f : db $55
    db $52, $a8, $01
    db $d2, $1c, $ac
    db $cb, $c7
    db $d5, $07
    db $d3 : dw .l1 ; $2dc1

    db $d8
    db $d5, $0b
    db $d3 : dw .l2 ; $2dce

    db $d8
    db $cb, $8a
    db $d2, $18, $b0
    db $d5, $06
    db $d3 : dw .l1 ; $2dc1

    db $d8
    db $f9

.l1
    db $e3, $fd
    db $01
    db $e3, $00
    db $01
    db $e3, $04
    db $01
    db $e3, $00
    db $01
    db $d4

.l2
    db $a9, $01, $ac, $01, $b0, $01, $ac, $01
    db $d4

base off
arch 65816

fe4_map_se_seq_end:


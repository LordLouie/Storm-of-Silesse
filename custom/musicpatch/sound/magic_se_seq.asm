fe4_se_seq_begin:

arch spc700
base !aram_fe4_se_seq

; 2d0b
fe4_se_seq_64_0:
    db $29, $0f : db $38

    db $e7, $12 : dw .l1
    db $cf, $05

.l2
    db $e6, $ff
    db $c8, $4b
    db $d0, $c8, $ff
    db $d5, $32
    db $5c, $9a
    db $cc
    db $03
    db $fc
    db $d8
    db $f9

.l1
    db $29, $39 : db $38
    db $d3 : dw .l2

; 2d2a
fe4_se_seq_64_1:
    db $2a, $4f : db $56
    db $50, $84, $01
    db $e7, $10 : dw .l1 ; 72 2d
    db $d2, $3c, $90
    db $07
    db $e7, $11 : dw .l2 ; 78 2d
    db $0a
    db $e7, $14 : dw .l6 ; 90 2d
    db $0c
    db $e7, $10 : dw .l4 ; 84 2d
    db $0b
    db $e7, $11 : dw .l7 ; 96 2d
    db $0c
    db $e7, $14 : dw .l5 ; 8a 2d
    db $0b
    db $d2, $3c, $84
    db $e7, $10 : dw .l3 ; 7e 2d
    db $0a
    db $e7, $11 : dw .l7 ; 96 2d
    db $0c
    db $e7, $14 : dw .l5 ; 8a 2d
    db $0d
    db $e7, $10 : dw .l4 ; 84 2d
    db $0b
    db $e7, $11 : dw .l6 ; 90 2d
    db $08
    db $e7, $12 : dw .l2 ; 78 2d
    db $f9

.l1
    db $2b, $2f : db $78
    db $d3 : dw .l8 ; 9f 2d

.l2
    db $28, $30 : db $78
    db $d3 : dw .l8 ; 9f 2d

.l3
    db $29, $34 : db $78
    db $d3 : dw .l8 ; 9f 2d

.l4
    db $28, $38 : db $78
    db $d3 : dw .l8 ; 9f 2d

.l5
    db $28, $2e : db $78
    db $d3 : dw .l8 ; 9f 2d

.l6
    db $28, $2a : db $78
    db $d3 : dw .l8 ; 9f 2d

.l7
    db $29, $26 : db $78
    db $d3 : dw .l8 ; 9f 2d

    db $28, $0f : db $78

.l8
    db $e6, $64
    db $5e, $9f, $01, $9f, $01, $9f, $01
    db $fc
    db $5f
    db $cc
    db $a4, $01, $a4, $01, $a5, $01, $a4, $01
    db $a5, $01, $a4, $01, $a4, $01, $a4, $01
    db $a3, $01, $a4, $01, $a1, $01, $a3, $01
    db $a2, $01, $a0, $01, $a1, $01, $9d, $01
    db $70, $a0, $01, $9f, $01, $9d, $01, $9e
    db $05
    db $c8, $aa
    db $d5, $02
    db $5a, $9f, $01, $9d, $01
    db $cb, $8e
    db $9c, $01, $9d, $01, $9e, $01, $9f, $01
    db $9d, $01, $9c, $01, $9a, $01, $98, $01
    db $9b, $01, $98, $01, $9c, $01, $98, $01
    db $e5, $c4
    db $d8
    db $f9

; 2bd3
fe4_se_seq_65_0:
    db $2c, $2f : db $78
    db $e7, $10 : dw .l1 ; $e7, $2b
    db $50, $a4, $27, $70, $07
    db $cb, $c4
    db $f4, $1a, $f6
    db $ce, $b4
    db $f9

.l1
    db $27, $33 : db $78
    db $e7, $11 : dw .l2 ; $08, $2c
    db $d1, $14, $1a

.l3
    db $50, $a4, $10
    db $d2, $33, $9f
    db $37
    db $d2, $32, $a4
    db $34
    db $d2, $33, $9f
    db $38
    db $d2, $35, $a4
    db $1f
    db $cb, $8a
    db $14
    db $f9

.l2
    db $27, $2b : db $78
    db $d1, $14, $04

    db $d3 : dw .l3 ; $f1, $2b

; 2afe
fe4_se_seq_70_0:
    db $2c, $2f : db $58
    db $50, $85, $01
    db $d2, $27, $91
    db $26
    db $f9

; 2b17
fe4_se_seq_70_1:
    db $28, $34 : db $38

    db $e7, $14 : dw .l1

.l2
    db $e6, $7f
    db $5f
    db $d5, $10
    db $a4
    db $cc
    db $01
    db $f7
    db $d8
    db $f9

.l1
    db $28, $2a : db $38
    db $01
    db $d3 : dw .l2

; 2b09
fe4_se_seq_70_2:
    db $2c, $2f : db $58

    db $5c, $91, $01
    db $d2, $27, $85
    db $08
    db $cb, $b1
    db $1e
    db $f9

; 2b30
fe4_se_seq_79_0:
    db $2b, $0f : db $38

    db $e7, $11 : dw .l1 ; $47, $2b
    db $06
    db $cc

.l2
    db $50, $af, $01
    db $cb, $c7
    db $d2, $be, $b1
    db $ce, $82
    db $cb, $b0
    db $3c
    db $f9

.l1
    db $28, $0f : db $78
    db $e3, $f4
    db $d3 : dw .l2 ; $39, $2b

; 2f68
fe4_se_seq_80_0:
    db $1f, $af : db $38

    db $e7, $11 : dw .l1 ; $7a, $2f
    db $02
    db $e7, $12 : dw .l2 ; $8e, $2f
    db $1e, $9c
    db $cc
    db $01
    db $f7
    db $f9

.l1
    db $27, $37 : db $58

.l3
    db $cb, $c1
    db $af, $01
    db $d2, $ff, $b0, $f4
    db $0e, $19
    db $ce, $f0
    db $32
    db $cb, $84
    db $f6
    db $f9

.l2
    db $27, $27 : db $58
    db $d3 : dw .l3 ; $7d, $2f

; 3026
fe4_se_seq_84_0:
    db $1f, $af : db $78

    db $e7, $10 : dw .l1 ; $3a, $30
    db $9d
    db $cc
    db $01
    db $f4, $10, $19
    db $02
    db $e7, $13 : dw .l2 ; $56, $30
    db $f7
    db $f9

.l1
    db $28, $37 : db $58

.l3
    db $c8, $96
    db $50, $b4, $01
    db $d2, $fa, $b3
    db $f4, $0e, $19
    db $cb, $10
    db $ce, $8c
    db $d0, $64, $ff
    db $56
    db $ce, $a0
    db $cb, $88
    db $f6
    db $f9

.l2
    db $28, $27 : db $58
    db $d3 : dw .l3 ; $3d, $30

base off
arch 65816

fe4_se_seq_end:

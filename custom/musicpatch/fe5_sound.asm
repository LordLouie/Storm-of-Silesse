exlorom

; (Asar 1.8.1.0)

function sound_index(label) = (label-sd_begin)/8+100

!sd_index_fe4_se = sound_index(sd_fe4_se_wave)
!sd_index_fe4_se_seq = sound_index(sd_fe4_se_seq)
!sd_index_fe4_map_se_seq = sound_index(sd_fe4_map_se_seq)
!sd_index_wav_331f = sound_index(sd_fe5_wav_331f)

!aram_fe4_se_seq = $331f
!aram_fe4_map_se_seq = $7286

; incsrc asm/fe5_config.asm
; incsrc config.asm
incsrc asm/fe5_add_fe4_map_effects.asm

; incsrc to_exlorom.asm
incsrc sound/transfer.asm
; incsrc sound/sound_room.asm

;------------------
; sound
;==================
fe5_sound_root:
org $db8000
    dw sound_driver
    dw $0000
    dw music_header_ptrs
    dw music_header_begin
    dw real_battle_item_wave_ptrs
    dw music_seq_and_brr_begin
    dw sd_begin
    dw ptr_sound_data_on_boot

    dw sound_driver_version
    dw real_battle_item_and_class_wave_table
    dw real_battle_wave_ptrs
    dw sound_data_on_boot

sd_begin:
    dl sound_data_000 : dw $0004 : dw $fff8 : db $00
    dl sound_data_001 : dw $0004 : dw $fff8 : db $00
    dl sound_data_002 : dw $0004 : dw $fff8 : db $00
    dl sound_data_003 : dw $0004 : dw $fff8 : db $00
    dl sound_data_004 : dw $0004 : dw $fff8 : db $00
    dl sound_data_005 : dw $0004 : dw $fff8 : db $00
    dl sound_data_006 : dw $0004 : dw $fff8 : db $00
    dl sound_data_007 : dw $0004 : dw $fff8 : db $00
    dl sound_data_008 : dw $0004 : dw $fff8 : db $00
    dl sound_data_009 : dw $0004 : dw $fff8 : db $00
    dl sound_data_010 : dw $0004 : dw $fff8 : db $00
    dl sound_data_011 : dw $0004 : dw $fff8 : db $00
    dl sound_data_012 : dw $0004 : dw $fff8 : db $00
    dl sound_data_013 : dw $0004 : dw $fff8 : db $00
    dl sound_data_014 : dw $0004 : dw $fff8 : db $00
    dl sound_data_015 : dw $0004 : dw $fff8 : db $00
    dl sound_data_016 : dw $0004 : dw $fff8 : db $00
    dl sound_data_017 : dw $0004 : dw $fff8 : db $00
    dl sound_data_018 : dw $0004 : dw $fff8 : db $00
    dl sound_data_019 : dw $0004 : dw $fff8 : db $00
    dl sound_data_020 : dw $0004 : dw $fff8 : db $00
    dl sound_data_021 : dw $0004 : dw $fff8 : db $00
    dl sound_data_022 : dw $0004 : dw $fff8 : db $00
    dl sound_data_023 : dw $0004 : dw $fff8 : db $00
    dl sound_data_024 : dw $0004 : dw $fff8 : db $00
    dl sound_data_025 : dw $0004 : dw $fff8 : db $00
    dl sound_data_026 : dw $0004 : dw $fff8 : db $00
    dl sound_data_027 : dw $0004 : dw $fff8 : db $00
    dl sound_data_028 : dw $0004 : dw $fff8 : db $00
    dl sound_data_029 : dw $0004 : dw $fff8 : db $00
    dl sound_data_030 : dw $0004 : dw $fff8 : db $00
    dl sound_data_031 : dw $0004 : dw $fff8 : db $00
    dl sound_data_032 : dw $0004 : dw $fff8 : db $00
    dl sound_data_033 : dw $0004 : dw $fff8 : db $00
    dl sound_data_034 : dw $0004 : dw $fff8 : db $00
    dl sound_data_035 : dw $0004 : dw $fff8 : db $00
    dl sound_data_036 : dw $0004 : dw $fff8 : db $00
    dl sound_data_037 : dw $0004 : dw $fff8 : db $00
    dl sound_data_038 : dw $0004 : dw $fff8 : db $00
    dl sound_data_039 : dw $0004 : dw $fff8 : db $00
    dl sound_data_040 : dw $0004 : dw $fff8 : db $00
    dl sound_data_041 : dw $0004 : dw $fff8 : db $00
    dl sound_data_042 : dw $0004 : dw $fff8 : db $00
    dl sound_data_043 : dw $0004 : dw $fff8 : db $00
    dl sound_data_044 : dw $0004 : dw $fff8 : db $00
    dl sound_data_045 : dw $0004 : dw $fff8 : db $00
    dl sound_data_046 : dw $0004 : dw $fff8 : db $00
    dl sound_data_047 : dw $0004 : dw $fff8 : db $00
    dl sound_data_048 : dw $0004 : dw $fff8 : db $00
    dl sound_data_049 : dw $0004 : dw $fff8 : db $00
    dl sound_data_050 : dw $0004 : dw $fff8 : db $00
    dl sound_data_051 : dw $0004 : dw $fff8 : db $00
    dl sound_data_052 : dw $0004 : dw $fff8 : db $00
    dl sound_data_053 : dw $0004 : dw $fff8 : db $00
    dl sound_data_054 : dw $0004 : dw $fff8 : db $00
    dl sound_data_055 : dw $0004 : dw $fff8 : db $00
    dl sound_data_056 : dw $0004 : dw $fff8 : db $00
    dl sound_data_057 : dw $0004 : dw $fff8 : db $00
    dl sound_data_058 : dw $0004 : dw $fff8 : db $00
    dl sound_data_059 : dw $0004 : dw $fff8 : db $00
    dl sound_data_060 : dw $0004 : dw $fff8 : db $00
    dl sound_data_061 : dw $0004 : dw $fff8 : db $00
    dl sound_data_062 : dw $0004 : dw $fff8 : db $00
    dl sound_data_063 : dw $0004 : dw $fff8 : db $00
    dl sound_data_064 : dw $0bdf : dw $c500 : db $01
    dl sound_data_065 : dw $0d90 : dw $c500 : db $01
    dl sound_data_066 : dw $0bd2 : dw $c500 : db $01
    dl sound_data_067 : dw $0765 : dw $c500 : db $01
    dl sound_data_068 : dw $094d : dw $c500 : db $01
    dl sound_data_069 : dw $097b : dw $c500 : db $01
    dl sound_data_070 : dw $0551 : dw $c500 : db $01
    dl sound_data_071 : dw $0ab1 : dw $c500 : db $01
    dl sound_data_072 : dw $0ae0 : dw $c500 : db $01
    dl sound_data_073 : dw $099b : dw $c500 : db $01
    dl sound_data_074 : dw $07fb : dw $c500 : db $01
    dl sound_data_075 : dw $04fc : dw $c500 : db $01
    dl sound_data_076 : dw $0625 : dw $c500 : db $01
    dl sound_data_077 : dw $0489 : dw $c500 : db $01
    dl sound_data_078 : dw $04eb : dw $c500 : db $01
    dl sound_data_079 : dw $12ea : dw $c140 : db $01
    dl sound_data_080 : dw $118f : dw $c140 : db $01
    dl sound_data_081 : dw $0f31 : dw $c500 : db $01
    dl sound_data_082 : dw $0b5c : dw $c500 : db $01
    dl sound_data_083 : dw $053b : dw $c500 : db $01
    dl sound_data_084 : dw $0188 : dw $c500 : db $01
    dl sound_data_085 : dw $031d : dw $c500 : db $01
    dl sound_data_086 : dw $04c1 : dw $c500 : db $01
    dl sound_data_087 : dw $0585 : dw $c500 : db $01
    dl sound_data_088 : dw $044d : dw $c500 : db $01
    dl sound_data_089 : dw $0a30 : dw $c500 : db $01
    dl sound_data_090 : dw $17e4 : dw $ae00 : db $01
    dl sound_data_091 : dw $0ece : dw $c5e5 : db $01
    dl sound_data_092 : dw $0407 : dw $c500 : db $03
    dl sound_data_093 : dw $0381 : dw $c500 : db $03
    dl sound_data_094 : dw $0106 : dw $c500 : db $03
    dl sound_data_095 : dw $00c7 : dw $c500 : db $03
    dl sound_data_096 : dw $01e5 : dw $c500 : db $03
    dl sound_data_097 : dw $02bb : dw $c500 : db $03
    dl sound_data_098 : dw $04b2 : dw $c500 : db $03
    dl sound_data_099 : dw $0763 : dw $c500 : db $03
    dl sound_data_100 : dw $0442 : dw $c500 : db $03
    dl sound_data_101 : dw $01e6 : dw $c500 : db $03
    dl sound_data_102 : dw $0264 : dw $c500 : db $03
    dl sound_data_103 : dw $019f : dw $c500 : db $03
    dl sound_data_104 : dw $0a72 : dw $c500 : db $03
    dl sound_data_105 : dw $0712 : dw $c500 : db $03
    dl sound_data_106 : dw $0537 : dw $c500 : db $03
    dl sound_data_107 : dw $06fd : dw $c500 : db $03
    dl sound_data_108 : dw $052a : dw $c500 : db $03
    dl sound_data_109 : dw $05de : dw $c500 : db $03
    dl sound_data_110 : dw $051a : dw $c500 : db $03
    dl sound_data_111 : dw $0695 : dw $c500 : db $03
    dl sound_data_112 : dw $0586 : dw $c500 : db $03
    dl sound_data_113 : dw $047e : dw $c500 : db $03
    dl sound_data_114 : dw $072f : dw $c500 : db $03
    dl sound_data_115 : dw $0990 : dw $c500 : db $03
    dl sound_data_116 : dw $085d : dw $c500 : db $03
    dl sound_data_117 : dw $02a4 : dw $c500 : db $03
    dl sound_data_118 : dw $08af : dw $c500 : db $03
    dl sound_data_119 : dw $0b27 : dw $c500 : db $03
    dl sound_data_120 : dw $0eec : dw $c500 : db $03
    dl sound_data_121 : dw $0565 : dw $c500 : db $03
    dl sound_data_122 : dw $0610 : dw $c500 : db $03
    dl sound_data_123 : dw $04f3 : dw $c500 : db $03
    dl sound_data_124 : dw $0142 : dw $c500 : db $03
    dl sound_data_125 : dw $0442 : dw $c500 : db $03
    dl sound_data_126 : dw $02b7 : dw $c500 : db $03
    dl sound_data_127 : dw $094d : dw $c500 : db $03
    dl $038c05+$db0000 : dw $0c76 : dw $3600 : db $00
    dl $03987b+$db0000 : dw $0ad4 : dw $3600 : db $00
    dl $03a34f+$db0000 : dw $039f : dw $0000 : db $00
    dl $03a6ee+$db0000 : dw $0558 : dw $0000 : db $00
    dl $03ac46+$db0000 : dw $034e : dw $0000 : db $00
    dl $03af94+$db0000 : dw $0573 : dw $0000 : db $00
    dl $03b507+$db0000 : dw $134d : dw $0000 : db $00
    dl $03c854+$db0000 : dw $0a20 : dw $0000 : db $00
    dl $03d274+$db0000 : dw $0b40 : dw $0000 : db $00
    dl $03ddb4+$db0000 : dw $09ab : dw $0000 : db $00
    dl $03e760+$db0000 : dw $1b09 : dw $0000 : db $00
    dl $048269+$db0000 : dw $12ea : dw $0000 : db $00
    dl $049553+$db0000 : dw $042f : dw $0000 : db $00
    dl $049982+$db0000 : dw $0654 : dw $0000 : db $00
    dl $049fd6+$db0000 : dw $1596 : dw $0000 : db $00
    dl $04b56c+$db0000 : dw $0b5b : dw $0000 : db $00
    dl $04c0c7+$db0000 : dw $0630 : dw $0000 : db $00
    dl $04c6f7+$db0000 : dw $1b51 : dw $0000 : db $00
    dl $04e248+$db0000 : dw $1c20 : dw $0000 : db $00
    dl $04fe68+$db0000 : dw $02d0 : dw $0000 : db $00
    dl $058138+$db0000 : dw $0ac2 : dw $0000 : db $00
    dl $058bfa+$db0000 : dw $1ea8 : dw $0000 : db $00
    dl $05aaa2+$db0000 : dw $0225 : dw $0000 : db $00
    dl $05acc7+$db0000 : dw $06c0 : dw $0000 : db $00
    dl $05b387+$db0000 : dw $01dd : dw $0000 : db $00
    dl $05b564+$db0000 : dw $1773 : dw $0000 : db $00
    dl $05ccd7+$db0000 : dw $0fc0 : dw $0000 : db $00
    dl $05dc97+$db0000 : dw $0900 : dw $0000 : db $00
    dl $05e597+$db0000 : dw $09cf : dw $0000 : db $00
    dl $05ef66+$db0000 : dw $0a56 : dw $0000 : db $00
    dl $05f9bc+$db0000 : dw $2bf2 : dw $0000 : db $00
    dl $06a5ae+$db0000 : dw $1299 : dw $0000 : db $00
    dl $06b847+$db0000 : dw $0b88 : dw $0000 : db $00
    dl $06c3cf+$db0000 : dw $06c0 : dw $0000 : db $00
    dl $06ca8f+$db0000 : dw $0360 : dw $0000 : db $00
    dl $06cdef+$db0000 : dw $05a0 : dw $0000 : db $00
    dl $06d38f+$db0000 : dw $0654 : dw $0000 : db $00
    dl $06d9e3+$db0000 : dw $0c69 : dw $0000 : db $00
    dl $06e64c+$db0000 : dw $1179 : dw $0000 : db $00
    dl $06f7c5+$db0000 : dw $0171 : dw $0000 : db $00
    dl $06f936+$db0000 : dw $0117 : dw $0000 : db $00
    dl $06fa4d+$db0000 : dw $03de : dw $0000 : db $00
    dl $06fe2c+$db0000 : dw $0870 : dw $0000 : db $00
    dl $07869c+$db0000 : dw $05f1 : dw $0000 : db $00
    dl $078c8d+$db0000 : dw $02ac : dw $0000 : db $00
    dl $078f39+$db0000 : dw $1287 : dw $0000 : db $00
    dl $07a1c0+$db0000 : dw $06ff : dw $0000 : db $00
    dl $07a8bf+$db0000 : dw $0396 : dw $0000 : db $00
    dl $07ac55+$db0000 : dw $08d3 : dw $0000 : db $00
    dl $07b528+$db0000 : dw $017a : dw $0000 : db $00
    dl $07b6a2+$db0000 : dw $040b : dw $0000 : db $00
    dl $07baad+$db0000 : dw $1d25 : dw $0000 : db $00
    dl $07d7d2+$db0000 : dw $02f4 : dw $0000 : db $00
    dl $07dac6+$db0000 : dw $08c1 : dw $0000 : db $00
    dl $07e387+$db0000 : dw $0372 : dw $0000 : db $00
    dl $07e6f9+$db0000 : dw $06c9 : dw $0000 : db $00
    dl $07edc2+$db0000 : dw $0240 : dw $0000 : db $00
    dl $07f002+$db0000 : dw $07e0 : dw $0000 : db $00
    dl $07f7e2+$db0000 : dw $06d2 : dw $0000 : db $00
    dl $07feb4+$db0000 : dw $066f : dw $0000 : db $00
    dl $088523+$db0000 : dw $0480 : dw $0000 : db $00
    dl $0889a3+$db0000 : dw $02a3 : dw $0000 : db $00
    dl $088c46+$db0000 : dw $00d8 : dw $0000 : db $00
    dl $088d1e+$db0000 : dw $0240 : dw $0000 : db $00
    dl $088f5e+$db0000 : dw $2c04 : dw $0000 : db $00
    dl $08bb62+$db0000 : dw $0546 : dw $0000 : db $00
    dl $08c0a8+$db0000 : dw $030f : dw $0000 : db $00
    dl $08c3b7+$db0000 : dw $0900 : dw $0000 : db $00
    dl $08ccb7+$db0000 : dw $0030 : dw $fe00 : db $00
    dl $08cce7+$db0000 : dw $0020 : dw $fd00 : db $00
    dl $08cd08+$db0000 : dw $0036 : dw $fe00 : db $00
    dl $08cd3e+$db0000 : dw $001c : dw $fd00 : db $00
    dl $08cd5a+$db0000 : dw $0036 : dw $fe00 : db $00
    dl $08cd90+$db0000 : dw $001c : dw $fd00 : db $00
    dl $08cdac+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08cdd0+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08cde0+$db0000 : dw $0030 : dw $fe00 : db $00
    dl $08ce10+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08ce28+$db0000 : dw $0030 : dw $fe00 : db $00
    dl $08ce58+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08ce70+$db0000 : dw $0036 : dw $fe00 : db $00
    dl $08cea6+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08cebe+$db0000 : dw $0030 : dw $fe00 : db $00
    dl $08ceee+$db0000 : dw $0014 : dw $fd00 : db $00
    dl $08cf02+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08cf26+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08cf3e+$db0000 : dw $002a : dw $fe00 : db $00
    dl $08cf68+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08cf80+$db0000 : dw $002a : dw $fe00 : db $00
    dl $08cfaa+$db0000 : dw $001c : dw $fd00 : db $00
    dl $08cfc6+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08cfea+$db0000 : dw $0014 : dw $fd00 : db $00
    dl $08cffe+$db0000 : dw $0030 : dw $fe00 : db $00
    dl $08d02e+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08d046+$db0000 : dw $003c : dw $fe00 : db $00
    dl $08d082+$db0000 : dw $0024 : dw $fd00 : db $00
    dl $08d0a6+$db0000 : dw $0018 : dw $fe00 : db $00
    dl $08d0be+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08d0ce+$db0000 : dw $0018 : dw $fe00 : db $00
    dl $08d0e6+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08d0f6+$db0000 : dw $000c : dw $fe00 : db $00
    dl $08d102+$db0000 : dw $0008 : dw $fd00 : db $00
    dl $08d10a+$db0000 : dw $0012 : dw $fe00 : db $00
    dl $08d11c+$db0000 : dw $000c : dw $fd00 : db $00
    dl $08d128+$db0000 : dw $0012 : dw $fe00 : db $00
    dl $08d13a+$db0000 : dw $000c : dw $fd00 : db $00
    dl $08d146+$db0000 : dw $002a : dw $fe00 : db $00
    dl $08d170+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08d180+$db0000 : dw $0018 : dw $fe00 : db $00
    dl $08d198+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08d1a8+$db0000 : dw $001e : dw $fe00 : db $00
    dl $08d1c6+$db0000 : dw $0014 : dw $fd00 : db $00
    dl $08d1da+$db0000 : dw $001e : dw $fe00 : db $00
    dl $08d1f8+$db0000 : dw $0014 : dw $fd00 : db $00
    dl $08d20c+$db0000 : dw $0030 : dw $fe00 : db $00
    dl $08d23c+$db0000 : dw $0020 : dw $fd00 : db $00
    dl $08d25c+$db0000 : dw $000c : dw $fe00 : db $00
    dl $08d268+$db0000 : dw $0008 : dw $fd00 : db $00
    dl $08d270+$db0000 : dw $0018 : dw $fe00 : db $00
    dl $08d288+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08d298+$db0000 : dw $0036 : dw $fe00 : db $00
    dl $08d2ce+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08d2de+$db0000 : dw $0048 : dw $fe00 : db $00
    dl $08d326+$db0000 : dw $0024 : dw $fd00 : db $00
    dl $08d34a+$db0000 : dw $003c : dw $fe00 : db $00
    dl $08d386+$db0000 : dw $0028 : dw $fd00 : db $00
    dl $08d3ae+$db0000 : dw $0048 : dw $fe00 : db $00
    dl $08d3f6+$db0000 : dw $0020 : dw $fd00 : db $00
    dl $08d416+$db0000 : dw $005a : dw $fe00 : db $00
    dl $08d470+$db0000 : dw $0038 : dw $fd00 : db $00
    dl $08d4a8+$db0000 : dw $0006 : dw $fe00 : db $00
    dl $08d4ae+$db0000 : dw $0004 : dw $fd00 : db $00
    dl $08d4b2+$db0000 : dw $001e : dw $fe00 : db $00
    dl $08d4d0+$db0000 : dw $000c : dw $fd00 : db $00
    dl $08d4dc+$db0000 : dw $0018 : dw $fe00 : db $00
    dl $08d4f4+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08d504+$db0000 : dw $0018 : dw $fe00 : db $00
    dl $08d51c+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08d52c+$db0000 : dw $002a : dw $fe00 : db $00
    dl $08d556+$db0000 : dw $0014 : dw $fd00 : db $00
    dl $08d56a+$db0000 : dw $002a : dw $fe00 : db $00
    dl $08d594+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08d5ac+$db0000 : dw $001e : dw $fe00 : db $00
    dl $08d5ca+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08d5da+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08d5fe+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08d616+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08d63a+$db0000 : dw $0014 : dw $fd00 : db $00
    dl $08d64e+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08d672+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08d68a+$db0000 : dw $0030 : dw $fe00 : db $00
    dl $08d6ba+$db0000 : dw $0020 : dw $fd00 : db $00
    dl $08d6da+$db0000 : dw $001e : dw $fe00 : db $00
    dl $08d6f8+$db0000 : dw $0014 : dw $fd00 : db $00
    dl $08d70c+$db0000 : dw $0012 : dw $fe00 : db $00
    dl $08d71e+$db0000 : dw $000c : dw $fd00 : db $00
    dl $08d72a+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08d74e+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08d766+$db0000 : dw $001e : dw $fe00 : db $00
    dl $08d784+$db0000 : dw $000c : dw $fd00 : db $00
    dl $08d790+$db0000 : dw $0030 : dw $fe00 : db $00
    dl $08d7c0+$db0000 : dw $0020 : dw $fd00 : db $00
    dl $08d7e0+$db0000 : dw $0030 : dw $fe00 : db $00
    dl $08d810+$db0000 : dw $0020 : dw $fd00 : db $00
    dl $08d830+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08d854+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08d86c+$db0000 : dw $0018 : dw $fe00 : db $00
    dl $08d884+$db0000 : dw $000c : dw $fd00 : db $00
    dl $08d890+$db0000 : dw $001e : dw $fe00 : db $00
    dl $08d8ae+$db0000 : dw $0014 : dw $fd00 : db $00
    dl $08d8c2+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08d8e6+$db0000 : dw $0014 : dw $fd00 : db $00
    dl $08d8fa+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08d91e+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08d936+$db0000 : dw $002a : dw $fe00 : db $00
    dl $08d960+$db0000 : dw $001c : dw $fd00 : db $00
    dl $08d97c+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08d9a0+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08d9b8+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08d9dc+$db0000 : dw $0018 : dw $fd00 : db $00
    dl $08d9f4+$db0000 : dw $0018 : dw $fe00 : db $00
    dl $08da0c+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08da1c+$db0000 : dw $0018 : dw $fe00 : db $00
    dl $08da34+$db0000 : dw $000c : dw $fd00 : db $00
    dl $08da40+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08da64+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08da74+$db0000 : dw $000c : dw $fe00 : db $00
    dl $08da80+$db0000 : dw $0008 : dw $fd00 : db $00
    dl $08da88+$db0000 : dw $0024 : dw $fe00 : db $00
    dl $08daac+$db0000 : dw $0010 : dw $fd00 : db $00
    dl $08dabc+$db0000 : dw $004e : dw $fe6c : db $00
    dl $08db0a+$db0000 : dw $0034 : dw $fd48 : db $00
    dl $08db3e+$db0000 : dw $13b9-$029a : dw $2200 : db $00
    dl $08eef7+$db0000 : dw $0066 : dw $fee4 : db $00
    dl $08ef5d+$db0000 : dw $0044 : dw $fd98 : db $00
    dl $08efa2+$db0000 : dw $3006 : dw $4280 : db $00
    dl $099fa8+$db0000 : dw $0012 : dw $fee4 : db $00
    dl $099fba+$db0000 : dw $000c : dw $fd98 : db $00
    dl $099fc6+$db0000 : dw $0639 : dw $4280 : db $00
    dl $09a5ff+$db0000 : dw $0006 : dw $fe00 : db $00
    dl $09a605+$db0000 : dw $0004 : dw $fd00 : db $00
    dl $09a609+$db0000 : dw $1a8b : dw $aa70 : db $00
    dl $09c094+$db0000 : dw $000c : dw $ff50 : db $00
    dl $09c0a0+$db0000 : dw $0008 : dw $fde0 : db $00
    dl $09c0a8+$db0000 : dw $06e4 : dw $52e0 : db $00
    dl $09c78c+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $09c792+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $09c796+$db0000 : dw $0add : dw $52e0 : db $00
    dl $09d273+$db0000 : dw $000c : dw $ff50 : db $00
    dl $09d27f+$db0000 : dw $0008 : dw $fde0 : db $00
    dl $09d287+$db0000 : dw $0d65 : dw $52e0 : db $00
    dl $09dfec+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $09dff2+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $09dff6+$db0000 : dw $0be2 : dw $52e0 : db $00
    dl $09ebd8+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $09ebde+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $09ebe2+$db0000 : dw $0ab9 : dw $52e0 : db $00
    dl $09f69b+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $09f6a1+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $09f6a6+$db0000 : dw $0b40 : dw $52e0 : db $00
    dl $0a81e6+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0a81ec+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0a81f0+$db0000 : dw $069c : dw $52e0 : db $00
    dl $0a888c+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0a8892+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0a8896+$db0000 : dw $0b2e : dw $52e0 : db $00
    dl $0a93c4+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0a93ca+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0a93ce+$db0000 : dw $09ab : dw $52e0 : db $00
    dl $0a9d79+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0a9d7f+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0a9d83+$db0000 : dw $0b13 : dw $52e0 : db $00
    dl $0aa896+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0aa89c+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0aa8a0+$db0000 : dw $0bf4 : dw $52e0 : db $00
    dl $0ab494+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0ab49a+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0ab49e+$db0000 : dw $06a5 : dw $52e0 : db $00
    dl $0abb43+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0abb49+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0abb4d+$db0000 : dw $0b40 : dw $52e0 : db $00
    dl $0ac68d+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0ac693+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0ac697+$db0000 : dw $01b0 : dw $52e0 : db $00
    dl $0ac847+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0ac84d+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0ac851+$db0000 : dw $060c : dw $52e0 : db $00
    dl $0ace5d+$db0000 : dw $0006 : dw $ff50 : db $00
    dl $0ace63+$db0000 : dw $0004 : dw $fde0 : db $00
    dl $0ace67+$db0000 : dw $05a0 : dw $52e0 : db $00
    dl $0ad407+$db0000 : dw $000c : dw $ff68 : db $00
    dl $0ad413+$db0000 : dw $0008 : dw $fdf0 : db $00
    dl $09c0a8+$db0000 : dw $06e4 : dw $63f0 : db $00
    dl $0ad41b+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad421+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $09c796+$db0000 : dw $0add : dw $63f0 : db $00
    dl $0ad425+$db0000 : dw $000c : dw $ff68 : db $00
    dl $0ad431+$db0000 : dw $0008 : dw $fdf0 : db $00
    dl $09d287+$db0000 : dw $0d65 : dw $63f0 : db $00
    dl $0ad439+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad43f+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $09dff6+$db0000 : dw $0be2 : dw $63f0 : db $00
    dl $0ad443+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad449+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $09ebe2+$db0000 : dw $0ab9 : dw $63f0 : db $00
    dl $0ad44d+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad453+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $09f6a6+$db0000 : dw $0b40 : dw $63f0 : db $00
    dl $0ad457+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad45d+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0a81f0+$db0000 : dw $069c : dw $63f0 : db $00
    dl $0ad461+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad467+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0a8896+$db0000 : dw $0b2e : dw $63f0 : db $00
    dl $0ad46b+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad471+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0a93ce+$db0000 : dw $09ab : dw $63f0 : db $00
    dl $0ad475+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad47b+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0a9d83+$db0000 : dw $0b13 : dw $63f0 : db $00
    dl $0ad47f+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad485+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0aa8a0+$db0000 : dw $0bf4 : dw $63f0 : db $00
    dl $0ad489+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad48f+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0ab49e+$db0000 : dw $06a5 : dw $63f0 : db $00
    dl $0ad493+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad499+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0abb4d+$db0000 : dw $0b40 : dw $63f0 : db $00
    dl $0ad49d+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad4a3+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0ac697+$db0000 : dw $01b0 : dw $63f0 : db $00
    dl $0ad4a7+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad4ad+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0ac851+$db0000 : dw $060c : dw $63f0 : db $00
    dl $0ad4b1+$db0000 : dw $0006 : dw $ff68 : db $00
    dl $0ad4b7+$db0000 : dw $0004 : dw $fdf0 : db $00
    dl $0ace67+$db0000 : dw $05a0 : dw $63f0 : db $00
    dl $0ad4bb+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0ad4c1+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0ad4c5+$db0000 : dw $037b : dw $6074 : db $00
    dl $0ad840+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0ad846+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0ad84a+$db0000 : dw $02d0 : dw $6074 : db $00
    dl $0adb1a+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0adb20+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0adb24+$db0000 : dw $0360 : dw $6074 : db $00
    dl $0ade84+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0ade8a+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0ade8e+$db0000 : dw $0360 : dw $6074 : db $00
    dl $0ae1ee+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0ae1f4+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0ae1f8+$db0000 : dw $02ac : dw $6074 : db $00
    dl $0ae4a4+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0ae4aa+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0ae4ae+$db0000 : dw $037b : dw $6074 : db $00
    dl $0ae829+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0ae82f+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0ae833+$db0000 : dw $037b : dw $6074 : db $00
    dl $0aebae+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0aebb4+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0aebb8+$db0000 : dw $037b : dw $6074 : db $00
    dl $0aef33+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0aef39+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0aef3d+$db0000 : dw $02d0 : dw $6074 : db $00
    dl $0af20d+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0af213+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0af217+$db0000 : dw $037b : dw $6074 : db $00
    dl $0af592+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0af598+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0af59c+$db0000 : dw $0360 : dw $6074 : db $00
    dl $0af8fc+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0af902+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0af906+$db0000 : dw $0360 : dw $6074 : db $00
    dl $0afc66+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0afc6c+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0afc70+$db0000 : dw $037b : dw $6074 : db $00
    dl $0affeb+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0afff1+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0afff6+$db0000 : dw $037b : dw $6074 : db $00
    dl $0b8371+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0b8377+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0b837b+$db0000 : dw $01b0 : dw $6074 : db $00
    dl $0b852b+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0b8531+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0b8535+$db0000 : dw $0360 : dw $6074 : db $00
    dl $0b8895+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0b889b+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0b889f+$db0000 : dw $0264 : dw $6074 : db $00
    dl $0b8b03+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0b8b09+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0b8b0d+$db0000 : dw $0360 : dw $6074 : db $00
    dl $0b8e6d+$db0000 : dw $0006 : dw $ff62 : db $00
    dl $0b8e73+$db0000 : dw $0004 : dw $fdec : db $00
    dl $0b8e77+$db0000 : dw $02f4 : dw $6074 : db $00
    dl $0b916b+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b9171+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0ad4c5+$db0000 : dw $037b : dw $7184 : db $00
    dl $0b9175+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b917b+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0ad84a+$db0000 : dw $02d0 : dw $7184 : db $00
    dl $0b917f+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b9185+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0adb24+$db0000 : dw $0360 : dw $7184 : db $00
    dl $0b9189+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b918f+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0ade8e+$db0000 : dw $0360 : dw $7184 : db $00
    dl $0b9193+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b9199+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0ae1f8+$db0000 : dw $02ac : dw $7184 : db $00
    dl $0b919d+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91a3+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0ae4ae+$db0000 : dw $037b : dw $7184 : db $00
    dl $0b91a7+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91ad+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0ae833+$db0000 : dw $037b : dw $7184 : db $00
    dl $0b91b1+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91b7+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0aebb8+$db0000 : dw $037b : dw $7184 : db $00
    dl $0b91bb+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91c1+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0aef3d+$db0000 : dw $02d0 : dw $7184 : db $00
    dl $0b91c5+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91cb+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0af217+$db0000 : dw $037b : dw $7184 : db $00
    dl $0b91cf+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91d5+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0af59c+$db0000 : dw $0360 : dw $7184 : db $00
    dl $0b91d9+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91df+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0af906+$db0000 : dw $0360 : dw $7184 : db $00
    dl $0b91e3+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91e9+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0afc70+$db0000 : dw $037b : dw $7184 : db $00
    dl $0b91ed+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91f3+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0afff6+$db0000 : dw $037b : dw $7184 : db $00
    dl $0b91f7+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b91fd+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0b837b+$db0000 : dw $01b0 : dw $7184 : db $00
    dl $0b9201+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b9207+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0b8535+$db0000 : dw $0360 : dw $7184 : db $00
    dl $0b920b+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b9211+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0b889f+$db0000 : dw $0264 : dw $7184 : db $00
    dl $0b9215+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b921b+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0b8b0d+$db0000 : dw $0360 : dw $7184 : db $00
    dl $0b921f+$db0000 : dw $0006 : dw $ff7a : db $00
    dl $0b9225+$db0000 : dw $0004 : dw $fdfc : db $00
    dl $0b8e77+$db0000 : dw $02f4 : dw $7184 : db $00
    dl sound_data_540 : dw $0001 : dw $fffa : db $00
    dl sound_data_541 : dw $0001 : dw $fffa : db $00
    dl sound_data_542 : dw $0001 : dw $fffa : db $00
    dl sound_data_543 : dw $0001 : dw $fffa : db $00
    dl sound_data_544 : dw $0001 : dw $ff9e : db $00
    dl sound_data_545 : dw $0001 : dw $ff9e : db $00
    dl sound_data_546 : dw $0001 : dw $fffa : db $00
    dl sound_data_547 : dw $0001 : dw $fffa : db $00
    dl sound_data_548 : dw $0001 : dw $fffa : db $00
    dl sound_data_549 : dw $0001 : dw $fffa : db $00
    dl sound_data_550 : dw $0006 : dw $ff62 : db $00
    dl sound_data_551 : dw $0006 : dw $ff7a : db $00
    dl sound_data_552 : dw $0006 : dw $ff62 : db $00
    dl sound_data_553 : dw $0006 : dw $ff7a : db $00
    dl sound_data_554 : dw $0006 : dw $ff62 : db $00
    dl sound_data_555 : dw $0006 : dw $ff7a : db $00
    dl sound_data_556 : dw $0006 : dw $ff62 : db $00
    dl sound_data_557 : dw $0006 : dw $ff7a : db $00
    dl sound_data_558 : dw $0006 : dw $ff62 : db $00
    dl sound_data_559 : dw $0006 : dw $ff7a : db $00
    dl sound_data_560 : dw $0006 : dw $ff62 : db $00
    dl sound_data_561 : dw $0006 : dw $ff7a : db $00
    dl sound_data_562 : dw $0006 : dw $ff62 : db $00
    dl sound_data_563 : dw $0006 : dw $ff7a : db $00

    dl sound_data_0564 : dw $0982 : dw $c500 : db $03
    dl sound_data_0565 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0566 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0567 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0568 : dw $17d6 : dw $0000 : db $00
    dl sound_data_0569 : dw $0f0c : dw $0000 : db $00
    dl sound_data_0570 : dw $0870 : dw $0000 : db $00
    dl sound_data_0571 : dw $0e8e : dw $c500 : db $01
    dl sound_data_0572 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0573 : dw $0036 : dw $fe00 : db $00
    dl sound_data_0574 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0575 : dw $0288 : dw $0000 : db $00
    dl sound_data_0576 : dw $0a20 : dw $0000 : db $00
    dl sound_data_0577 : dw $0e92 : dw $c500 : db $01
    dl sound_data_0578 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0579 : dw $0054 : dw $fe00 : db $00
    dl sound_data_0580 : dw $0028 : dw $fd00 : db $00
    dl sound_data_0581 : dw $0b40 : dw $0000 : db $00
    dl sound_data_0582 : dw $05a0 : dw $0000 : db $00
    dl sound_data_0583 : dw $0480 : dw $0000 : db $00
    dl sound_data_0584 : dw $05a0 : dw $0000 : db $00
    dl sound_data_0585 : dw $0900 : dw $0000 : db $00
    dl sound_data_0586 : dw $0d08 : dw $c500 : db $01
    dl sound_data_0587 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0588 : dw $004e : dw $fe00 : db $00
    dl sound_data_0589 : dw $0028 : dw $fd00 : db $00
    dl sound_data_0590 : dw $1923 : dw $0000 : db $00
    dl sound_data_0591 : dw $0546 : dw $0000 : db $00
    dl sound_data_0592 : dw $0558 : dw $0000 : db $00
    dl sound_data_0593 : dw $0d2f : dw $0000 : db $00
    dl sound_data_0594 : dw $04a4 : dw $0000 : db $00
    dl sound_data_0595 : dw $0900 : dw $0000 : db $00
    dl sound_data_0596 : dw $0a18 : dw $c500 : db $01
    dl sound_data_0597 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0598 : dw $0042 : dw $fe00 : db $00
    dl sound_data_0599 : dw $0020 : dw $fd00 : db $00
    dl sound_data_0600 : dw $05f1 : dw $0000 : db $00
    dl sound_data_0601 : dw $0d80 : dw $0000 : db $00
    dl sound_data_0602 : dw $0bf4 : dw $c500 : db $01
    dl sound_data_0603 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0604 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0605 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0606 : dw $05e8 : dw $0000 : db $00
    dl sound_data_0607 : dw $0900 : dw $0000 : db $00
    dl sound_data_0608 : dw $0900 : dw $0000 : db $00
    dl sound_data_0609 : dw $1758 : dw $0000 : db $00
    dl sound_data_0610 : dw $03f9 : dw $c500 : db $03
    dl sound_data_0611 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0612 : dw $0012 : dw $fe00 : db $00
    dl sound_data_0613 : dw $000c : dw $fd00 : db $00
    dl sound_data_0614 : dw $0b0f : dw $c500 : db $01
    dl sound_data_0615 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0616 : dw $002a : dw $fe00 : db $00
    dl sound_data_0617 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0618 : dw $05a0 : dw $0000 : db $00
    dl sound_data_0619 : dw $03de : dw $c500 : db $01
    dl sound_data_0620 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0621 : dw $001e : dw $fe00 : db $00
    dl sound_data_0622 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0623 : dw $0299 : dw $c500 : db $01
    dl sound_data_0624 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0625 : dw $0012 : dw $fe00 : db $00
    dl sound_data_0626 : dw $000c : dw $fd00 : db $00
    dl sound_data_0627 : dw $0a58 : dw $c500 : db $03
    dl sound_data_0628 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0629 : dw $002a : dw $fe00 : db $00
    dl sound_data_0630 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0631 : dw $027f : dw $0000 : db $00
    dl sound_data_0632 : dw $030f : dw $c500 : db $03
    dl sound_data_0633 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0634 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0635 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0636 : dw $0b9f : dw $c500 : db $01
    dl sound_data_0637 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0638 : dw $0042 : dw $fe00 : db $00
    dl sound_data_0639 : dw $002c : dw $fd00 : db $00
    dl sound_data_0640 : dw $0120 : dw $0000 : db $00
    dl sound_data_0641 : dw $092a : dw $c500 : db $01
    dl sound_data_0642 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0643 : dw $001e : dw $fe00 : db $00
    dl sound_data_0644 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0645 : dw $1d88 : dw $0000 : db $00
    dl sound_data_0646 : dw $0678 : dw $0000 : db $00
    dl sound_data_0647 : dw $1200 : dw $0000 : db $00
    dl sound_data_0648 : dw $0d80 : dw $0000 : db $00
    dl sound_data_0649 : dw $0b4d : dw $c500 : db $01
    dl sound_data_0650 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0651 : dw $0036 : dw $fe00 : db $00
    dl sound_data_0652 : dw $001c : dw $fd00 : db $00
    dl sound_data_0653 : dw $040b : dw $0000 : db $00
    dl sound_data_0654 : dw $0828 : dw $0000 : db $00
    dl sound_data_0655 : dw $0a1f : dw $c500 : db $01
    dl sound_data_0656 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0657 : dw $002a : dw $fe00 : db $00
    dl sound_data_0658 : dw $001c : dw $fd00 : db $00
    dl sound_data_0659 : dw $0a71 : dw $c500 : db $01
    dl sound_data_0660 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0661 : dw $0048 : dw $fe00 : db $00
    dl sound_data_0662 : dw $0020 : dw $fd00 : db $00
    dl sound_data_0663 : dw $0ff6 : dw $0000 : db $00
    dl sound_data_0664 : dw $05e8 : dw $0000 : db $00
    dl sound_data_0665 : dw $0d80 : dw $0000 : db $00
    dl sound_data_0666 : dw $0a92 : dw $c500 : db $03
    dl sound_data_0667 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0668 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0669 : dw $001c : dw $fd00 : db $00
    dl sound_data_0670 : dw $0f8e : dw $c500 : db $01
    dl sound_data_0671 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0672 : dw $0060 : dw $fe00 : db $00
    dl sound_data_0673 : dw $0028 : dw $fd00 : db $00
    dl sound_data_0674 : dw $1bf3 : dw $0000 : db $00
    dl sound_data_0675 : dw $08ff : dw $c500 : db $01
    dl sound_data_0676 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0677 : dw $003c : dw $fe00 : db $00
    dl sound_data_0678 : dw $001c : dw $fd00 : db $00
    dl sound_data_0679 : dw $0aec : dw $c500 : db $01
    dl sound_data_0680 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0681 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0682 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0683 : dw $0900 : dw $0000 : db $00
    dl sound_data_0684 : dw $0d80 : dw $0000 : db $00
    dl sound_data_0685 : dw $0a87 : dw $c500 : db $01
    dl sound_data_0686 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0687 : dw $002a : dw $fe00 : db $00
    dl sound_data_0688 : dw $001c : dw $fd00 : db $00
    dl sound_data_0689 : dw $0900 : dw $0000 : db $00
    dl sound_data_0690 : dw $06c0 : dw $0000 : db $00
    dl sound_data_0691 : dw $07f7 : dw $c500 : db $01
    dl sound_data_0692 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0693 : dw $002a : dw $fe00 : db $00
    dl sound_data_0694 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0695 : dw $0ad3 : dw $c500 : db $01
    dl sound_data_0696 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0697 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0698 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0699 : dw $096b : dw $c500 : db $01
    dl sound_data_0700 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0701 : dw $002a : dw $fe00 : db $00
    dl sound_data_0702 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0703 : dw $11ca : dw $0000 : db $00
    dl sound_data_0704 : dw $0480 : dw $0000 : db $00
    dl sound_data_0705 : dw $0ad4 : dw $0000 : db $00
    dl sound_data_0706 : dw $08f0 : dw $c500 : db $01
    dl sound_data_0707 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0708 : dw $002a : dw $fe00 : db $00
    dl sound_data_0709 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0710 : dw $176a : dw $0000 : db $00
    dl sound_data_0711 : dw $0ad8 : dw $c500 : db $01
    dl sound_data_0712 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0713 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0714 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0715 : dw $0d66 : dw $c500 : db $01
    dl sound_data_0716 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0717 : dw $0036 : dw $fe00 : db $00
    dl sound_data_0718 : dw $0020 : dw $fd00 : db $00
    dl $e5c697 : dw $01b0 : dw $0000 : db $00
    dl sound_data_0720 : dw $09b1 : dw $c500 : db $01
    dl sound_data_0721 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0722 : dw $001e : dw $fe00 : db $00
    dl sound_data_0723 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0724 : dw $0edd : dw $c500 : db $01
    dl sound_data_0725 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0726 : dw $0036 : dw $fe00 : db $00
    dl sound_data_0727 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0728 : dw $17a0 : dw $0000 : db $00
    dl sound_data_0729 : dw $0900 : dw $0000 : db $00
    dl sound_data_0730 : dw $09a3 : dw $c500 : db $01
    dl sound_data_0731 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0732 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0733 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0734 : dw $05f7 : dw $c500 : db $01
    dl sound_data_0735 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0736 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0737 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0738 : dw $04bd : dw $c500 : db $03
    dl sound_data_0739 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0740 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0741 : dw $001c : dw $fd00 : db $00
    dl sound_data_0742 : dw $06d2 : dw $0000 : db $00
    dl sound_data_0743 : dw $07e0 : dw $0000 : db $00
    dl sound_data_0744 : dw $028b : dw $c500 : db $03
    dl sound_data_0745 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0746 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0747 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0748 : dw $05f4 : dw $c500 : db $03
    dl sound_data_0749 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0750 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0751 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0752 : dw $0a12 : dw $c500 : db $03
    dl sound_data_0753 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0754 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0755 : dw $001c : dw $fd00 : db $00
    dl sound_data_0756 : dw $0d53 : dw $0000 : db $00
    dl sound_data_0757 : dw $0276 : dw $0000 : db $00
    dl sound_data_0758 : dw $07e0 : dw $0000 : db $00
    dl sound_data_0759 : dw $03f0 : dw $c500 : db $03
    dl sound_data_0760 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0761 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0762 : dw $0020 : dw $fd00 : db $00
    dl sound_data_0763 : dw $0cae : dw $c500 : db $03
    dl sound_data_0764 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0765 : dw $0042 : dw $fe00 : db $00
    dl sound_data_0766 : dw $0024 : dw $fd00 : db $00
    dl sound_data_0767 : dw $06fa : dw $c500 : db $03
    dl sound_data_0768 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0769 : dw $0036 : dw $fe00 : db $00
    dl sound_data_0770 : dw $0020 : dw $fd00 : db $00
    dl sound_data_0771 : dw $0b40 : dw $0000 : db $00
    dl sound_data_0772 : dw $04a3 : dw $c500 : db $03
    dl sound_data_0773 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0774 : dw $004e : dw $fe00 : db $00
    dl sound_data_0775 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0776 : dw $0ab0 : dw $0000 : db $00
    dl sound_data_0777 : dw $0438 : dw $0000 : db $00
    dl sound_data_0778 : dw $018c : dw $0000 : db $00
    dl sound_data_0779 : dw $0360 : dw $0000 : db $00
    dl sound_data_0780 : dw $02e6 : dw $c500 : db $03
    dl sound_data_0781 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0782 : dw $0036 : dw $fe00 : db $00
    dl sound_data_0783 : dw $0008 : dw $fd00 : db $00
    dl sound_data_0784 : dw $02c6 : dw $c500 : db $03
    dl sound_data_0785 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0786 : dw $0006 : dw $fe00 : db $00
    dl sound_data_0787 : dw $0004 : dw $fd00 : db $00
    dl sound_data_0788 : dw $02f5 : dw $c500 : db $03
    dl sound_data_0789 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0790 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0791 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0792 : dw $0321 : dw $c500 : db $03
    dl sound_data_0793 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0794 : dw $0012 : dw $fe00 : db $00
    dl sound_data_0795 : dw $000c : dw $fd00 : db $00
    dl sound_data_0796 : dw $0261 : dw $c500 : db $03
    dl sound_data_0797 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0798 : dw $0006 : dw $fe66 : db $00
    dl sound_data_0799 : dw $0004 : dw $fd44 : db $00
    dl $e1b847 : dw $0b88 : dw $a000 : db $00
    dl sound_data_0801 : dw $000c : dw $fe00 : db $00
    dl sound_data_0802 : dw $0008 : dw $fd00 : db $00
    dl sound_data_0803 : dw $02e4 : dw $c500 : db $03
    dl sound_data_0804 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0805 : dw $0012 : dw $fe00 : db $00
    dl sound_data_0806 : dw $000c : dw $fd00 : db $00
    dl sound_data_0807 : dw $0583 : dw $c500 : db $03
    dl sound_data_0808 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0809 : dw $001e : dw $fe00 : db $00
    dl sound_data_0810 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0811 : dw $07e0 : dw $0000 : db $00
    dl sound_data_0812 : dw $054e : dw $c500 : db $03
    dl sound_data_0813 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0814 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0815 : dw $000c : dw $fd00 : db $00
    dl sound_data_0816 : dw $0402 : dw $0000 : db $00
    dl sound_data_0817 : dw $040e : dw $c500 : db $03
    dl sound_data_0818 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0819 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0820 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0821 : dw $0d41 : dw $0000 : db $00
    dl sound_data_0822 : dw $0487 : dw $c500 : db $03
    dl sound_data_0823 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0824 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0825 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0826 : dw $03c5 : dw $c500 : db $03
    dl sound_data_0827 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0828 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0829 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0830 : dw $0351 : dw $c500 : db $03
    dl sound_data_0831 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0832 : dw $001e : dw $fe00 : db $00
    dl sound_data_0833 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0834 : dw $0bd0 : dw $0000 : db $00
    dl sound_data_0835 : dw $0409 : dw $c500 : db $03
    dl sound_data_0836 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0837 : dw $001e : dw $fe00 : db $00
    dl sound_data_0838 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0839 : dw $04ae : dw $c500 : db $03
    dl sound_data_0840 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0841 : dw $000c : dw $fe00 : db $00
    dl sound_data_0842 : dw $0008 : dw $fd00 : db $00
    dl sound_data_0843 : dw $0b6d : dw $0000 : db $00
    dl sound_data_0844 : dw $026c : dw $c500 : db $03
    dl sound_data_0845 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0846 : dw $001e : dw $fe00 : db $00
    dl sound_data_0847 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0848 : dw $09d6 : dw $c500 : db $03
    dl sound_data_0849 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0850 : dw $002a : dw $fe00 : db $00
    dl sound_data_0851 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0852 : dw $063a : dw $c500 : db $03
    dl sound_data_0853 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0854 : dw $001e : dw $fe00 : db $00
    dl sound_data_0855 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0856 : dw $061d : dw $c500 : db $03
    dl sound_data_0857 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0858 : dw $001e : dw $fe00 : db $00
    dl sound_data_0859 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0860 : dw $10bc : dw $0000 : db $00
    dl sound_data_0861 : dw $0c38 : dw $c500 : db $03
    dl sound_data_0862 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0863 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0864 : dw $001c : dw $fd00 : db $00
    dl sound_data_0865 : dw $0b32 : dw $c500 : db $03
    dl sound_data_0866 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0867 : dw $002a : dw $fe00 : db $00
    dl sound_data_0868 : dw $001c : dw $fd00 : db $00
    dl sound_data_0869 : dw $0a3b : dw $c500 : db $03
    dl sound_data_0870 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0871 : dw $001e : dw $fe00 : db $00
    dl sound_data_0872 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0873 : dw $066b : dw $c500 : db $03
    dl sound_data_0874 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0875 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0876 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0877 : dw $04dc : dw $c500 : db $03
    dl sound_data_0878 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0879 : dw $001e : dw $fe00 : db $00
    dl sound_data_0880 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0881 : dw $067e : dw $c500 : db $03
    dl sound_data_0882 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0883 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0884 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0885 : dw $053b : dw $c500 : db $03
    dl sound_data_0886 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0887 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0888 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0889 : dw $0301 : dw $c500 : db $03
    dl sound_data_0890 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0891 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0892 : dw $000c : dw $fd00 : db $00
    dl sound_data_0893 : dw $05c3 : dw $c500 : db $03
    dl sound_data_0894 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0895 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0896 : dw $001c : dw $fd00 : db $00
    dl sound_data_0897 : dw $08dc : dw $0000 : db $00
    dl sound_data_0898 : dw $043c : dw $c500 : db $03
    dl sound_data_0899 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0900 : dw $002a : dw $fe00 : db $00
    dl sound_data_0901 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0902 : dw $057c : dw $0000 : db $00
    dl sound_data_0903 : dw $0998 : dw $c500 : db $03
    dl sound_data_0904 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0905 : dw $001e : dw $fe00 : db $00
    dl sound_data_0906 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0907 : dw $034e : dw $0000 : db $00
    dl sound_data_0908 : dw $0195 : dw $0000 : db $00
    dl sound_data_0909 : dw $030d : dw $c500 : db $03
    dl sound_data_0910 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0911 : dw $001e : dw $fe00 : db $00
    dl sound_data_0912 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0913 : dw $0714 : dw $c500 : db $03
    dl sound_data_0914 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0915 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0916 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0917 : dw $03de : dw $0000 : db $00
    dl sound_data_0918 : dw $0586 : dw $c500 : db $03
    dl sound_data_0919 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0920 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0921 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0922 : dw $0787 : dw $c500 : db $03
    dl sound_data_0923 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0924 : dw $0012 : dw $fe00 : db $00
    dl sound_data_0925 : dw $000c : dw $fd00 : db $00
    dl sound_data_0926 : dw $0ce7 : dw $0000 : db $00
    dl sound_data_0927 : dw $03f0 : dw $c500 : db $03
    dl sound_data_0928 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0929 : dw $0030 : dw $fe00 : db $00
    dl sound_data_0930 : dw $001c : dw $fd00 : db $00
    dl sound_data_0931 : dw $033e : dw $c500 : db $03
    dl sound_data_0932 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0933 : dw $0012 : dw $fe00 : db $00
    dl sound_data_0934 : dw $000c : dw $fd00 : db $00
    dl sound_data_0935 : dw $0987 : dw $0000 : db $00
    dl sound_data_0936 : dw $092e : dw $c500 : db $03
    dl sound_data_0937 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0938 : dw $0012 : dw $fe00 : db $00
    dl sound_data_0939 : dw $000c : dw $fd00 : db $00
    dl sound_data_0940 : dw $04e5 : dw $c500 : db $03
    dl sound_data_0941 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0942 : dw $001e : dw $fe00 : db $00
    dl sound_data_0943 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0944 : dw $04ae : dw $c500 : db $03
    dl sound_data_0945 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0946 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0947 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0948 : dw $0439 : dw $c500 : db $03
    dl sound_data_0949 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0950 : dw $001e : dw $fe00 : db $00
    dl sound_data_0951 : dw $000c : dw $fd00 : db $00
    dl sound_data_0952 : dw $06cd : dw $c500 : db $03
    dl sound_data_0953 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0954 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0955 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0956 : dw $06f2 : dw $c500 : db $03
    dl sound_data_0957 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0958 : dw $001e : dw $fe00 : db $00
    dl sound_data_0959 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0960 : dw $05ae : dw $c500 : db $03
    dl sound_data_0961 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0962 : dw $001e : dw $fe00 : db $00
    dl sound_data_0963 : dw $0008 : dw $fd00 : db $00
    dl sound_data_0964 : dw $0247 : dw $c500 : db $03
    dl sound_data_0965 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0966 : dw $0012 : dw $fe00 : db $00
    dl sound_data_0967 : dw $000c : dw $fd00 : db $00
    dl sound_data_0968 : dw $0155 : dw $c500 : db $03
    dl sound_data_0969 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0970 : dw $000c : dw $fe00 : db $00
    dl sound_data_0971 : dw $0008 : dw $fd00 : db $00
    dl sound_data_0972 : dw $051a : dw $c500 : db $03
    dl sound_data_0973 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0974 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0975 : dw $0014 : dw $fd00 : db $00
    dl sound_data_0976 : dw $021c : dw $c500 : db $03
    dl sound_data_0977 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0978 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0979 : dw $0010 : dw $fd00 : db $00
    dl sound_data_0980 : dw $0fca : dw $c500 : db $03
    dl sound_data_0981 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0982 : dw $0036 : dw $fe00 : db $00
    dl sound_data_0983 : dw $0024 : dw $fd00 : db $00
    dl sound_data_0984 : dw $03ca : dw $c500 : db $03
    dl sound_data_0985 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0986 : dw $000c : dw $fe00 : db $00
    dl sound_data_0987 : dw $0008 : dw $fd00 : db $00
    dl sound_data_0988 : dw $0293 : dw $c500 : db $03
    dl sound_data_0989 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0990 : dw $0018 : dw $fe00 : db $00
    dl sound_data_0991 : dw $000c : dw $fd00 : db $00
    dl sound_data_0992 : dw $07a7 : dw $c500 : db $03
    dl sound_data_0993 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0994 : dw $002a : dw $fe00 : db $00
    dl sound_data_0995 : dw $0018 : dw $fd00 : db $00
    dl sound_data_0996 : dw $091f : dw $c500 : db $03
    dl sound_data_0997 : dw $0004 : dw $fff8 : db $00
    dl sound_data_0998 : dw $0024 : dw $fe00 : db $00
    dl sound_data_0999 : dw $0014 : dw $fd00 : db $00
    dl sound_data_1000 : dw $04ff : dw $c500 : db $03
    dl sound_data_1001 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1002 : dw $001e : dw $fe00 : db $00
    dl sound_data_1003 : dw $0014 : dw $fd00 : db $00
    dl sound_data_1004 : dw $0796 : dw $c500 : db $03
    dl sound_data_1005 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1006 : dw $002a : dw $fe00 : db $00
    dl sound_data_1007 : dw $0018 : dw $fd00 : db $00
    dl sound_data_1008 : dw $0978 : dw $c500 : db $03
    dl sound_data_1009 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1010 : dw $0024 : dw $fe00 : db $00
    dl sound_data_1011 : dw $0014 : dw $fd00 : db $00
    dl sound_data_1012 : dw $02f0 : dw $c500 : db $03
    dl sound_data_1013 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1014 : dw $0018 : dw $fe00 : db $00
    dl sound_data_1015 : dw $0010 : dw $fd00 : db $00
    dl sound_data_1016 : dw $082c : dw $c500 : db $03
    dl sound_data_1017 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1018 : dw $0018 : dw $fe00 : db $00
    dl sound_data_1019 : dw $0010 : dw $fd00 : db $00
    dl sound_data_1020 : dw $04d9 : dw $c500 : db $03
    dl sound_data_1021 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1022 : dw $0018 : dw $fe00 : db $00
    dl sound_data_1023 : dw $0010 : dw $fd00 : db $00
    dl sound_data_1024 : dw $054f : dw $c500 : db $03
    dl sound_data_1025 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1026 : dw $0024 : dw $fe00 : db $00
    dl sound_data_1027 : dw $0014 : dw $fd00 : db $00
    dl sound_data_1028 : dw $02a5 : dw $c500 : db $03
    dl sound_data_1029 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1030 : dw $0012 : dw $fe00 : db $00
    dl sound_data_1031 : dw $000c : dw $fd00 : db $00
    dl sound_data_1032 : dw $0482 : dw $c500 : db $03
    dl sound_data_1033 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1034 : dw $0024 : dw $fe00 : db $00
    dl sound_data_1035 : dw $0014 : dw $fd00 : db $00
    dl sound_data_1036 : dw $03ec : dw $c500 : db $03
    dl sound_data_1037 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1038 : dw $001e : dw $fe00 : db $00
    dl sound_data_1039 : dw $0014 : dw $fd00 : db $00
    dl sound_data_1040 : dw $0539 : dw $c500 : db $03
    dl sound_data_1041 : dw $0004 : dw $fff8 : db $00
    dl sound_data_1042 : dw $0018 : dw $fe00 : db $00
    dl sound_data_1043 : dw $0010 : dw $fd00 : db $00
    dl sound_data_1044 : dw $0a44 : dw $0000 : db $00

sd_fe4_se_wave:
    dl fe4_se_data_064_0_0 : dw $0006 : dw $ff50 : db $00
    dl fe4_se_data_064_0_1 : dw $0004 : dw $fde0 : db $00
    dl fe4_se_data_064_0_2 : dw $052b : dw $52e0 : db $00
    dl fe4_se_data_064_1_0 : dw $0006 : dw $ff68 : db $00
    dl fe4_se_data_064_1_1 : dw $0004 : dw $fdf0 : db $00
    dl fe4_se_data_064_0_2 : dw $052b : dw $63f0 : db $00
    dl fe4_se_data_070_0_0 : dw $0006 : dw $ff50 : db $00
    dl fe4_se_data_070_0_1 : dw $0004 : dw $fde0 : db $00
    dl fe4_se_data_070_0_2 : dw $0750 : dw $52e0 : db $00
    dl fe4_se_data_070_1_0 : dw $0006 : dw $ff68 : db $00
    dl fe4_se_data_070_1_1 : dw $0004 : dw $fdf0 : db $00
    dl fe4_se_data_070_0_2 : dw $0750 : dw $63f0 : db $00
    dl fe4_se_data_079_0_0 : dw $0006 : dw $ff50 : db $00
    dl fe4_se_data_079_0_1 : dw $0004 : dw $fde0 : db $00
    dl $e1b847 : dw $0b88 : dw $52e0 : db $00
    dl fe4_se_data_079_1_0 : dw $0006 : dw $ff68 : db $00
    dl fe4_se_data_079_1_1 : dw $0004 : dw $fdf0 : db $00
    dl $e1b847 : dw $0b88 : dw $63f0 : db $00
    dl fe4_se_data_080_0_0 : dw $0006 : dw $ff50 : db $00
    dl fe4_se_data_080_0_1 : dw $0004 : dw $fde0 : db $00
    dl fe4_se_data_080_0_2 : dw $0d92 : dw $52e0 : db $00
    dl fe4_se_data_080_1_0 : dw $0006 : dw $ff68 : db $00
    dl fe4_se_data_080_1_1 : dw $0004 : dw $fdf0 : db $00
    dl fe4_se_data_080_0_2 : dw $0d92 : dw $63f0 : db $00

sd_fe4_se_seq:
    dl fe4_se_seq_begin : dw fe4_se_seq_end-fe4_se_seq_begin : dw !aram_fe4_se_seq : db $00

sd_fe4_map_se_seq:
    dl fe4_map_se_seq_begin : dw fe4_map_se_seq_end-fe4_map_se_seq_begin : dw !aram_fe4_map_se_seq : db $00

sd_fe5_wav_331f:
    dl $e3ec5d : dw $029a : dw !aram_fe4_se_seq : db $00

music_header_ptrs:
    dw music_header_00
    dw music_header_01
    dw music_header_02
    dw music_header_03
    dw music_header_04
    dw music_header_05
    dw music_header_06
    dw music_header_07
    dw music_header_08
    dw music_header_09
    dw music_header_0a
    dw music_header_0b
    dw music_header_0c
    dw music_header_0d
    dw $0000
    dw $0000
    dw music_header_10
    dw music_header_11
    dw music_header_12
    dw music_header_13
    dw music_header_14
    dw music_header_15
    dw music_header_16
    dw music_header_17
    dw music_header_18
    dw music_header_19
    dw music_header_1a
    dw music_header_1b
    dw music_header_1c
    dw music_header_1d
    dw music_header_1e
    dw music_header_1f
    dw music_header_20
    dw music_header_21
    dw music_header_22
    dw music_header_23
    dw music_header_24
    dw music_header_25
    dw music_header_26
    dw music_header_27
    dw music_header_28
    dw music_header_29
    dw music_header_2a
    dw music_header_2b
    dw music_header_2c
    dw $0000
    dw $0000
    dw $0000
    dw music_header_30
    dw music_header_31
    dw music_header_32
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw music_header_38
    dw music_header_39
    dw music_header_3a
    dw music_header_3b
    dw music_header_3c
    dw music_header_3d
    dw music_header_3e
    dw $0000
    dw music_header_40
    dw music_header_41
    dw music_header_42
    dw music_header_43
    dw music_header_44
    dw music_header_45
    dw $0000
    dw $0000
    dw music_header_48
    dw music_header_49
    dw music_header_4a
    dw music_header_4b
    dw music_header_4c
    dw music_header_4d
    dw music_header_4e
    dw music_header_4f
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw music_header_56
    dw music_header_57

    dw $0000
    dw $0000
    dw $0000
    dw music_header_5b
    dw music_header_5c
    dw music_header_5d
    dw music_header_5e
    dw music_header_5f
    dw music_header_60
    dw music_header_61
    dw music_header_62
    dw music_header_63
    dw music_header_64
    dw music_header_65
    dw music_header_66
    dw music_header_67

    dw music_header_68
    dw music_header_69
    dw music_header_6a
    dw music_header_6b
    dw music_header_6c
    dw music_header_6d
    dw $0000
    dw $0000
    dw $0000
    dw $0000

    dw music_header_72
    dw music_header_73
    dw music_header_74
    dw music_header_75
    dw music_header_76
    dw music_header_77
    dw music_header_78
    dw music_header_79
    dw music_header_7a
    dw music_header_7b
    dw music_header_7c
    dw music_header_7d
    dw music_header_7e
    dw music_header_7f
    dw music_header_80
    dw music_header_81
    dw music_header_82
    dw music_header_83
    dw music_header_84
    dw music_header_85
    dw music_header_86
    dw music_header_87
    dw music_header_88
    dw music_header_89
    dw music_header_8a
    dw music_header_8b
    dw music_header_8c
    dw $0000
    dw music_header_8e
    dw music_header_8f
    dw music_header_90
    dw music_header_91
    dw music_header_92
    dw music_header_93
    dw music_header_94
    dw music_header_95
    dw music_header_96
    dw music_header_97
    dw music_header_98
    dw music_header_99
    dw music_header_9a
    dw music_header_9b
    dw music_header_9c
    dw music_header_9d
    dw music_header_9e
    dw music_header_9f
    dw music_header_a0
    dw music_header_a1
    dw music_header_a2

    dw music_header_a3
    dw music_header_a4
    dw music_header_a5
    dw music_header_a6
    dw music_header_a7
    dw music_header_a8
    dw music_header_a9
    dw music_header_aa
    dw music_header_ab
    dw music_header_ac
    dw music_header_ad
    dw music_header_ae
    dw music_header_af
    dw music_header_b0
    dw music_header_b1
    dw music_header_b2
    dw music_header_b3
    dw music_header_b4
    dw music_header_b5
    dw music_header_b6
    dw music_header_b7
    dw music_header_b8
    dw music_header_b9
    dw $0000
    dw music_header_bb
    dw music_header_bc
    dw music_header_bd
    dw music_header_be
    dw music_header_bf
    dw music_header_c0
    dw music_header_c1
    dw music_header_c2
    dw music_header_c3
    dw music_header_c4
    dw music_header_c5
    dw music_header_c6
    dw music_header_c7
    dw music_header_c8
    dw $0000

    dw music_header_ca
    dw music_header_cb
    dw music_header_cc
    dw music_header_cd
    dw music_header_ce
    dw music_header_cf
    dw music_header_d0
    dw music_header_d1
    dw music_header_d2
    dw music_header_d3
    dw music_header_d4
    dw music_header_d5
    dw music_header_d6

music_header_begin:

music_header_00: dw $2c04, music_seq_and_brr_00, $4400, $00cb, $0000
music_header_01: dw $2c04, music_seq_and_brr_01, $4400, $00cb, $0000
music_header_02: dw $2c04, music_seq_and_brr_02, $4400, $00cb, $0000
music_header_03: dw $2c04, music_seq_and_brr_03, $4400, $00cb, $0000
music_header_04: dw $1404, $00e0, $2c04, music_seq_and_brr_04, $4400, $00cb, $0000
music_header_05: dw $1404, $00e0, $2c04, music_seq_and_brr_05, $4400, $00cb, $0000
music_header_06: dw $2c04, music_seq_and_brr_06, $4400, $00cb, $0000
music_header_07: dw $2c04, music_seq_and_brr_07, $4400, $00cb, $0000
music_header_08: dw $2c04, music_seq_and_brr_08, $4400, $00cb, $0000
music_header_09: dw $2c04, music_seq_and_brr_09, $4400, $00cb, $0000
music_header_0a: dw $2c04, music_seq_and_brr_0a, $4400, $00cb, $0000
music_header_0b: dw $2c04, music_seq_and_brr_0b, $4400, $00cb, $0000
music_header_0c: dw $2c04, music_seq_and_brr_0c, $4400, $00cb, $0000
music_header_0d: dw $2c04, music_seq_and_brr_0d, $4400, $00cb, $0000
music_header_10: dw $2c00, music_seq_and_brr_10, $4804, $0000, $4400, $00c8, $0000
music_header_11: dw $2c00, music_seq_and_brr_11, $4804, $0000, $4400, $00c8, $0000
music_header_12: dw $2c00, music_seq_and_brr_12, $4804, $0000, $4400, $00c8, $0000
music_header_13: dw $2c00, music_seq_and_brr_13, $4804, $0000, $4400, $00c8, $0000
music_header_14: dw $2c00, music_seq_and_brr_14, $4804, $0000, $4400, $00c8, $0000
music_header_15: dw $2c00, music_seq_and_brr_15, $4400, $00c8, $0000
music_header_16: dw $2c00, music_seq_and_brr_16, $4804, $0000, $4400, $00c8, $0000
music_header_17: dw $2c00, music_seq_and_brr_17, $4804, $0000, $4400, $00c8, $0000
music_header_18: dw $2c00, music_seq_and_brr_18, $4804, $0000, $4400, $00c8, $0000
music_header_19: dw $3400, music_seq_and_brr_19, $4804, $0000, $4400, $00c8, $0000
music_header_1a: dw $2c00, music_seq_and_brr_1a, $4400, $00c8, $0400, $0013, $0000
music_header_1b: dw $2c00, music_seq_and_brr_1b, $4400, $00c8, $0000
music_header_1c: dw $2c00, music_seq_and_brr_1c, $4400, $00c8, $0000
music_header_1d: dw $2c00, music_seq_and_brr_1d, $4400, $00c8, $0000
music_header_1e: dw $2c00, music_seq_and_brr_1e, $4400, $00c8, $0000
music_header_1f: dw $2c00, music_seq_and_brr_1f, $4400, $00c8, $0000
music_header_20: dw $2c00, music_seq_and_brr_20, $4400, $00c5, $0000
music_header_21: dw $2c00, music_seq_and_brr_21, $4000, $0000, $0000
music_header_22: dw $2c00, music_seq_and_brr_22, $4000, $0000, $0000
music_header_23: dw $2c00, music_seq_and_brr_23, $4400, $00c5, $0000
music_header_24: dw $2c00, music_seq_and_brr_24, $4000, $0000, $0000
music_header_25: dw $2c00, music_seq_and_brr_25, $4400, $00c5, $0000
music_header_26: dw $2c00, music_seq_and_brr_26, $4400, $00c5, $0000
music_header_27: dw $2c00, music_seq_and_brr_27, $4400, $00cb, $0000
music_header_28: dw $2c00, music_seq_and_brr_28, $4400, $00cb, $0000
music_header_29: dw $2c00, music_seq_and_brr_29, $4400, $00cb, $0000
music_header_2a: dw $2c00, music_seq_and_brr_2a, $4400, $00cb, $0000
music_header_2b: dw $2c00, music_seq_and_brr_2b, $4400, $00cb, $0000
music_header_2c: dw $2c00, music_seq_and_brr_2c, $4400, $00cb, $0000
music_header_30: dw $2c00, music_seq_and_brr_30, $4400, $00cb, $0000
music_header_31: dw $2c00, music_seq_and_brr_31, $4400, $00cb, $0000
music_header_32: dw $2c00, music_seq_and_brr_32, $4400, $00cb, $0000
music_header_38: dw $2c00, music_seq_and_brr_38, $4400, $00cb, $0000
music_header_39: dw $2c00, music_seq_and_brr_39, $4400, $00cb, $0000
music_header_3a: dw $2c00, music_seq_and_brr_3a, $4400, $00cb, $0000
music_header_3b: dw $2c00, music_seq_and_brr_3b, $4400, $00cb, $0000
music_header_3c: dw $2c00, music_seq_and_brr_3c, $4400, $00cb, $0000
music_header_3d: dw $2c00, music_seq_and_brr_3d, $4400, $00cb, $0000
music_header_3e: dw $2c00, music_seq_and_brr_3e, $4400, $00cb, $0000
music_header_40: dw $2c00, music_seq_and_brr_40, $4400, $00c8, $0000
music_header_41: dw $2c00, music_seq_and_brr_41, $4400, $00c8, $0000
music_header_42: dw $2c00, music_seq_and_brr_42, $4400, $00c8, $0000
music_header_43: dw $2c00, music_seq_and_brr_43, $4400, $00c8, $0000
music_header_44: dw $2c00, music_seq_and_brr_44, $4400, $00c8, $0000
music_header_45: dw $1400, $ffd4, $2c00, music_seq_and_brr_45, $4400, $00c5, $0000
music_header_48: dw $2c00, music_seq_and_brr_48, $4400, $00c8, $0000
music_header_49: dw $2c00, music_seq_and_brr_49, $4400, $00c8, $0000
music_header_4a: dw $2c00, music_seq_and_brr_4a, $4400, $00c8, $0000
music_header_4b: dw $2c00, music_seq_and_brr_4b, $4400, $00c8, $0000
music_header_4c: dw $2c00, music_seq_and_brr_4c, $4400, $00c8, $0000
music_header_4d: dw $2c00, music_seq_and_brr_4d, $4400, $00c8, $0000
music_header_4e: dw $2c00, music_seq_and_brr_4e, $4400, $00c8, $0000
music_header_4f: dw $2c00, music_seq_and_brr_4f, $4400, $00c8, $0000
music_header_56: dw $2c00, music_seq_and_brr_19, $4804, $0000, $4400, $00c8, $0000
music_header_57: dw $2c00, music_seq_and_brr_57, $0000

; disc 1
music_header_5b: dw $2c00, music_seq_and_brr_5b, $4400, $00c8, $0000
music_header_5c: dw $2c04, music_seq_and_brr_5c, $4400, $00cb, $0000
music_header_5d: dw $2c04, music_seq_and_brr_5d, $4400, $00cb, $0000
music_header_5e: dw $2c04, music_seq_and_brr_5e, $4400, $00cb, $0000
music_header_5f: dw $2c04, music_seq_and_brr_5f, $4400, $00cb, $0000
music_header_60: dw $2c04, music_seq_and_brr_60, $4400, $00cb, $0000
music_header_61: dw $2c00, music_seq_and_brr_61, $4400, $00c8, $0000
music_header_62: dw $2c04, music_seq_and_brr_62, $4400, $00cb, $0000
music_header_63: dw $2c00, music_seq_and_brr_63, $0000
music_header_64: dw $2c00, music_seq_and_brr_64, $0000
music_header_65: dw $2c00, music_seq_and_brr_65, $4400, $00c8, $0000
music_header_66: dw $2c00, music_seq_and_brr_66, $4400, $00c8, $0000
music_header_67: dw $2c04, music_seq_and_brr_67, $4400, $00cb, $0000
music_header_68: dw $2c04, music_seq_and_brr_68, $4400, $00cb, $0000
music_header_69: dw $2c04, music_seq_and_brr_69, $4400, $00cb, $0000
music_header_6a: dw $2c04, music_seq_and_brr_6a, $4400, $00cb, $0000
music_header_6b: dw $2c04, music_seq_and_brr_6b, $4400, $00cb, $0000
music_header_6c: dw $2c00, music_seq_and_brr_6c, $4400, $00c8, $0000
music_header_6d: dw $2c04, music_seq_and_brr_6d, $4400, $00cb, $0000
music_header_72: dw $2c04, music_seq_and_brr_72, $4400, $00cb, $0000
music_header_73: dw $2c04, music_seq_and_brr_73, $4400, $00cb, $0000
music_header_74: dw $2c04, music_seq_and_brr_74, $4400, $00cb, $0000
music_header_75: dw $2c04, music_seq_and_brr_75, $4400, $00cb, $0000
music_header_76: dw $2c04, music_seq_and_brr_76, $4400, $00cb, $0000
music_header_77: dw $2c04, music_seq_and_brr_77, $4400, $00cb, $0000
music_header_78: dw $2c04, music_seq_and_brr_78, $4400, $00cb, $0000
music_header_79: dw $2c04, music_seq_and_brr_79, $4400, $00cb, $0000
music_header_7a: dw $2c04, music_seq_and_brr_7a, $4400, $00cb, $0000
music_header_7b: dw $2c04, music_seq_and_brr_7b, $4400, $00cb, $0000
music_header_7c: dw $2c04, music_seq_and_brr_7c, $4400, $00cc, $0000
music_header_7d: dw $2c04, music_seq_and_brr_7c, $4400, $00cb, $0000
music_header_7e: dw $2c04, music_seq_and_brr_7e, $4400, $00cb, $0000
music_header_7f: dw $2c04, music_seq_and_brr_7f, $4400, $00cb, $0000
music_header_80: dw $2c00, music_seq_and_brr_80, $4804, $0000, $4400, $00c8, $0000
music_header_81: dw $2c00, music_seq_and_brr_81, $4804, $0000, $4400, $00c8, $0000
music_header_82: dw $2c00, music_seq_and_brr_82, $4804, $0000, $4400, $00c8, $0000
music_header_83: dw $2c00, music_seq_and_brr_83, $4804, $0000, $4400, $00c8, $0000
music_header_84: dw $2c00, music_seq_and_brr_84, $4804, $0000, $4400, $00c8, $0000
music_header_85: dw $2c00, music_seq_and_brr_85, $4804, $0000, $4400, $00c8, $0000
music_header_86: dw $2c00, music_seq_and_brr_86, $4804, $0000, $4400, $00c8, $0000
music_header_87: dw $2c00, music_seq_and_brr_87, $4804, $0000, $4400, $00c8, $0000
music_header_88: dw $2c00, music_seq_and_brr_88, $4804, $0001, $4400, $00c8, $0000
music_header_89: dw $2c00, music_seq_and_brr_89, $4804, $0000, $4400, $00c8, $0000
music_header_8a: dw $2c00, music_seq_and_brr_8a, $4400, $00c8, $0000
music_header_8b: dw $2c00, music_seq_and_brr_8b, $0000
music_header_8c: dw $2c00, music_seq_and_brr_8c, $4400, $00c8, $0000
music_header_8e: dw $3400, music_seq_and_brr_8e, $4804, $0000, $4400, $00c8, $0000
music_header_8f: dw $2c00, music_seq_and_brr_8f, $4400, $00cb, $0000
music_header_90: dw $2c00, music_seq_and_brr_90, $4400, $00cb, $0000
music_header_91: dw $2c00, music_seq_and_brr_91, $4400, $00cb, $0000
music_header_92: dw $2c00, music_seq_and_brr_92, $4400, $00cb, $0000
music_header_93: dw $2c00, music_seq_and_brr_93, $4400, $00cb, $0000
music_header_94: dw $2c00, music_seq_and_brr_94, $4400, $00cb, $0000
music_header_95: dw $2c00, music_seq_and_brr_95, $4400, $00cb, $0000
music_header_96: dw $2c00, music_seq_and_brr_96, $4400, $00cb, $0000
music_header_97: dw $2c00, music_seq_and_brr_97, $4400, $00cb, $0000
music_header_98: dw $2c00, music_seq_and_brr_98, $4400, $00c8, $0000
music_header_99: dw $2c00, music_seq_and_brr_99, $4400, $00c8, $0000
music_header_9a: dw $2c00, music_seq_and_brr_9a, $4400, $00c8, $0000
music_header_9b: dw $2c00, music_seq_and_brr_9b, $4400, $00c8, $0000
music_header_9c: dw $2c00, music_seq_and_brr_9c, $4400, $00c8, $0000
music_header_9d: dw $2c00, music_seq_and_brr_9d, $4400, $00c8, $0000
music_header_9e: dw $2c00, music_seq_and_brr_9e, $4400, $00c8, $0000
music_header_9f: dw $2c00, music_seq_and_brr_9f, $4400, $00c8, $0000
music_header_a0: dw $2c00, music_seq_and_brr_a0, $4400, $00c8, $0000
music_header_a1: dw $2c00, music_seq_and_brr_a1, $4400, $00c8, $0000
music_header_a2: dw $2c00, music_seq_and_brr_a2, $4400, $00c8, $0000
music_header_a3: dw $2c00, music_seq_and_brr_a3, $4400, $00c8, $0000
music_header_a4: dw $2c00, music_seq_and_brr_a4, $4400, $00c8, $0000
music_header_a5: dw $2c00, music_seq_and_brr_a5, $4400, $00c8, $0000
music_header_a6: dw $2c00, music_seq_and_brr_a6, $4400, $00c8, $0000
music_header_a7: dw $2c00, music_seq_and_brr_a7, $4400, $00c8, $0000
music_header_a8: dw $2c00, music_seq_and_brr_a8, $4400, $00c8, $0000
music_header_a9: dw $2c00, music_seq_and_brr_a9, $4400, $00c8, $0000
music_header_aa: dw $2c00, music_seq_and_brr_aa, $4400, $00c8, $0000
music_header_ab: dw $2c00, music_seq_and_brr_ab, $4400, $00c9, $0000
music_header_ac: dw $2c00, music_seq_and_brr_ac, $4400, $00c8, $0000
music_header_ad: dw $2c00, music_seq_and_brr_ad, $4400, $00c8, $0000
music_header_ae: dw $2c00, music_seq_and_brr_ae, $4400, $00c8, $0000
music_header_af: dw $2c00, music_seq_and_brr_af, $4400, $00c8, $0000
music_header_b0: dw $2c00, music_seq_and_brr_b0, $4400, $00c8, $0000
music_header_b1: dw $2c00, music_seq_and_brr_b1, $4400, $00c8, $0000
music_header_b2: dw $2c00, music_seq_and_brr_b2, $4400, $00c8, $0000
music_header_b3: dw $2c00, music_seq_and_brr_b3, $4400, $00c8, $0000
music_header_b4: dw $2c00, music_seq_and_brr_b4, $4400, $00c8, $0000
music_header_b5: dw $2c00, music_seq_and_brr_b5, $4400, $00c8, $0000
music_header_b6: dw $2c00, music_seq_and_brr_b6, $4400, $00c8, $0000
music_header_b7: dw $2c00, music_seq_and_brr_b7, $4400, $00c8, $0000
music_header_b8: dw $2c00, music_seq_and_brr_b8, $4400, $00c8, $0000
music_header_b9: dw $2c00, music_seq_and_brr_b9, $4400, $00c8, $0000
music_header_bb: dw $2c00, music_seq_and_brr_ab, $4400, $00c8, $0000
music_header_bc: dw $2c00, music_seq_and_brr_bc, $4400, $00c8, $0000
music_header_bd: dw $2c00, music_seq_and_brr_bd, $4400, $00c8, $0000
music_header_be: dw $2c00, music_seq_and_brr_be, $4400, $00c8, $0000
music_header_bf: dw $2c00, music_seq_and_brr_bf, $4400, $00c8, $0000
music_header_c0: dw $2c00, music_seq_and_brr_c0, $4400, $00c8, $0000
music_header_c1: dw $2c00, music_seq_and_brr_c1, $4400, $00c8, $0000
music_header_c2: dw $2c00, music_seq_and_brr_c2, $4400, $00c8, $0000
music_header_c3: dw $2c00, music_seq_and_brr_c3, $4400, $00c8, $0000
music_header_c4: dw $2c00, music_seq_and_brr_c4, $4400, $00c8, $0000
music_header_c5: dw $2c00, music_seq_and_brr_c5, $4400, $00c8, $0000
music_header_c6: dw $2c00, music_seq_and_brr_c6, $4400, $00c8, $0000
music_header_c7: dw $2c00, music_seq_and_brr_c7, $4400, $00c8, $0000
music_header_c8: dw $2c00, music_seq_and_brr_c8, $4400, $00c8, $0000
music_header_ca: dw $2c00, music_seq_and_brr_ca, $4400, $00c8, $0000
music_header_cb: dw $2c00, music_seq_and_brr_cb, $4400, $00c8, $0000
music_header_cc: dw $2c00, music_seq_and_brr_cc, $4400, $00c8, $0000
music_header_cd: dw $2c00, music_seq_and_brr_cd, $4400, $00c9, $0000
music_header_ce: dw $2c00, music_seq_and_brr_ce, $4400, $00c8, $0000
music_header_cf: dw $2c00, music_seq_and_brr_cf, $4400, $00c8, $0000
music_header_d0: dw $2c00, music_seq_and_brr_d0, $4400, $00c8, $0000
music_header_d1: dw $2c00, music_seq_and_brr_d1, $4400, $00c8, $0000
music_header_d2: dw $2c00, music_seq_and_brr_d2, $4400, $00c8, $0000
music_header_d3: dw $2c00, music_seq_and_brr_d3, $4400, $00c8, $0000
music_header_d4: dw $2c00, music_seq_and_brr_d4, $4400, $00c8, $0000
music_header_d5: dw $2c00, music_seq_and_brr_d5, $4400, $00c8, $0000
music_header_d6: dw $2c00, music_seq_and_brr_d6, $4400, $00c8, $0000

real_battle_item_wave_ptrs:
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw se_04
    dw se_04
    dw se_06
    dw se_07
    dw se_08
    dw se_09
    dw se_0a
    dw se_0b
    dw se_0c
    dw se_0d
    dw se_0e
    dw se_0f
    dw se_10
    dw se_11
    dw se_12
    dw se_13
    dw se_14
    dw se_15
    dw se_16
    dw se_17
    dw se_18
    dw se_19
    dw se_1a
    dw se_1b
    dw se_1c
    dw se_1d
    dw se_1e
    dw se_1f
    dw se_20
    dw se_21
    dw se_22
    dw se_23
    dw se_24
    dw se_25
    dw $0000
    dw $0000
    dw se_28
    dw se_29
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000
    dw $0000

    dw fe4_se_64_0
    dw fe4_se_64_1
    dw fe4_se_70_0
    dw fe4_se_70_1
    dw fe4_se_79_0
    dw fe4_se_79_1
    dw fe4_se_80_0
    dw fe4_se_80_1

real_battle_wave_ptrs:
    dw battle_se_00
    dw battle_se_01
    dw battle_se_02
    dw battle_se_03
    dw battle_se_04
    dw battle_se_05
    dw battle_se_06
    dw battle_se_07
    dw battle_se_08
    dw battle_se_09
    dw battle_se_0a
    dw battle_se_0b
    dw battle_se_0c
    dw battle_se_0d
    dw battle_se_0e
    dw battle_se_0f
    dw battle_se_10
    dw battle_se_11
    dw battle_se_12
    dw battle_se_13
    dw battle_se_0a
    dw battle_se_0b
    dw battle_se_0c
    dw battle_se_0d
    dw battle_se_0e
    dw battle_se_0f
    dw battle_se_10
    dw battle_se_11
    dw battle_se_12
    dw battle_se_13
    dw battle_se_1e
    dw battle_se_1f
    dw battle_se_20
    dw battle_se_21
    dw battle_se_22
    dw battle_se_23
    dw battle_se_24
    dw battle_se_25
    dw battle_se_26
    dw battle_se_27
    dw battle_se_28
    dw battle_se_29
    dw battle_se_2a
    dw battle_se_2b
    dw battle_se_2c
    dw battle_se_2d
    dw battle_se_2e
    dw battle_se_2f
    dw battle_se_30
    dw battle_se_31
    dw battle_se_32
    dw battle_se_33
    dw battle_se_32
    dw battle_se_33
    dw battle_se_32
    dw battle_se_33
    dw battle_se_32
    dw battle_se_33
    dw battle_se_32
    dw battle_se_33
    dw battle_se_3c
    dw battle_se_3d
    dw battle_se_3e
    dw battle_se_3f
    dw battle_se_40
    dw battle_se_41
    dw battle_se_42
    dw battle_se_43
    dw battle_se_44
    dw battle_se_45

music_seq_and_brr_begin:
music_seq_and_brr_00: dw $0064, $00a4, $0128, $0129, $c000, $7500, $00e6, $00e7, $00e8, $00e9, $00ea, $00eb, $00ec, $00ed, $0286, $0029, $0000
music_seq_and_brr_01: dw $0065, $00a5, $012a, $012b, $c000, $7500, $00ee, $00ef, $00e7, $00e8, $00f0, $00eb, $00f1, $0286, $0029, $0000
music_seq_and_brr_02: dw $0066, $00a6, $012c, $012d, $c000, $7500, $00e7, $00e8, $00f2, $00f3, $00f4, $00eb, $00f1, $0286, $0029, $0000
music_seq_and_brr_03: dw $0067, $00a7, $012e, $012f, $c000, $7500, $00f5, $00ef, $00f4, $00eb, $0288, $0029, $0000
music_seq_and_brr_04: dw $0068, $00a8, $0130, $0131, $c000, $7500, $00e8, $00ef, $00f4, $00eb, $00f1, $00f6, $0286, $0029, $0000
music_seq_and_brr_05: dw $0069, $00a9, $0132, $0133, $c000, $7500, $00ee, $00ea, $00e7, $00e8, $00eb, $00f1, $0286, $0029, $0000
music_seq_and_brr_06: dw $006a, $00aa, $0134, $0135, $c000, $7500, $00f7, $00e8, $00f8, $00ee, $00eb, $00f1, $0286, $0029, $0000
music_seq_and_brr_07: dw $006b, $00ab, $0136, $0137, $c000, $7500, $00f9, $00ef, $00f4, $00f1, $00eb, $0286, $0029, $0000
music_seq_and_brr_08: dw $006c, $00ac, $0138, $0139, $c000, $7500, $00ee, $00f0, $00f7, $00fa, $00f4, $00eb, $0286, $0029, $0000
music_seq_and_brr_09: dw $006d, $00ad, $013a, $013b, $c000, $7500, $00e8, $00e7, $00e9, $00ea, $00eb, $00ec, $0286, $0029, $0000
music_seq_and_brr_0a: dw $006e, $00ae, $013c, $013d, $c000, $7500, $00ea, $00ef, $00e8, $00f4, $00eb, $00ec, $00fb, $0286, $0029, $0000
music_seq_and_brr_0b: dw $006f, $00af, $013e, $013f, $c000, $7500, $00fc, $00f7, $00f5, $00f4, $00eb, $0286, $0029, $0000
music_seq_and_brr_0c: dw $0070, $00b0, $0140, $0141, $c000, $7500, $00fd, $00ef, $00f0, $00fe, $00f1, $00fb, $0286, $0029, $0000
music_seq_and_brr_0d: dw $0071, $00b1, $0142, $0143, $c000, $7500, $00ef, $00ff, $00e6, $00e7, $00e8, $00f4, $00eb, $00f1, $00fb, $0286, $0029, $0000
music_seq_and_brr_10: dw $0080, $00c0, $0144, $0145, $c000, $7500, $00f5, $00e8, $00eb, $00f1, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_11: dw $0081, $00c1, $0146, $0147, $c000, $7500, $00f5, $00e8, $00eb, $0100, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_12: dw $0082, $00c2, $0148, $0149, $c000, $7500, $00f5, $0101, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_13: dw $0083, $00c3, $014a, $014b, $c000, $7500, $00f5, $0101, $0100, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_14: dw $0084, $00c4, $014c, $014d, $c000, $7500, $0102, $00fc, $0103, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_15: dw $0085, $00c5, $014e, $014f, $c000, $7500, $0104, $00fd, $00ef, $0101, $002a, $0000
music_seq_and_brr_16: dw $0086, $00c6, $0150, $0151, $c000, $7500, $00f5, $00e8, $00eb, $00f8, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_17: dw $0087, $00c7, $0152, $0153, $c000, $7500, $00f5, $00e8, $00eb, $00f1, $00ef, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_18: dw $0088, $00c8, $0154, $0155, $c000, $7500, $00f5, $00ef, $00e7, $0100, $00eb, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_19: dw $0089, $00c9, $0156, $0157, $c000, $7500, $0105, $00ef, $00fa, $0100, $0106, $0107, $0108, $002a, $a000, $0003, $0004, $0001, $0002, $01ab, $01ac, $01ad, $0000
music_seq_and_brr_1a: dw $008a, $00ca, $0158, $0159, !sd_index_wav_331f, $c000, $7500, $00e8, $00f1, $002a, $0000
music_seq_and_brr_1b: dw $008b, $00cb, $015a, $015b, !sd_index_wav_331f, $c000, $7500, $0105, $00e8, $00f1, $01ab, $01ac, $01ad, $0000
music_seq_and_brr_1c: dw $0081, $00c1, $0146, $0147, $c000, $7500, $00f5, $00e8, $00eb, $0100, $0286, $0029, $0000
music_seq_and_brr_1d: dw $0086, $00c6, $0150, $0151, $c000, $7500, $00f5, $00e8, $00eb, $00f8, $0286, $0029, $0000
music_seq_and_brr_1e: dw $0087, $00c7, $0152, $0153, $c000, $7500, $00f5, $00e8, $00eb, $00f1, $00ef, $0286, $0029, $0000
music_seq_and_brr_1f: dw $0088, $00c8, $0154, $0155, $c000, $7500, $00f5, $00ef, $00e7, $0100, $00eb, $0286, $0029, $0000
music_seq_and_brr_20: dw $0072, $00b2, $015c, $015d, $c000, $7500, $00f9, $00ef, $00eb, $00ec, $0000
music_seq_and_brr_21: dw $b000, $0073, $00b3, $015e, $015f, $c000, $3600, $00f9, $00e8, $00fc, $00f5, $00f1, $00eb, $0109, $00ef, $010a, $0284, $0283, $b000, $0000
music_seq_and_brr_22: dw $b000, $0074, $00b4, $015e, $015f, $c000, $3600, $00f9, $00e8, $00fc, $00f5, $00f1, $00eb, $0109, $00ef, $010a, $0284, $0283, $b000, $0000
music_seq_and_brr_23: dw $b000, $0075, $00b5, $0160, $0161, $c000, $4280, $00e7, $00f2, $00ea, $010b, $010c, $010d, $00fe, $00eb, $0106, $00ef, $b000, $0000
music_seq_and_brr_24: dw $b000, $007e, $00be, $b000, $007f, $00bf, $0162, $0163, $c000, $4280, $00f5, $00ef, $0109, $00e8, $00e7, $00ec, $00eb, $010e, $0285, $0283, $b000, $0000
music_seq_and_brr_25: dw $b000, $0076, $00b6, $0164, $0165, $c000, $3600, $010f, $0110, $00f5, $00ef, $0111, $0112, $0113, $00fb, $010d, $0107, $0108, $0106, $0114, $0115, $b000, $0000
music_seq_and_brr_26: dw $b000, $0077, $00b7, $0166, $0167, $c000, $7500, $0116, $0029, $0000
music_seq_and_brr_27: dw $0078, $00b8, $0168, $0169, $c000, $7500, $00ff, $00ef, $00eb, $0029, $0000
music_seq_and_brr_28: dw $0079, $00b9, $016a, $016b, $c000, $7500, $00f9, $0117, $00f4, $00eb, $0029, $0000
music_seq_and_brr_29: dw $007a, $00ba, $016c, $016d, $c000, $7500, $00f9, $00ea, $00f4, $00eb, $0029, $0000
music_seq_and_brr_2a: dw $007b, $00bb, $016c, $016d, $c000, $7500, $00f9, $00ea, $00f4, $00eb, $0029, $0000
music_seq_and_brr_2b: dw $007c, $00bc, $016e, $016f, $c000, $7500, $00f5, $00ee, $0118, $00f4, $00eb, $0029, $0000
music_seq_and_brr_2c: dw $007d, $00bd, $0170, $0171, $c000, $7500, $00ef, $00e8, $00f9, $00f4, $00eb, $00f1, $0029, $0000
music_seq_and_brr_30: dw $008c, $00cc, $0172, $0173, $c000, $7500, $00e8, $00f5, $00f1, $00ea, $0029, $0000
music_seq_and_brr_31: dw $008d, $00cd, $0174, $0175, $c000, $7500, $00e7, $0119, $00f8, $00ef, $00eb, $00f1, $0029, $0000
music_seq_and_brr_32: dw $008e, $00ce, $0176, $0177, $c000, $7500, $00fc, $00f5, $00f1, $00eb, $00ef, $0029, $0000
music_seq_and_brr_38: dw $008f, $00cf, $0178, $0179, $c000, $7500, $00e8, $00ef, $00ea, $00eb, $00f8, $00f1, $0029, $0000
music_seq_and_brr_39: dw $0090, $00d0, $017a, $017b, $c000, $7500, $00e8, $011a, $00e7, $00f0, $011b, $00f1, $011c, $00f8, $0029, $0000
music_seq_and_brr_3a: dw $0091, $00d1, $017c, $017d, $c000, $7500, $00f4, $00e8, $00f5, $00ef, $00eb, $0029, $0000
music_seq_and_brr_3b: dw $0092, $00d2, $017e, $017f, $c000, $7500, $00f5, $00ef, $011d, $0029, $0000
music_seq_and_brr_3c: dw $0093, $00d3, $0180, $0181, $c000, $7500, $00e8, $00ef, $00ea, $00eb, $011d, $00f8, $0029, $0000
music_seq_and_brr_3d: dw $0094, $00d4, $0182, $0183, $c000, $7500, $00ef, $00f5, $00ff, $0029, $0000
music_seq_and_brr_3e: dw $0095, $00d5, $0184, $0185, $c000, $7500, $011e, $00e8, $00fa, $011f, $00eb, $0107, $0108, $00f8, $0029, $0000
music_seq_and_brr_40: dw $b000, $0096, $00d6, $0186, $0187, $c000, $4280, $0120, $00e8, $00ef, $00f5, $00eb, $00f1, $00ed, $0121, $b000, $0000
music_seq_and_brr_41: dw $0097, $00d7, $0188, $0189, $c000, $7500, $00fa, $00e8, $00f5, $00eb, $00ef, $00f1, $0029, $0000
music_seq_and_brr_42: dw $0098, $00d8, $018a, $018b, $c000, $7500, $00e6, $00f5, $00ef, $0029, $0000
music_seq_and_brr_43: dw $0099, $00d9, $018c, $018d, $c000, $7500, $00f9, $00e8, $00f5, $00f1, $00eb, $0029, $0000
music_seq_and_brr_44: dw $009a, $00da, $018e, $018f, $c000, $7500, $00e8, $00e7, $00f5, $00f1, $00f6, $0029, $0000
music_seq_and_brr_45: dw $b000, $009b, $00db, $0190, $0191, $c000, $6c00, $0122, $011f, $0109, $00f9, $00f5, $00ec, $b000, $0000
music_seq_and_brr_48: dw $b000, $009c, $00dc, $0192, $0193, $c000, $4280, $0105, $0123, $0124, $00e6, $0109, $00fa, $01ab, $01ac, $01ad, $b000, $0000
music_seq_and_brr_49: dw $009d, $00dd, $0194, $0195, $c000, $7500, $00e7, $00f5, $00ef, $00f4, $011b, $00eb, $0029, $0000
music_seq_and_brr_4a: dw $009e, $00de, $0196, $0197, $c000, $7500, $00e7, $00e8, $00f5, $00ef, $00f1, $00eb, $0286, $0029, $0000
music_seq_and_brr_4b: dw $009f, $00df, $0198, $0199, $c000, $7500, $00f7, $0125, $00f0, $00e7, $0029, $0000
music_seq_and_brr_4c: dw $00a0, $00e0, $019a, $019b, $c000, $7500, $011f, $00f5, $00ef, $0029, $0000
music_seq_and_brr_4d: dw $00a1, $00e1, $019c, $019d, $c000, $7500, $00ef, $00f5, $0126, $0127, $0029, $0000
music_seq_and_brr_4e: dw $00a2, $00e2, $019e, $019f, $c000, $7500, $0118, $00fc, $0029, $0000
music_seq_and_brr_4f: dw $00a3, $00e3, $01a0, $01a1, $c000, $7500, $00ea, $00e6, $00f5, $00f4, $0029, $0000
music_seq_and_brr_57: dw $b000, $0029, $0000

music_seq_and_brr_5b: dw $0299, $0298, $029a, $029b, $c000, $7400, $029c, $00e8, $011e, $029d, $029e, $0029, $0000
music_seq_and_brr_5c: dw $02a0, $029f, $02a1, $02a2, $c000, $7400, $00fd, $02a3, $00e7, $02a4, $00f6, $0029, $0000
music_seq_and_brr_5d: dw $02a6, $02a5, $02a7, $02a8, $c000, $7400, $029c, $00fc, $02a3, $0118, $00fb, $02a9, $02aa, $02ab, $02ac, $02ad, $0029, $0000
music_seq_and_brr_5e: dw $02af, $02ae, $02b0, $02b1, $c000, $7400, $02b2, $02b3, $00e6, $00fc, $02b4, $02b5, $02b6, $02b7, $02ab, $0108, $0029, $0000
music_seq_and_brr_5f: dw $02b9, $02b8, $02ba, $02bb, $c000, $7400, $02b2, $02b3, $00e6, $02bc, $00fb, $02a9, $02ac, $02bd, $0029, $0000
music_seq_and_brr_60: dw $02bf, $02be, $02c0, $02c1, $c000, $7400, $029c, $02c2, $02a3, $02c3, $02c4, $02c5, $0029, $0000
music_seq_and_brr_61: dw $02c7, $02c6, $02c8, $02c9, $c000, $7400, $029c, $02b2, $00ea, $0029, $0000
music_seq_and_brr_62: dw $02cb, $02ca, $02cc, $02cd, $c000, $7400, $00fd, $00f4, $02c2, $0126, $02c3, $02ce, $0029, $0000
music_seq_and_brr_63: dw $02d0, $02cf, $02d1, $02d2, $c000, $7400, $029c, $02b2, $0118, $02a4, $00e7, $0029, $0000
music_seq_and_brr_64: dw $02d4, $02d3, $02d5, $02d6, $c000, $7400, $02b5, $0103, $0029, $0000
music_seq_and_brr_65: dw $02d8, $02d7, $02d9, $02da, $c000, $7400, $029c, $00ea, $00e8, $02db, $02ac, $0029, $0000
music_seq_and_brr_66: dw $02dd, $02dc, $02de, $02df, $c000, $7400, $029c, $00ea, $02a9, $02db, $0029, $0000
music_seq_and_brr_67: dw $02e1, $02e0, $02e2, $02e3, $c000, $7400, $029c, $00fa, $02a3, $011e, $02e4, $00fc, $02b6, $02a9, $02aa, $02ac, $02ad, $0029, $0000
music_seq_and_brr_68: dw $02e6, $02e5, $02e7, $02e8, $c000, $7400, $02e9, $02ea, $00fc, $02eb, $02ec, $0029, $0000
music_seq_and_brr_69: dw $02ee, $02ed, $02ef, $02f0, $c000, $7400, $029c, $0109, $011e, $02f1, $02c3, $02a4, $02f2, $0029, $0000
music_seq_and_brr_6a: dw $02f4, $02f3, $02f5, $02f6, $c000, $7400, $00fd, $02c3, $02ac, $00e6, $00fc, $0118, $02eb, $0029, $0000
music_seq_and_brr_6b: dw $02f8, $02f7, $02f9, $02fa, $c000, $7400, $029c, $02fb, $02a3, $02c3, $02fc, $02fd, $02ab, $02ac, $0029, $0000
music_seq_and_brr_6c: dw $02ff, $02fe, $0300, $0301, $c000, $7400, $029c, $00ea, $02ea, $0118, $00e8, $011e, $02aa, $0029, $0000
music_seq_and_brr_6d: dw $0303, $0302, $0304, $0305, $c000, $7400, $0306, $00e7, $02ea, $02e4, $0122, $02b5, $02b6, $02b7, $02ac, $0108, $0029, $0000
music_seq_and_brr_72: dw $0308, $0307, $0309, $030a, $c000, $7400, $02b2, $02fb, $02db, $02a4, $00fb, $02a9, $02ac, $0029, $0000
music_seq_and_brr_73: dw $030c, $030b, $030d, $030e, $c000, $7400, $029c, $02fb, $02a3, $030f, $0310, $0029, $0000
music_seq_and_brr_74: dw $0312, $0311, $0313, $0314, $c000, $7400, $029c, $02fb, $02a3, $00fb, $02ce, $0315, $0316, $0029, $0000
music_seq_and_brr_75: dw $0318, $0317, $0319, $031a, $c000, $7400, $029c, $0109, $02a3, $02ec, $02ac, $00f4, $0029, $0000
music_seq_and_brr_76: dw $031c, $031b, $031d, $031e, $c000, $7400, $00fd, $02fb, $00e6, $0118, $0109, $0029, $0000
music_seq_and_brr_77: dw $0320, $031f, $0321, $0322, $c000, $7400, $029c, $02a3, $0323, $030f, $0324, $0325, $0029, $0000
music_seq_and_brr_78: dw $0327, $0326, $0328, $0329, $c000, $7400, $029c, $0109, $010c, $02f2, $0316, $032a, $0029, $0000
music_seq_and_brr_79: dw $032c, $032b, $032d, $032e, $c000, $7400, $029c, $02c2, $02a3, $02c3, $02a9, $0029, $0000
music_seq_and_brr_7a: dw $0330, $032f, $0331, $0332, $c000, $7400, $029c, $02fb, $0333, $011d, $02f2, $010c, $00f4, $0109, $0029, $0000
music_seq_and_brr_7b: dw $0335, $0334, $0336, $0337, $c000, $7400, $029c, $02c2, $02fb, $00fb, $02a9, $0029, $0000
music_seq_and_brr_7c: dw $0339, $0338, $033a, $033b, $c000, $7400, $033c, $00f4, $0109, $02fb, $02ce, $033d, $0029, $0000
music_seq_and_brr_7e: dw $033f, $033e, $0340, $0341, $c000, $7400, $029c, $033c, $02c2, $02c3, $02ce, $0029, $0000
music_seq_and_brr_7f: dw $0343, $0342, $0344, $0345, $c000, $7400, $033c, $02fb, $02c3, $00fb, $02a9, $02ac, $0029, $0000
music_seq_and_brr_80: dw $0347, $0346, $0348, $0349, $c000, $7500, $029c, $034a, $02fb, $02b6, $02a9, $034b, $02ac, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_81: dw $034d, $034c, $034e, $034f, $c000, $7500, $029c, $02a3, $02fb, $0315, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_82: dw $0351, $0350, $0352, $0353, $c000, $7500, $029c, $02b2, $00e8, $011e, $02a4, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_83: dw $0355, $0354, $0356, $0357, $c000, $7500, $029c, $0358, $0359, $035a, $02fd, $034b, $02ac, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_84: dw $035c, $035b, $035d, $035e, $c000, $7500, $0359, $034a, $02fb, $02b6, $02a9, $02ab, $02ac, $00f6, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_85: dw $0360, $035f, $0361, $0362, $c000, $7500, $029c, $0359, $00e7, $02eb, $030f, $02b7, $02ab, $0108, $c000, $d278, $02a3, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_86: dw $0364, $0363, $0365, $0366, $c000, $7500, $00ea, $0358, $0359, $0367, $035a, $02a9, $02ab, $02ac, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_87: dw $0369, $0368, $036a, $036b, $c000, $7500, $011d, $02bc, $036c, $036d, $036e, $036f, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_88: dw $0371, $0370, $0372, $0373, $c000, $7500, $011d, $0102, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_89: dw $0375, $0374, $0376, $0377, $c000, $7500, $0111, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_8a: dw $0379, $0378, $037a, $037b, $c000, $7500, $02e4, $0111, $02b5, $0102, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_8b: dw $037d, $037c, $037e, $037f, $c000, $7400, $00ea, $00fa, $02db, $0000
music_seq_and_brr_8c: dw $0381, $0380, $0382, $0383, $0384, $0385, $0386, $c000, $7500, $02b2, $00fa, $002a, $0000
music_seq_and_brr_8e: dw $0388, $0387, $0389, $038a, $c000, $7500, $0358, $02db, $0367, $002a, $a000, $0003, $0004, $0001, $0002, $0000
music_seq_and_brr_8f: dw $038c, $038b, $038d, $038e, $c000, $7400, $038f, $034a, $02fb, $02ec, $02b6, $0029, $0000
music_seq_and_brr_90: dw $0391, $0390, $0392, $0393, $c000, $7400, $038f, $0109, $0394, $0029, $0000
music_seq_and_brr_91: dw $0396, $0395, $0397, $0398, $c000, $7400, $038f, $00fc, $0399, $02bc, $02ac, $02bd, $0029, $0000
music_seq_and_brr_92: dw $039b, $039a, $039c, $039d, $c000, $7400, $038f, $00fc, $02c3, $02c5, $0399, $0029, $0000
music_seq_and_brr_93: dw $039f, $039e, $03a0, $03a1, $c000, $7400, $038f, $011d, $0316, $0325, $02f2, $0029, $0000
music_seq_and_brr_94: dw $03a3, $03a2, $03a4, $03a5, $c000, $7400, $038f, $03a6, $0315, $0316, $0029, $0000
music_seq_and_brr_95: dw $03a8, $03a7, $03a9, $03aa, $c000, $7400, $038f, $00fa, $0394, $036d, $02a9, $0029, $0000
music_seq_and_brr_96: dw $03ac, $03ab, $03ad, $03ae, $c000, $7400, $038f, $03af, $0029, $0000
music_seq_and_brr_97: dw $03b1, $03b0, $03b2, $03b3, $c000, $7400, $038f, $02bc, $0399, $00fc, $0029, $0000
music_seq_and_brr_98: dw $03b5, $03b4, $03b6, $03b7, $c000, $7400, $02b2, $029c, $00e8, $02db, $00fb, $02b7, $0029, $0000
music_seq_and_brr_99: dw $03b9, $03b8, $03ba, $03bb, $c000, $7400, $0121, $029c, $02b2, $00e8, $02ab, $0029, $0000
music_seq_and_brr_9a: dw $03bd, $03bc, $03be, $03bf, $c000, $7400, $02b2, $00fa, $02db, $02a4, $03c0, $0029, $0000
music_seq_and_brr_9b: dw $03c2, $03c1, $03c3, $03c4, $c000, $7400, $0306, $00e8, $00fc, $02a3, $02a4, $00f6, $00e7, $0029, $0000
music_seq_and_brr_9c: dw $03c6, $03c5, $03c7, $03c8, $c000, $7400, $02b2, $029c, $00e8, $00fc, $011e, $02c3, $02aa, $0029, $0000
music_seq_and_brr_9d: dw $03ca, $03c9, $03cb, $03cc, $c000, $7400, $02b2, $029c, $00ea, $02db, $0029, $0000
music_seq_and_brr_9e: dw $03ce, $03cd, $03cf, $03d0, $c000, $7400, $029c, $00fa, $02a3, $02a4, $02ac, $02ad, $0029, $0000
music_seq_and_brr_9f: dw $03d2, $03d1, $03d3, $03d4, $c000, $7400, $00e8, $029d, $02a4, $02a9, $00f6, $0029, $0000
music_seq_and_brr_a0: dw $03d6, $03d5, $03d7, $03d8, $c000, $7400, $029c, $00ea, $0333, $02a4, $0029, $0000
music_seq_and_brr_a1: dw $03da, $03d9, $03db, $03dc, $c000, $7400, $02b5, $00ea, $029c, $02a4, $0029, $0000
music_seq_and_brr_a2: dw $03de, $03dd, $03df, $03e0, $c000, $7400, $029c, $00ea, $00e8, $0029, $0000
music_seq_and_brr_a3: dw $03e2, $03e1, $03e3, $03e4, $c000, $7400, $02b2, $0109, $02db, $03e5, $030f, $02b7, $02ac, $0029, $0000
music_seq_and_brr_a4: dw $03e7, $03e6, $03e8, $03e9, $c000, $7400, $00fd, $00ea, $03ea, $029c, $0029, $0000
music_seq_and_brr_a5: dw $03ec, $03eb, $03ed, $03ee, $c000, $7400, $03ef, $00e8, $03f0, $029c, $0029, $0000
music_seq_and_brr_a6: dw $03f2, $03f1, $03f3, $03f4, $c000, $7400, $0103, $03ea, $0121, $00f4, $011d, $0029, $0000
music_seq_and_brr_a7: dw $03f6, $03f5, $03f7, $03f8, $c000, $7400, $0119, $00fc, $03f0, $03f9, $0029, $0000
music_seq_and_brr_a8: dw $03fb, $03fa, $03fc, $03fd, $c000, $7400, $0121, $011e, $02ea, $03c0, $0029, $0000
music_seq_and_brr_a9: dw $03ff, $03fe, $0400, $0401, $c000, $7400, $03ea, $02c3, $0402, $0029, $0000
music_seq_and_brr_aa: dw $0404, $0403, $0405, $0406, $c000, $7400, $0306, $02b5, $00e7, $0121, $02ac, $02ad, $0118, $0029, $0000
music_seq_and_brr_ab: dw $0408, $0407, $0409, $040a, $c000, $7400, $011e, $00e7, $040b, $0029, $0000
music_seq_and_brr_ac: dw $040d, $040c, $040e, $040f, $c000, $7400, $029c, $02b2, $00ea, $0029, $0000
music_seq_and_brr_ad: dw $0411, $0410, $0412, $0413, $c000, $7400, $0103, $0119, $00e7, $03c0, $02aa, $0029, $0000
music_seq_and_brr_ae: dw $0415, $0414, $0416, $0417, $c000, $7400, $02bc, $0121, $03ea, $011d, $0029, $0000
music_seq_and_brr_af: dw $0419, $0418, $041a, $041b, $c000, $7400, $029c, $02b2, $03c0, $0029, $0000
music_seq_and_brr_b0: dw $041d, $041c, $041e, $041f, $c000, $7400, $02b2, $00fd, $00ea, $0121, $02e4, $0029, $0000
music_seq_and_brr_b1: dw $0421, $0420, $0422, $0423, $c000, $7400, $029c, $02a4, $00f6, $02db, $0029, $0000
music_seq_and_brr_b2: dw $0425, $0424, $0426, $0427, $c000, $7400, $029c, $02b2, $0029, $0000
music_seq_and_brr_b3: dw $0429, $0428, $042a, $042b, $c000, $7400, $02b4, $0111, $0402, $0029, $0000
music_seq_and_brr_b4: dw $042d, $042c, $042e, $042f, $c000, $7400, $02b5, $0306, $0029, $0000
music_seq_and_brr_b5: dw $0431, $0430, $0432, $0433, $c000, $7400, $029c, $0121, $0118, $02b5, $011e, $0029, $0000
music_seq_and_brr_b6: dw $0435, $0434, $0436, $0437, $c000, $7400, $02f1, $0310, $0126, $02e4, $0029, $0000
music_seq_and_brr_b7: dw $0439, $0438, $043a, $043b, $c000, $7400, $00ea, $03f0, $00e7, $02a3, $030f, $02ab, $0111, $029e, $02a4, $0029, $0000
music_seq_and_brr_b8: dw $043d, $043c, $043e, $043f, $c000, $7400, $0112, $02b5, $0029, $0000
music_seq_and_brr_b9: dw $0441, $0440, $0442, $0443, $c000, $7400, $0306, $02b2, $0126, $0029, $0000
music_seq_and_brr_bc: dw $0445, $0444, $0446, $0447, $c000, $7400, $029c, $00fc, $00e8, $03f0, $02aa, $00f6, $0029, $0000
music_seq_and_brr_bd: dw $0449, $0448, $044a, $044b, $c000, $7400, $00fc, $0119, $02c3, $0118, $0306, $0029, $0000
music_seq_and_brr_be: dw $044d, $044c, $044e, $044f, $c000, $7400, $0121, $02b2, $029c, $02c3, $02aa, $0029, $0000
music_seq_and_brr_bf: dw $0451, $0450, $0452, $0453, $c000, $7400, $029c, $0109, $00e8, $010c, $02f2, $032a, $0029, $0000
music_seq_and_brr_c0: dw $0455, $0454, $0456, $0457, $c000, $7400, $0121, $029c, $0333, $02a3, $02c3, $0029, $0000
music_seq_and_brr_c1: dw $0459, $0458, $045a, $045b, $c000, $7400, $0121, $0119, $0118, $029c, $0029, $0000
music_seq_and_brr_c2: dw $045d, $045c, $045e, $045f, $c000, $7400, $02b2, $029c, $00fc, $00e8, $0029, $0000
music_seq_and_brr_c3: dw $0461, $0460, $0462, $0463, $c000, $7400, $0119, $029c, $00e8, $02a4, $0029, $0000
music_seq_and_brr_c4: dw $0465, $0464, $0466, $0467, $c000, $7400, $0121, $00e8, $00e7, $0306, $0118, $0029, $0000
music_seq_and_brr_c5: dw $0469, $0468, $046a, $046b, $c000, $7400, $0118, $00fc, $0306, $0029, $0000
music_seq_and_brr_c6: dw $046d, $046c, $046e, $046f, $c000, $7400, $00e8, $02b5, $00ea, $029c, $02ac, $0029, $0000
music_seq_and_brr_c7: dw $0471, $0470, $0472, $0473, $c000, $7400, $0306, $02b2, $00e7, $0112, $02aa, $0029, $0000
music_seq_and_brr_c8: dw $0475, $0474, $0476, $0477, $c000, $7400, $0118, $0478, $02b5, $0126, $0029, $0000

music_seq_and_brr_ca: dw $0347, $0346, $0348, $0349, $c000, $7500, $029c, $034a, $02fb, $02b6, $02a9, $034b, $02ac, $0029, $0000
music_seq_and_brr_cb: dw $034d, $034c, $034e, $034f, $c000, $7500, $029c, $02a3, $02fb, $0315, $0029, $0000
music_seq_and_brr_cc: dw $0351, $0350, $0352, $0353, $c000, $7500, $029c, $02b2, $00e8, $011e, $02a4, $0029, $0000
music_seq_and_brr_cd: dw $0355, $0354, $0356, $0357, $c000, $7500, $029c, $0358, $0359, $035a, $02fd, $034b, $02ac, $0029, $0000
music_seq_and_brr_ce: dw $035c, $035b, $035d, $035e, $c000, $7500, $0359, $034a, $02fb, $02b6, $02a9, $02ab, $02ac, $00f6, $0029, $0000
music_seq_and_brr_cf: dw $0360, $035f, $0361, $0362, $c000, $7500, $029c, $0359, $00e7, $02eb, $030f, $02b7, $02ab, $0108, $c000, $d278, $02a3, $0029, $0000
music_seq_and_brr_d0: dw $0364, $0363, $0365, $0366, $c000, $7500, $00ea, $0358, $0359, $0367, $035a, $02a9, $02ab, $02ac, $0029, $0000
music_seq_and_brr_d1: dw $0369, $0368, $036a, $036b, $c000, $7500, $011d, $02bc, $036c, $036d, $036e, $036f, $0029, $0000
music_seq_and_brr_d2: dw $0371, $0370, $0372, $0373, $c000, $7500, $011d, $0102, $0029, $0000
music_seq_and_brr_d3: dw $0375, $0374, $0376, $0377, $c000, $7500, $0111, $0029, $0000
music_seq_and_brr_d4: dw $0379, $0378, $037a, $037b, $c000, $7500, $02e4, $0111, $02b5, $0102, $0029, $0000
music_seq_and_brr_d5: dw $037d, $037c, $037e, $037f, $c000, $7400, $00ea, $00fa, $02db, $0029, $0000
music_seq_and_brr_d6: dw $0381, $0380, $0385, $0386, $c000, $7500, $02b2, $00fa, $0029, $0000

sound_data_on_boot:
    dw $0289, $01a2, $01a3, $01a4, !sd_index_wav_331f, $0029, $0000

se_28:
    dw !sd_index_wav_331f, $00e4, $01a5, $01a6, $01a7, !sd_index_fe4_map_se_seq, $0000

se_29:
    dw !sd_index_fe4_se_seq, $00e5, $01a8, $01a9, $01aa, $0000

se_04: dw $0000
se_06: dw $01ae, $01af, $01b0, $0000
se_07: dw $01de, $01df, $01e0, $0000
se_08: dw $01b1, $01b2, $01b3, $0000
se_09: dw $01e1, $01e2, $01e3, $0000
se_0a: dw $01b4, $01b5, $01b6, $0000
se_0b: dw $01e4, $01e5, $01e6, $0000
se_0c: dw $01b7, $01b8, $01b9, $0000
se_0d: dw $01e7, $01e8, $01e9, $0000
se_0e: dw $01ba, $01bb, $01bc, $0000
se_0f: dw $01ea, $01eb, $01ec, $0000
se_10: dw $01bd, $01be, $01bf, $0000
se_11: dw $01ed, $01ee, $01ef, $0000
se_12: dw $01c0, $01c1, $01c2, $0000
se_13: dw $01f0, $01f1, $01f2, $0000
se_14: dw $01c3, $01c4, $01c5, $0000
se_15: dw $01f3, $01f4, $01f5, $0000
se_16: dw $01c6, $01c7, $01c8, $0000
se_17: dw $01f6, $01f7, $01f8, $0000
se_18: dw $01c9, $01ca, $01cb, $0000
se_19: dw $01f9, $01fa, $01fb, $0000
se_1a: dw $01cc, $01cd, $01ce, $0000
se_1b: dw $01fc, $01fd, $01fe, $0000
se_1c: dw $01cf, $01d0, $01d1, $0000
se_1d: dw $01ff, $0200, $0201, $0000
se_1e: dw $01d2, $01d3, $01d4, $0000
se_1f: dw $0202, $0203, $0204, $0000
se_20: dw $01d5, $01d6, $01d7, $0000
se_21: dw $0205, $0206, $0207, $0000
se_22: dw $01d8, $01d9, $01da, $0000
se_23: dw $0208, $0209, $020a, $0000
se_24: dw $01db, $01dc, $01dd, $0000
se_25: dw $020b, $020c, $020d, $0000

fe4_se_64_0: dw !sd_index_fe4_se+0, !sd_index_fe4_se+1, !sd_index_fe4_se+2, $0000
fe4_se_64_1: dw !sd_index_fe4_se+3, !sd_index_fe4_se+4, !sd_index_fe4_se+5, $0000
fe4_se_70_0: dw !sd_index_fe4_se+6, !sd_index_fe4_se+7, !sd_index_fe4_se+8, $0000
fe4_se_70_1: dw !sd_index_fe4_se+9, !sd_index_fe4_se+10, !sd_index_fe4_se+11, $0000
fe4_se_79_0: dw !sd_index_fe4_se+12, !sd_index_fe4_se+13, !sd_index_fe4_se+14, $0000
fe4_se_79_1: dw !sd_index_fe4_se+15, !sd_index_fe4_se+16, !sd_index_fe4_se+17, $0000
fe4_se_80_0: dw !sd_index_fe4_se+18, !sd_index_fe4_se+19, !sd_index_fe4_se+20, $0000
fe4_se_80_1: dw !sd_index_fe4_se+21, !sd_index_fe4_se+22, !sd_index_fe4_se+23, $0000
fe4_se_84_0: dw !sd_index_fe4_se+24, !sd_index_fe4_se+25, !sd_index_fe4_se+26, $0000
fe4_se_84_1: dw !sd_index_fe4_se+27, !sd_index_fe4_se+28, !sd_index_fe4_se+29, $0000

battle_se_00: dw $020e, $020f, $0210, $0000
battle_se_01: dw $0247, $0248, $0249, $0000
battle_se_02: dw $0211, $0212, $0213, $0000
battle_se_03: dw $024a, $024b, $024c, $0000
battle_se_04: dw $0214, $0215, $0216, $0000
battle_se_05: dw $024d, $024e, $024f, $0000
battle_se_06: dw $0217, $0218, $0219, $0000
battle_se_07: dw $0250, $0251, $0252, $0000
battle_se_0a: dw $021a, $021b, $021c, $0000
battle_se_0b: dw $0253, $0254, $0255, $0000
battle_se_0c: dw $021d, $021e, $021f, $0000
battle_se_0d: dw $0256, $0257, $0258, $0000
battle_se_0e: dw $0220, $0221, $0222, $0000
battle_se_0f: dw $0259, $025a, $025b, $0000
battle_se_10: dw $0223, $0224, $0225, $0000
battle_se_11: dw $025c, $025d, $025e, $0000
battle_se_1e: dw $0226, $0227, $0228, $0000
battle_se_1f: dw $025f, $0260, $0261, $0000
battle_se_20: dw $0229, $022a, $022b, $0000
battle_se_21: dw $0262, $0263, $0264, $0000
battle_se_22: dw $022c, $022d, $022e, $0000
battle_se_23: dw $0265, $0266, $0267, $0000
battle_se_24: dw $022f, $0230, $0231, $0000
battle_se_25: dw $0268, $0269, $026a, $0000
battle_se_28: dw $028a, $0227, $0228, $0000
battle_se_29: dw $028b, $0260, $0261, $0000
battle_se_2a: dw $028c, $022a, $022b, $0000
battle_se_2b: dw $028d, $0263, $0264, $0000
battle_se_2c: dw $028e, $022d, $022e, $0000
battle_se_2d: dw $028f, $0266, $0267, $0000
battle_se_2e: dw $0290, $0230, $0231, $0000
battle_se_2f: dw $0291, $0269, $026a, $0000
battle_se_32: dw $0232, $0233, $0234, $0000
battle_se_33: dw $026b, $026c, $026d, $0000
battle_se_3c: dw $0292, $0212, $0213, $0000
battle_se_3d: dw $0293, $024b, $024c, $0000
battle_se_3e: dw $0294, $0212, $0213, $0000
battle_se_3f: dw $0295, $024b, $024c, $0000
battle_se_40: dw $0235, $0236, $0237, $0000
battle_se_41: dw $026e, $026f, $0270, $0000
battle_se_42: dw $0238, $0239, $023a, $0000
battle_se_43: dw $0271, $0272, $0273, $0000
battle_se_08: dw $023b, $023c, $023d, $0000
battle_se_09: dw $0274, $0275, $0276, $0000
battle_se_44: dw $023e, $023f, $0240, $0000
battle_se_45: dw $0277, $0278, $0279, $0000
battle_se_12: dw $0241, $0242, $0243, $0000
battle_se_13: dw $027a, $027b, $027c, $0000
battle_se_26: dw $0244, $0245, $0246, $0000
battle_se_27: dw $027d, $027e, $027f, $0000
battle_se_30: dw $0296, $0245, $0246, $0000
battle_se_31: dw $0297, $027e, $027f, $0000

sound_driver_version:
    db $46, $45, $35, $20, $53, $4e, $44, $31, $39, $39, $30, $37, $30, $37, $34, $01

real_battle_item_and_class_wave_table:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1d, $00, $19, $00
    db $00, $1b, $11, $09, $0d, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $09, $09
    db $00, $00, $0d, $0d, $0f, $00, $11, $11, $13, $15, $19, $1b, $00, $1d, $1f, $21
    db $00, $0b, $0d, $17, $1f, $1f, $15, $05, $05, $05, $05, $05, $05, $00, $00, $23
    db $25, $05, $05, $00, $05, $05, $05, $05, $05, $05, $00, $05, $05, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1e, $00, $1a, $00
    db $00, $1c, $12, $0a, $0e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $0a, $0a
    db $00, $00, $0e, $0e, $10, $00, $12, $12, $14, $16, $1a, $1c, $00, $1e, $20, $22
    db $00, $0c, $0e, $18, $00, $00, $16, $06, $06, $06, $06, $06, $06, $00, $00, $24
    db $26, $06, $06, $00, $06, $06, $06, $06, $06, $06, $00, $06, $06, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $3d, $3d, $3d, $3d, $3d, $3d, $3d, $51, $51, $51, $51, $51, $51, $51, $51, $51
    db $65, $65, $65, $65, $65, $01, $01, $01, $01, $01, $29, $29, $29, $15, $15, $15
    db $15, $79, $79, $79, $79, $79, $79, $01, $01, $01, $01, $01, $29, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $3d, $01, $51, $01, $51, $01, $65, $01, $65, $01, $65
    db $01, $01, $01, $01, $01, $01, $51, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $65, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00

ptr_sound_data_on_boot: dw sound_data_on_boot

sound_data_540: dw $0005
sound_data_541: dw $0006
sound_data_542: dw $0007
sound_data_543: dw $0010
sound_data_544: dw $c140
sound_data_545: dw $ae00
sound_data_546: dw $0001
sound_data_547: dw $0002
sound_data_548: dw $0003
sound_data_549: dw $0004
sound_data_550: dw $ff3b, $b8e0, $b002
sound_data_551: dw $ff3f, $b8e0, $b002
sound_data_552: dw $ff3b, $b8e0, $7002
sound_data_553: dw $ff3f, $b8e0, $7002
sound_data_554: dw $fe3b, $b8e0, $9002
sound_data_555: dw $fe3f, $b8e0, $9002
sound_data_556: dw $ff3b, $b8e0, $d003
sound_data_557: dw $ff3f, $b8e0, $d003
sound_data_558: dw $fc3b, $b8e0, $b001
sound_data_559: dw $fc3f, $b8e0, $b001
sound_data_560: dw $fc3b, $b8e0, $4001
sound_data_561: dw $fc3f, $b8e0, $4001
sound_data_562: dw $ff3b, $b8e0, $1002
sound_data_563: dw $ff3f, $b8e0, $1002

; org $dba800

incsrc sound/seq_decomp.asm

sound_driver: incbin sound_data/driver.bin
incsrc sound/magic_se_seq.asm
incsrc sound/map_magic_se_seq.asm

sound_data_000:  db $01, $00, $00, $00
sound_data_001:  db $02, $00, $00, $00
sound_data_002:  db $03, $00, $00, $00
sound_data_003:  db $04, $00, $00, $00
sound_data_004:  db $05, $00, $00, $00
sound_data_005:  db $06, $00, $00, $00
sound_data_006:  db $07, $00, $00, $00
sound_data_007:  db $08, $00, $00, $00
sound_data_008:  db $09, $00, $00, $00
sound_data_009:  db $0a, $00, $00, $00
sound_data_010:  db $0b, $00, $00, $00
sound_data_011:  db $0c, $00, $00, $00
sound_data_012:  db $0d, $00, $00, $00
sound_data_013:  db $0e, $00, $00, $00
sound_data_014:  db $00, $00, $00, $00
sound_data_015:  db $00, $00, $00, $00
sound_data_016:  db $00, $00, $00, $00
sound_data_017:  db $00, $00, $00, $00
sound_data_018:  db $00, $00, $00, $00
sound_data_019:  db $00, $00, $00, $00
sound_data_020:  db $00, $00, $00, $00
sound_data_021:  db $00, $00, $00, $00
sound_data_022:  db $00, $00, $01, $00
sound_data_023:  db $00, $00, $00, $00
sound_data_024:  db $00, $00, $00, $00
sound_data_025:  db $00, $00, $00, $00
sound_data_026:  db $00, $00, $00, $00
sound_data_027:  db $00, $00, $00, $00
sound_data_028:  db $00, $00, $00, $00
sound_data_029:  db $00, $00, $00, $00
sound_data_030:  db $00, $00, $00, $00
sound_data_031:  db $00, $00, $00, $00
sound_data_032:  db $00, $00, $00, $00
sound_data_033:  db $00, $00, $00, $00
sound_data_034:  db $00, $00, $00, $00
sound_data_035:  db $00, $00, $00, $00
sound_data_036:  db $00, $00, $00, $00
sound_data_037:  db $00, $00, $00, $00
sound_data_038:  db $00, $00, $00, $00
sound_data_039:  db $00, $00, $00, $00
sound_data_040:  db $00, $00, $00, $00
sound_data_041:  db $00, $00, $00, $00
sound_data_042:  db $00, $00, $00, $00
sound_data_043:  db $00, $00, $00, $00
sound_data_044:  db $00, $00, $00, $00
sound_data_045:  db $00, $00, $00, $00
sound_data_046:  db $00, $00, $00, $00
sound_data_047:  db $00, $00, $00, $00
sound_data_048:  db $00, $00, $00, $00
sound_data_049:  db $00, $00, $00, $00
sound_data_050:  db $00, $00, $00, $00
sound_data_051:  db $00, $00, $00, $00
sound_data_052:  db $00, $00, $00, $00
sound_data_053:  db $00, $00, $00, $00
sound_data_054:  db $00, $00, $00, $00
sound_data_055:  db $00, $00, $00, $00
sound_data_056:  db $00, $00, $00, $00
sound_data_057:  db $00, $00, $00, $00
sound_data_058:  db $00, $00, $00, $00
sound_data_059:  db $00, $00, $00, $00
sound_data_060:  db $00, $00, $00, $00
sound_data_061:  db $00, $00, $00, $00
sound_data_062:  db $00, $00, $00, $00
sound_data_063:  db $00, $00, $00, $00

check bankcross off

incsrc sound/original_seqs.asm

warnpc $de8c05
padbyte $ff : pad $de8c05

check bankcross on

org $de8c91
    dw fe4_map_se_seq_valflame_2 ; [0x47] <- 0x4d

org $de8ccf
    dw fe4_map_se_seq_bolganone  ; [0x66] <- 0x53
    dw fe4_map_se_seq_thor       ; [0x67] <- 0x5d
    dw fe4_map_se_seq_aura       ; [0x68] <- 0x60
    dw fe4_map_se_seq_valflame_1 ; [0x69] <- 0x64

org $de988b
    dw fe4_se_seq_84_0

org $de98f3
    dw fe4_se_seq_64_0
    dw fe4_se_seq_70_0
    dw fe4_se_seq_70_2

org $de9945
    dw fe4_se_seq_64_1
    dw fe4_se_seq_65_0
    dw fe4_se_seq_70_1
    dw fe4_se_seq_79_0
    dw fe4_se_seq_80_0

check bankcross off
org $208000 : incsrc sound/fe4_sound_data.asm
check bankcross on

db "end"

incsrc fe5_sound_trans.asm

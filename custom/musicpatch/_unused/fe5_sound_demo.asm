;; map 1 bgm
; org $848075 : db $6e, $7e

;; battle (attack)
; org $9683dc : lda #$0084

;; battle (defence)
; org $9683d7 : lda #$0082

;; real battle sfx
; org $8accd5
;     dw $3d
;     dw $66
;     dw $67

; org $8acceb
;     dw $3e
;     dw $3f
;     dw $68

; org $8acd05
;     dw $69

; org $8acd07
;     dw $6a

; org $8acd0f
;     dw $09

; org $899025 : db $59, $14, $14

;; thor hammer effect
; org $96b1ad : dw $01fa

; --------------------------------------------------------

org real_battle_item_and_class_wave_table+$00+$50 : db $33
org real_battle_item_and_class_wave_table+$00+$51 : db $09
org real_battle_item_and_class_wave_table+$00+$55 : db $35
org real_battle_item_and_class_wave_table+$00+$59 : db $39
org real_battle_item_and_class_wave_table+$00+$5c : db $37
org real_battle_item_and_class_wave_table+$00+$60 : db $39

org real_battle_item_and_class_wave_table+$aa+$50 : db $34
org real_battle_item_and_class_wave_table+$aa+$51 : db $0a
org real_battle_item_and_class_wave_table+$aa+$55 : db $36
org real_battle_item_and_class_wave_table+$aa+$59 : db $3a
org real_battle_item_and_class_wave_table+$aa+$5c : db $38
org real_battle_item_and_class_wave_table+$aa+$60 : db $3a

org $96b788
    dl dat_f11286 : dl $7eb000 : dw $2000 : dw $1c00 
    dl dat_f124af : dl $7eb000 : dw $3800 : dw $1000 
    dl dat_f12801 : dl $7eb000 : dw $7400 : dw $0800 

org $96b7ba
    dl dat_f01360 : dl $7eb000 : dw $3000 : dw $0500
    dl dat_f018fc : dl $7eb000 : dw $7000 : dw $0800
    dl dat_f0013d : dl $7eb000 : dw $2000 : dw $1c00
    dl dat_f016e8 : dl $7eb000 : dw $3800 : dw $0800

org $96b8be
    dl dat_f019f4 : dl $7eb000 : dw $0000 : dw $2000 
    dl dat_f02266 : dl $7eb000 : dw $2000 : dw $2000 
    dl dat_f02fc1 : dl $7eb000 : dw $3000 : dw $0200 
    dl dat_f03141 : dl $7eb000 : dw $3800 : dw $0800 
    dl dat_f0358f : dl $7eb000 : dw $6000 : dw $0800 
    dl dat_f03771 : dl $7eb000 : dw $6000 : dw $0800 
    dl dat_f039a2 : dl $7eb000 : dw $7000 : dw $0800 

org $96ba1c
    dl dat_f1771d : dl $7eb000 : dw $2000 : dw $1200 
    dl dat_f20083 : dl $7eb000 : dw $7000 : dw $0d00 
    dl dat_f206f9 : dl $7eb000 : dw $3c00 : dw $0800 
    dl dat_f209be : dl $7eb000 : dw $3000 : dw $1800 

org $96bb20
    dl dat_f27e72 : dl $7eb000 : dw $2000 : dw $1800 
    dl dat_f30e6f : dl $7eb000 : dw $0000 : dw $4000 
    dl dat_f3365d : dl $7eb000 : dw $3000 : dw $0010 
    dl dat_f33663 : dl $7eb000 : dw $3800 : dw $0800 
    dl dat_f339eb : dl $7eb000 : dw $6000 : dw $1000 
    dl dat_94ff6d : dl $7eb000 : dw $7000 : dw $0800 

org $96bba2
    dl dat_f41f38 : dl $7eb000 : dw $0000 : dw $3400 
    dl $000000 : dl $000000 : dw $0000 : dw $0000 
    dl dat_f43803 : dl $7eb000 : dw $6000 : dw $1000 

;; freespace

org $2c8000 

check bankcross off

dat_f01360: incbin resource/fe4_real_effect/f01360.bin.fe4
dat_f018fc: incbin resource/fe4_real_effect/f018fc.bin.fe4
dat_f0013d: incbin resource/fe4_real_effect/f0013d.bin.fe4
dat_f016e8: incbin resource/fe4_real_effect/f016e8.bin.fe4

dat_f019f4: incbin resource/fe4_real_effect/f019f4.bin.fe4
dat_f02266: incbin resource/fe4_real_effect/f02266.bin.fe4
dat_f02fc1: incbin resource/fe4_real_effect/f02fc1.bin.fe4
dat_f03141: incbin resource/fe4_real_effect/f03141.bin.fe4
dat_f0358f: incbin resource/fe4_real_effect/f0358f.bin.fe4
dat_f03771: incbin resource/fe4_real_effect/f03771.bin.fe4
dat_f039a2: incbin resource/fe4_real_effect/f039a2.bin.fe4

dat_f1771d: incbin resource/fe4_real_effect/f1771d.bin.fe4
dat_f20083: incbin resource/fe4_real_effect/f20083.bin.fe4
dat_f206f9: incbin resource/fe4_real_effect/f206f9.bin.fe4
dat_f209be: incbin resource/fe4_real_effect/f209be.bin.fe4

dat_f11286: incbin resource/fe4_real_effect/f11286.bin.fe4
dat_f124af: incbin resource/fe4_real_effect/f124af.bin.fe4
dat_f12801: incbin resource/fe4_real_effect/f12801.bin.fe4

dat_f27e72: incbin resource/fe4_real_effect/f27e72.bin.fe4
dat_f30e6f: incbin resource/fe4_real_effect/f30e6f.bin.fe4
dat_f3365d: incbin resource/fe4_real_effect/f3365d.bin.fe4
dat_f33663: incbin resource/fe4_real_effect/f33663.bin.fe4
dat_f339eb: incbin resource/fe4_real_effect/f339eb.bin.fe4
dat_94ff6d: incbin resource/fe4_real_effect/94ff6d.bin.fe4

dat_f41f38: incbin resource/fe4_real_effect/f41f38.bin.fe4
dat_f43803: incbin resource/fe4_real_effect/f43803.bin.fe4

check bankcross on
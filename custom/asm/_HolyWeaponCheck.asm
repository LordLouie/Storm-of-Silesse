
  * := $0DA57D
  .logical $9BA57D

    jsl rlExtendedHolyWeaponFlashCheck
    rts

    .fill $9BA58F - *, $FF

  .endlogical

  .section ExtendedHolyWeaponFlashCheckSection

      rlExtendedHolyWeaponFlashCheck

        .al
        .autsiz
        .databank ?

        HolyWeaponFlashList := [Gungnir]

        and #$00FF

        .for _Weapon in HolyWeaponFlashList

          cmp #_Weapon
          beq _DoFlash

        .endfor

        clc
        bra +

        _DoFlash
        sec

        +
        rtl

        .databank 0

  .endsection ExtendedHolyWeaponFlashCheckSection

;palettes

* = $3E7758
.logical lorom($3E7758, 1)

sppalettedark   .binary "snowfadepalette.bin"
csnpalette      .binary "CastleSnowNight.bin"
csnpalettedark  .binary "CastleSnowNightFaded.bin"
csdpalette      .binary "CastleSnowDay.bin"
csdpalettedark  .binary "CastleSnowDayFaded.bin"
.here

* = $3E7ED7
.logical lorom($3E7ED7, 1)

sppalette   .binary "snowtilepalette.bin" ; only one palette fits here

.here


* = $4CB000 ;I need to find a better spot for these
.logical lorom($4CB000, 1)
ch5palette      .binary "chapter5palette.bin"
ch5palettedark  .binary "chapter5palettefaded.bin"
tpalette      .binary "templepalette.bin"
tpalettedark  .binary "templefadepalette.bin"
.here
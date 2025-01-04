;plains tileset related info

* = $485800
.logical lorom($485800, 1)

sptiles  .binary "snowplainstilegraphics.bin"

.here

* = $47ABE3
.logical lorom($47ABE3, 1)

sptileset    .binary "snowplainstileset.bin"

.here

;castle tileset related info

* = $4AD440 
.logical lorom($4AD440, 1)

ctiles      .binary "CastleTileGraphics.bin"

.here

* = $4ABF3A 
.logical lorom($4ABF3A, 1)

ctileset    .binary "CastleTileset.bin"

.here

* = $4B1BB0
.logical lorom($4B1BB0 , 1)
sctiles   .binary "snowcastletilegraphics.bin"
.here

* = $4B63D0
.logical lorom($4B63D0 , 1)
sctileset   .binary "snowcastletileset.bin"
.here

* = $4B78D0
.logical lorom($4B78D0,1)
chapter5tiles   .binary "chapter5tilegraphics.bin"
.here

* = $4BC3F0
.logical lorom($4BC3F0,1)
chapter5tileset   .binary "chapter5tileset.bin"
.here

;temple tileset related info
* = $4BDAD0 
.logical lorom($4BDAD0, 1)
ttiles   .binary "templeTiles.dat.fe4"
.here
* = $4C22F0
.logical lorom($4C22F0, 1)
ttileset   .binary "templeTileset.dat.fe4"
.here

* = $3F8000  ; NOTE: overrides vanilla Village animations
.logical lorom($3F8000 , 1)

canimated   .binary "CastleTileAnimations.bin"
.here

* = $3A8000 ; Undocumented reason as to why this specific address, but guessing similar to former instance
.logical lorom($3A8000, 1)
tanimated   .binary "templeanimations.bin"
.here







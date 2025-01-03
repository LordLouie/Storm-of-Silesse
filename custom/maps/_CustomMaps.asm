;custom maps

* = $546950
.logical lorom($546950, 1)

    mapone   .binary "HungerForBattleMapMain.bin.fe4"
    maptwo   .binary "SupplyAmbushMapMain.bin.fe4"
    mapthree  .binary "HandsOfTheDevilMapMain.bin.fe4"
    ch3mapchanges .binary "Chapter03MapChanges.bin.fe4"
    mapfour   .binary "TrailingSkanorMapMain.bin.fe4"
;    mapfive   .binary "chapter5MapMain.bin.fe4"
    mapeight   .binary "chapter8MapMain.bin.fe4"
.here

* = $5FFE78 ; - veeerryy end of the rom. nothing can go past this
.logical lorom($5FFE78, 1)

debug   .binary "truedebug.bin.fe4"

.here

;custom maps

* = $546950
.logical lorom($546950, 1)
    maploptyr   .binary "loptyr.bin.fe4"
    mapone   .binary "HungerForBattleMapMain.bin.fe4"
    maptwo   .binary "SupplyAmbushMapMain.bin.fe4"
    mapthree  .binary "HandsOfTheDevilMapMain.bin.fe4"
    ch3mapchanges .binary "Chapter3MapChanges.bin.fe4"
    mapfour   .binary "TrailingSkanorMapMain.bin.fe4"
    mapfive   .binary "Chapter5MapMain.bin.fe4"
    ch5mapchanges .binary "Chapter5MapChanges.asm"
    mapeight   .binary "Chapter8MapMain.bin.fe4"

.here

* = $5FFE78 ; - veeerryy end of the rom. nothing can go past this
.logical lorom($5FFE78, 1)

debug   .binary "truedebug.bin.fe4"

.here

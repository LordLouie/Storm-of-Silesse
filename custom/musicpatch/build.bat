@echo off
copy ..\..\fe5trans.sfc ..\..\fe5trans_fe4_music.sfc > nul
bin\asar.exe --fix-checksum=on fe5_sound.asm ..\..\fe5trans_fe4_music.sfc

procUnknown81B941 .dstruct structProcInfo, None, rlProcUnknown81B941Init, rlProcUnknown81B941OnCycle, None

rlProcUnknown81B941Init ; 81/B949

	.al
	.xl
	.autsiz
	.databank ?

	lda wCurrentPhase,b
	beq +

	lda wChapterBoss,b
	sta wR0
	bra ++

	+
	lda #Neill
	sta wR0

		+
	lda #aBurstWindowCharacterBuffer
	sta wR1
	jsl rlSearchForUnitAndWriteTargetToBuffer
	lda aBurstWindowCharacterBuffer.X,b
	and #$00FF
	sta wR0
	lda aBurstWindowCharacterBuffer.Y,b
	and #$00FF
	sta wR1
	jsl rlUnknown81B4AE
	rtl

rlProcUnknown81B941OnCycle ; 81/B978

	.al
	.xl
	.autsiz
	.databank ?

	lda wForcedMapScrollFlag,b
	bne +

	jsl rlProcEngineFreeProc

	+
	rtl

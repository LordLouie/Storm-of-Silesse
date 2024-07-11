cmacroChangeMap .macro Chapter
		
		STORE_WORD wCurrentChapter, \Chapter

		CALL_ASM_LOOP $849485, $0000
		CALL_ASM_LOOP $9A98CF, $0000

		STORE_WORD bBuf_INIDISP, $0000
		STORE_WORD INIDISP, $0000
	.endm

cmacroChangeMapSkippable .macro Chapter

		STORE_WORD wCurrentChapter, \Chapter

		CALL_ASM_SKIPPABLE $849485, $0000
		CALL_ASM_SKIPPABLE $9A98CF, $0000

		STORE_WORD bBuf_INIDISP, $0000
		STORE_WORD INIDISP, $0000
	.endm

cmacroCustomBattleAnimOFF .segment EventPointer, Weapon1, Weapon2, Coords, CoordsAlt
		CALL_ASM_SKIPPABLE rlClearHDMAArray, $0000

		STORE_LONG lEventEngineLongParameter, \EventPointer
		CALL_ASM_SKIPPABLE $9A8D0F, $0000

		STORE_WORD wEventEngineParameter1, \Weapon1
		STORE_WORD wEventEngineParameter2, \Weapon2
		STORE_WORD wEventEngineXCoordinate, \Coords[0]
		STORE_WORD wEventEngineYCoordinate, \Coords[1]
		STORE_WORD wEventEngineXCoordinateAlt, \CoordsAlt[0]
		STORE_WORD wEventEngineYCoordinateAlt, \CoordsAlt[1]
		CALL_ASM_SKIPPABLE $9A8E50, $0000

		CALL_ASM_SKIPPABLE $84B719, $0000

		HALT_UNTIL_WORD_SKIPPABLE $7FAA14, $0000

		CALL_ASM_SKIPPABLE rlUpdateUnitMaps, $0000
		CALL_ASM_SKIPPABLE rlUpdateVisibilityMap, $0000
	.endsegment

cmacroCustomBattleAnimON .macro BattleID
		STORE_WORD_FROM wEventEngineParameter1, wCurrentChapter
		STORE_WORD wEventEngineParameter2, \BattleID
		CALL_ASM_SKIPPABLE $9A98E6, $0000

		STORE_BYTE $7E41AC, $00

		HALT_UNTIL_WORD_SKIPPABLE $7FAA14, $0000

		STORE_WORD_FROM wCurrentChapter, wEventEngineParameter1

		HALT_UNTIL_BYTE_SKIPPABLE bBuf_INIDISP, $0F
	.endm

cmacroClearMap .macro
	CALL_ASM_SKIPPABLE rlUnknown8C9E22, $0000
	.endm

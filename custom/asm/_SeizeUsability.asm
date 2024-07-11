.weak

  rlGetMapTileIndexByCoords              :?= address($838E76)
  rlCheckIfTileIsGateOrThroneByTileIndex :?= address($83AF2B)

.endweak

rlSeizeUsability ; 87/8570

  .al
  .xl
  .autsiz
  .databank `wObjectiveMarkerColorIndex

  ; Inputs:
  ; aSelectedCharacterBuffer: filled with acting unit

  ; Outputs:
  ; A: $0100 if usable, $0400 if unusable

  lda #None
  cmp wObjectiveMarkerColorIndex
  bne _Unusable

  lda aSelectedCharacterBuffer.UnitState,b
  bit #UnitStateGrayed
  bne _Unusable

  lda aSelectedCharacterBuffer.Character,b
  cmp #Neill
  beq _Continue

  cmp #Barra
  beq _Continue

  cmp #Fee
  beq _Continue

  ; If we reach here, unit isn't one we want

  bra _Unusable

  _Continue

  lda aSelectedCharacterBuffer.X,b
  and #$00FF
  sta wR0
  lda aSelectedCharacterBuffer.Y,b
  and #$00FF
  sta wR1
  jsl rlGetMapTileIndexByCoords

  tax
  lda aVisibilityMap,x
  and #$00FF
  beq _Unusable

  jsl rlCheckIfTileIsGateOrThroneByTileIndex
  bcs _Usable

  _Unusable
  lda #$0400
  rtl

  _Usable
  lda #$0100
  rtl

  .databank 0
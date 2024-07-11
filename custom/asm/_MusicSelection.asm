.weak
  WARNINGS :?= "None"
.endweak

GUARD_FE5_PICK_PHASE_MUSIC :?= false
.if (!GUARD_FE5_PICK_PHASE_MUSIC)
  GUARD_FE5_PICK_PHASE_MUSIC := true

  ; TODO: put this into something larger.

  ; Definitions

    .weak

      rlGetAllegianceInfoOffset :?= address($83B296)
      rlGetChapterDataField     :?= address($848933)
      rlCountLivingPhaseTargets :?= address($8599B7)

    .endweak

  ; Freespace inclusions

    .section PickPhaseMusicSection

        rlPickPhaseMusic ; 83/A5B2

          .autsiz
          .databank ?

          ; Picks the phase's music.

          ; Inputs:
          ; None

          ; Outputs:
          ; A: Returns:
          ;   if it's still turn 0: 0
          ;   if Player phase:
          ;     if there are 6 or fewer foes alive: VictoryMusicID
          ;     else if FlagAlliedDeath is set: SadMusicID
          ;     else: the chapter's phase music for Player phase
          ;   else: the chapter's phase music for the phase

          BaseMusicID         := $0001
          AdvanceAMusicID     := $0002
          AdvanceBMusicID     := $0003
          AdversityMusicID    := $0004
          VictoryMusicID      := $0005
          SadMusicID          := $0006
          GaidenMusicID       := $0007
          LeifMusicID         := $0008

          BaseAMusicID        := $0009
          BaseBMusicID        := $000A
          AssaultMusicID      := $000B
          DarkBishopsMusicID  := $000C
          EnemyGaidenMusicID  := $000D
          EndgameMusicID      := $000E

          ; The following are exclusive to Min's FE4 Music Patch

          PrologueMusicID     := $005D
          Chapter1MusicID     := $005E
          Chapter2MusicID     := $005F
          Chapter3MusicID     := $0060
          Chapter4MusicID     := $0061
          Chapter5MusicID     := $0063
          Chapter6MusicID     := $0068
          Chapter7MusicID     := $0069
          Chapter8MusicID     := $006A
          Chapter9MusicID     := $006B
          Chapter10MusicID    := $006C
          EpilogueMusicID     := $006E

          VictoryFE4MusicID   := $0073
          
          VerdaneMusicID      := $0074
          AugustMusicID       := $0075
          PirateMusicID       := $0076
          SilesseMusicID      := $0077
          AedMusicID          := $0078
          IsaachMusicID       := $0079
          MunsterMusicID      := $007A
          ThraciaMusicID      := $007B
          MiletosMusicID      := $007C
          Grannvale1MusicID   := $007D
          Grannvale2MusicID   := $007E
          AlliedArmyMusicID   := $007F
          NeutralArmyMusicID  := $0080


          php
          phb

          sep #$20

          lda #`aTemporaryEventFlags
          pha

          rep #$20

          plb

          .databank `aTemporaryEventFlags

          lda wCurrentTurn,b
          beq _End

          lda wCurrentPhase,b
          bne _GetPhaseMusic

          lda aTemporaryEventFlags + ((FlagAlliedDeath - 1) / 8)
          bit #%1 << ((FlagAlliedDeath - 1) & 7)
          beq +

          lda #SadMusicID
          bra _End

          +
          jsl rlCountLivingPhaseTargets
          cmp #6
          beq +

          bge _GetPhaseMusic

          +
          lda #VictoryMusicID
          bra _End

          _GetPhaseMusic

          lda #structChapterDataTableEntry.PlayerPhaseMusic
          sta lR18

          lda wCurrentChapter,b
          jsl rlGetChapterDataField

          lda wCurrentPhase,b
          jsl rlGetAllegianceInfoOffset

          lda lR18,x
          and #$00FF

          _End
          plb
          plp
          rtl

          .databank 0

    .endsection PickPhaseMusicSection

.endif ; GUARD_FE5_PICK_PHASE_MUSIC
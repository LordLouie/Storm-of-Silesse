        _HouseExamination
          EVENT_TEST_FLAG_SET FlagFirstSighting
          JUMP_FALSE +
          EVENT_TEST_FLAG_SET FlagSecondSighting
          JUMP_FALSE +
          EVENT_TEST_FLAG_SET FlagThirdSighting
          JUMP_FALSE +
          LOAD_GROUP eventChapter05Data._GebGroup
          YIELD
        macrodialogue dialogueChapter04thirdsighting
        YIELD
          macroASMCChangeAllegianceToPlayer Geb
          macroASMCSetCharacterDataWord Geb, Leader, Neill
        END2
          +
        macrodialogue dialogueChapter04cavernexamination
        END2
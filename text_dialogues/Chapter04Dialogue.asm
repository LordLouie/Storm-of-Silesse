dialogueChapter04Opening1

.byte Right_slot
.word LoadPortrait
.word raydrik_portrait

.text "Greetings, travelers."
.byte $02
.text "You all look thoroughly exhausted."
.byte $02
.text "Come, rest a spell."
.byte WaitForA

.byte Left_slot
.word LoadPortrait
.word leif_portrait
.text "Thanks, I'd appreciate that..."
.byte $02
.text "Are you the one in charge"
.byte $02
.text "of this village here?"
.byte $08

.byte Right_slot
.byte $04
.text "You could say that..."
.byte $08
.byte $04
.text "Months ago, I was but a wandering"
.byte $02
.text "priestess, in service of helping"
.byte $02
.text "those who fortune had long forgot."
.byte $08
.byte $04
.text "Many days spent aimlessly wandering"
.byte $02
.text "have brought me here."
.byte $08
.byte $04
.text "It was a grisly sight."
.byte $02
.text "Illness had taken this village by storm."
.byte $08
.byte $04
.text "With their leadership wiped out,"
.byte $02
.text "the people of Skanor were scared,"
.byte $02
.text "and directionless."
.byte $08
.byte $04
.text "I could not sit idle and watch these"
.byte $02
.text "pure and kind folk suffer."
.byte $08
.byte $04
.text "I tended to their wounds, bartered"
.byte $02
.text "for medicine, and oversaw the"
.byte $02
.text "reconstruction of rundown houses."
.byte $08
.byte $04
.text "Before I knew it, I had been put in"
.byte $02
.text "charge of everything."
.byte $08
.byte $04
.text "I am every bit as grateful to them"
.byte $02
.text "as they are to me."
.byte $08
.byte $04

.byte Left_slot
.byte $04
.text "Wow! You musta been like a one-man army!"

.byte Right_slot
.byte $04
.text "Don't be daft!"
.byte $02
.text "That would discredit the efforts of"
.byte $02
.text "those who've supported me for so long!"
.byte $08
.byte $04
.text "...Oh, pardon me, young man, but"
.byte $02
.text "what is your name?"
.byte $08

.byte Left_slot
.byte $04
.text "Call me Neill!"
.byte $08
.byte $04

.byte Right_slot
.byte $04
.text "Neill, I would like to introduce"
.byte $02
.text "you to a friend of mine-"
.byte $08
.byte $04
.text "He isn't very talkative, so please"
.byte $02
.text "be patient with him."
.byte $08
.byte $04

.byte Right_slot
.word LoadPortrait
.word ralph_portrait

.text "I'm Waulter, a local woodcutter."
.byte $08
.byte $04
.text "I thought Ilsa here could use a hand,"
.byte $02
.text "so I did a few lifting jobs here"
.byte $02
.text "and there... that's all."
.byte $08
.byte $04
.text "Just wanted to do my part..."
.byte $08
.byte $04
.text "I'll tell ya, if it weren't for her,"
.byte $02
.text "we'd all be lying under a pile of snow."
.byte $08
.byte Right_slot
.word LoadPortrait
.word raydrik_portrait
.byte $04

.text "I think we've been well addressed..."
.byte $08
.byte $04
.text "Neill, I would like to hear"
.byte $02
.text "about is how you and your scrappy"
.byte $02
.text "friends saved this town's children..."
.byte $08
.byte $04
.byte EndText

dialogueChapter04Opening3

.byte Right_slot
.word LoadPortrait
.word olwen_portrait
.text "This is the village they call Skanor? "
.byte NewLine
.text "Tch. It's an absolute Pigsty."
.byte WaitForA
.byte $04
.text "The purloiners who slew that dupe Tavares"
.byte NewLine
.text "are all held up here."
.byte WaitForA
.byte $04
.text "Men! You have your orders, and I have mine."
.byte $02
.text "Raze this hovel and bring me their leader!"
.byte $08
.byte $04
.byte EndText

geraldwalter
.byte Right_slot
.word LoadPortrait
.word ralph_portrait
.text "Hold it. I've seen you before..."
.byte $08

.byte Left_slot
.word LoadPortrait
.word eyvel_portrait
.text "How can that be? Unless..."
.byte $08
.byte $04

.byte Right_slot
.byte $04
.text "The taking of Silesse..."
.byte $02
.text "I remember it like it was yesterday."
.byte $08
.byte $04
.text "I was in the rear guard of the Beigenritter."
.byte $02
.text "It was a massacre. Silesse's finest, dropping"
.byte $02
.text "like flies, rushing into the jaws o' death..."
.byte $08
.byte $04
.text "When I was out there, in thick of it..."
.byte $02
.text "I saw an armored giant, setting men"
.byte $02
.text "ablaze with an ornate sword..."
.byte $08

.byte Left_slot
.byte $04
.text "..."
.byte $08
.byte $04
.text "On that day, I recited my oath to Rahna..."
.byte $02
.text "The day I leave is the day I fall."
.byte $08
.byte $04
.text "I reduced 30 men to ash that day, but"
.byte $02
.text "but others came still."
.byte $08
.byte $04
.text "She didn't want me to bear the disgrace"
.byte $02
.text "of surrender. Knowing I had never properly"
.byte $02
.text "enlisted, she ordered I be sent away..."
.byte $08
.byte $04
.text "The Gerald you know died that day,"
.byte $02
.text "bloodied, on the hands of Grannvale."
.byte $08
.byte $04
.text "Standing before you is an apparition,"
.byte $02
.text "a pale specter devoid of meaning..."
.byte $02
.text "fading to dust by the day..."
.byte $08
.byte $04

.byte Right_slot
.byte $04
.text "Farmers, mothers, kids, even soldiers..."
.byte $02
.text "Trembling as their loved ones were hacked apart."
.byte $02
.text "I swore I'd never lift a sword again."
.byte $08
.byte $04
.text "Still, life isn't made to be discarded."
.byte $08
.byte $04
.text "That you stand here now is proof that Gerald"
.byte $02
.text "wasn't a casualty at the sight of slaughter"
.byte $02
.text "all those years ago."
.byte $08
.byte $04
.text "His tenacity, his selflessness,"
.byte $02
.text "burns in your very soul!"
.byte $08
.byte $04
.text "If you'll stay 'till the day you fall, then"
.byte $02
.text "stay here and give these kids a damn future!"
.byte $08
.byte $04

.byte Left_slot
.byte $04
.text "-!"
.byte $02
.text "At once."
.byte $08
.byte $04
.byte EndText

civvydies
.byte Right_slot
.word LoadPortrait
.word leif_portrait
.byte $09 ; font 9(always use font 9)
.text "Argh! I'm such a failure..."
.byte $08

.byte EndText

ilsedies
.byte Right_slot
.word LoadPortrait
.word leif_portrait
.byte $09 ; font 9(always use font 9)
.text "Argh! I'm such a failure..."
.byte $08

.byte EndText

dialogueChapter04WorldMap1

.text "At long last, Storm Cabal has reached"
.byte NewLine
.word LoadPortraitalt_1
.long LoadPortraitalt_2
.word $0001
.word $0605 ;y then x
.text "its destination."
.byte WaitForA
.word ClearPortraitalt
.long $82937A
.word $0000
.byte $04
.text "The children they harbored were"
.byte NewLine
.text "reunited with their parents once more."
.byte WaitForA
.byte $04
.text "The joy Neill and his friends felt"
.byte NewLine
.text "for a job well done... would not last."
.byte WaitForA
.byte $04
.byte NewLine
.text "The empire had heard of their exploits,"
.byte NewLine
.text "and sent a battalion to snuff them out."
.byte WaitForA
.byte $04
.text "But why would they so ardently pursue"
.byte NewLine
.text "a group of ordinary mercenaries?"
.byte WaitForA
.byte $04
.text "Yet again, Storm Cabal's work proved more"
.byte NewLine
.text "laborious than initially thought..."
.byte WaitForA
.byte $04

.byte EndText

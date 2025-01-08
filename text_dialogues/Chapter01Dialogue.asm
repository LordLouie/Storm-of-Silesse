
; Command definitions 

NewLine = $02
ScrollText = $04
EndText = $05
Left_slot = $06
Right_Slot = $07
WaitForA = $08

EndTextNoPortraitFade = $0001
LoadPortrait = $3A00
ClearPortrait = $3B00
LoadPortraitalt_1 = $3000
LoadPortraitalt_2 = $8CBF9C
ClearPortraitalt = $2F00
RetractBox = $3900
PlayMusic = $1300
MoveXY = $1000
PauseDialogue = $1D00


dialogueChapter01Opening1

    .byte Left_slot ; Left slot
    .word LoadPortrait    ; load portrait
    .word elder_portrait

    .byte Right_Slot ; Right slot
    .word LoadPortrait
    .word colho_portrait
	
	.byte Left_slot
	.byte $09 ; font 9(always use font 9)	
	.text "Pah... you fiends... how... how could you?"
	.byte NewLine
	.text "We already gave you food..."
	.byte WaitForA	
	
	.byte Right_Slot
	.text "Listen, old timer, I hear ya 'n I understand,"
	.byte NewLine
	.text "but we jus' need a 'lil more... that's all."
	.byte WaitForA
	
	.byte Left_slot
	.byte ScrollText
	.text "A little more?! You 'n your goons"
	.byte NewLine
	.text "took everything!"
	.byte WaitForA
	.byte ScrollText
	.text "With an appetite as bottomless as yours, it's"
	.byte NewLine
	.text "it's a wonder you haven't taken the town"
	.byte NewLine
	.text "off it's foundation!"
	.byte WaitForA
	
	.byte Right_Slot
	.byte ScrollText
	.text "Taken the town?"
	.byte NewLine
	.text "Say... that's gives me a great idea."
	.byte WaitForA
	
	.byte Left_slot
	.byte ScrollText
	.text "What?"
	.byte WaitForA
	.word ClearPortrait
	.word RetractBox
	
	.byte Right_Slot
	.byte NewLine
	.text "Aight, boys! This whole town is ours now!"
	.byte NewLine
	.text "Shake the people for everything they've got!"
	.byte WaitForA
	.byte ScrollText
	.text "If they don't come quietly, introduce their"
	.byte NewLine
	.text "pallets to the smooth taste of steel!"
	.byte WaitForA

	.byte EndText
	
dialogueChapter01Opening2

	.byte Right_slot
	.word LoadPortrait    
    .word elder_portrait
	.text "Urgh... have the gods truly forsaken us?"
	.byte NewLine 
	.text "Someone... anyone... help..."
	.byte WaitForA
	
	.byte EndText
	
dialogueChapter01Opening3

	.byte Right_slot
    .word LoadPortrait
    .word leif_portrait
	.byte $09
	.text "C'mon, guys, just a bit further!"
	.byte NewLine
	.text "We'll catch frostbite at this rate!"
	.byte WaitForA

    .byte Left_Slot
    .word LoadPortrait
    .word halvan_portrait
	.text "Speak for yourself, Neill! At least"
	.byte NewLine
	.text "you've got a comfortable horse to ride on..."
	.byte WaitForA
	
	.byte Right_slot
	.byte ScrollText
	.text "Just our luck, there's a village"
	.byte NewLine
	.text "right in front of us!"
	.byte WaitForA
	
	.byte Left_Slot
    .word LoadPortrait
	.word finn_portrait
	.byte ScrollText
	.text "I wouldn't celebrate too soon... looks"
	.byte NewLine
	.text "like it's being ravaged by bandits."

	.byte Right_slot
	.word LoadPortrait
	.word osian_portrait
	
	.byte Left_Slot
	.byte NewLine
	.text "Otto, you think we can take em?"
	.byte WaitForA
	
	.byte EndText

dialogueChapter01Opening4

	.byte Right_slot
	.word LoadPortrait
	.word osian_portrait
	.text "...Positive."
	.byte WaitForA
	
	.byte Left_slot
	.word LoadPortrait
	.word leif_portrait
	.text "If so, then we must make haste!"
	.byte NewLine
	.text "Innocent people are under attack!"
	.byte NewLine
	.text "Heroism now, sustenance later!"
	.byte WaitForA
	
	.byte EndText
	
dialogueChapter01KillerBowHouse

	.byte Right_slot
    .word LoadPortrait
    .word oldlady_portrait
	.byte $09 ; font 9(always use font 9)
	.text "Oh, Maurice... I don't think he's such a"
	.byte NewLine
	.text "bad fella, at heart. When he first crawled into"
	.byte NewLine
	.text "town, the lad was scrawnier than a seedling."
	.byte WaitForA
	.byte ScrollText
	.text "The townsfolk were quick to give him"
	.byte NewLine
	.text "a room, and something to nosh on."
	.byte WaitForA
	.byte ScrollText
	.text "He soon recovered, and as his way of"
	.byte NewLine
	.text "thanking us, he invited his whole posse..."
	.byte WaitForA
	.byte ScrollText
	.text "Overnight, we were swamped with demand for"
	.byte NewLine
	.text "bread and booze. It's like we'd raised" 
	.byte NewLine
	.text "a swarm of locusts in a crop field..."
	.byte WaitForA
	.byte ScrollText	
	.text "When we ran out, they turned on us"
	.byte NewLine
	.text "and seized this whole town."
	.byte WaitForA
	.byte ScrollText
	.text "The things people do just to survive..."
	.byte NewLine
	.text "It's wild."
	.byte WaitForA
	.byte ScrollText
	.text "Thanks for stopping by, and listening"
	.byte NewLine
	.text "to my spiel."
	.byte WaitForA
	.byte ScrollText	
	.text "If you're having trouble getting Maurice"
	.byte NewLine
	.text "to stand down, give this bow a try."
	.byte WaitForA
	.byte ScrollText
	.text "Its precision is deadly..."
	.byte NewLine
	.text "but please try to go easy on him, ok?"
	
	.byte EndText
	
dialogueChapter01MagicRingHouse

	.byte Right_slot
    .word LoadPortrait
    .word oldman_portrait
	.byte $09 ; font 9(always use font 9)
	.text "I jus' saw the strangest thing... "
	.byte WaitForA
	.byte ScrollText
	.text "So, there I was, makin' breakfast,"
	.byte NewLine
	.text "when I looked out the window, and"
	.byte NewLine
	.text "saw somethin' staring at me."
	.byte WaitForA
	.byte ScrollText
	.text "It was early in the morning, and I was"
	.byte NewLine
	.text "feelin' groggy, so I couldn't quite"
	.byte NewLine
	.text "tell you who it was,"
	.byte WaitForA
	.byte ScrollText
	.text "but if I had to wager a guess,"
	.byte NewLine
	.text "I'd say it was some kind of burglar."
	.byte WaitForA
	.byte ScrollText
	.text "It'd stink to be robbed, so now I'm"
	.byte NewLine
	.text "getting rid of everything I have that"
	.byte NewLine
	.text "would look appetizing to thieves."
	.byte WaitForA
	.byte ScrollText
	.text "Like this here ring! It's yours now."
	.byte NewLine
	.text "I bet it has some kinda power..."
	.byte WaitForA

	.byte EndText
	
dialogueChapter01VulneraryHouse

	.byte Right_slot
    .word LoadPortrait
    .word bandit2_portrait
	.byte $09 ; font 9(always use font 9)
	
	.text "Where's the dispenser... on this thing..."
	.byte NewLine
	.text "I jus' wanna... fill a pint..."
	.byte WaitForA
	.byte ScrollText
	.text "Huh? D-Damn, I've been spotted! Uhh... "
	.byte NewLine
	.text "Listen, kid. this isn't what it looks like."
	.byte WaitForA
	.byte ScrollText
	.text "Hey, you betta not go squealin' to Maury about"
	.byte NewLine
	.text "this! He'll stamp on my face 'til I barf it all up!"
	.byte WaitForA
	.byte ScrollText
	.text "Just... take this and keep it shut. Go on, get!"
	.byte WaitForA
	
	.byte EndText
	
dialogueChapter01IronSwordHouse

	.byte Right_slot
    .word LoadPortrait
    .word moustache_portrait
	.byte $09 ; font 9(always use font 9)	
	.text "Confound Maurice and his entire posse!" 
	.byte WaitForA
	.byte ScrollText
	.text "We starve ourselves ragged getting them"
	.byte NewLine
	.text "back on their feet, and this is how"
	.byte NewLine
	.text "they repay us? Grr..."
	.byte WaitForA
	.byte ScrollText
	.text "Luckily for us, there's a way out-"
	.byte NewLine
	.text "See this sword? Stick it between his eyes!"
	.byte NewLine
	.text "Tch... Lousy... Rotten..."
	.byte WaitForA
	
	.byte EndText
	
dialogueChapter01HammerHouse
	
	.byte Right_slot
    .word LoadPortrait
    .word younglady_portrait
	.byte $09 ; font 9(always use font 9)	
	.text "Don't tell anyone, but I think one of those goons"
	.byte NewLine
	.text "forgot to bring their axe to the rumble."
	.byte NewLine
	.text "They left it in my house."
	.byte WaitForA
	.byte ScrollText
	.text "How 'bout instead of returning it,"
	.byte NewLine
	.text "I give it to you instead? "

	.byte WaitForA
	
	.byte EndText

dialogueChapter01Ending

	.byte Right_slot
    .word LoadPortrait
    .word leif_portrait
	.byte $09 ; font 9(always use font 9)
	.text "Looks like we got the last of 'em."
	.byte NewLine
	.text "Where has this city's leader gone?"
	.byte WaitForA
	
	.byte Left_slot
    .word LoadPortrait
    .word elder_portrait
	.text "I'm right here... forgive me..."
	.byte NewLine
	.text "I've never been particularly brave..."
	.byte WaitForA
	.byte ScrollText
	.text "Do my eyes deceive me? Were you four able"
	.byte NewLine
	.text "to defeat this entire gang by yourselves?"
	.byte NewLine
	.text "Without letting anyone come to harm?"
	.byte WaitForA
	.byte ScrollText
	.text "I've hardly seen anything like this..."
	.byte NewLine
	.text "Truly, you lead an impeccable band of fighters."
	.byte NewLine
	.text "You have my sincerest gratitude."
	.byte WaitForA
	
	.byte Right_Slot
	.byte ScrollText
	.text "Don't sweat it, pops."
	.byte NewLine
	.text "Helping people is just what we do."
	.byte WaitForA
	.byte ScrollText
	.text "Our long journey has made my friends"
	.byte NewLine
	.text "and I weary. You wouldn't mind if we"
	.byte NewLine
	.text "rested the night in town here, would you?"
	.byte WaitForA
	.byte Left_slot
	.byte ScrollText
	.text "Oh, not at all! Help yourselves to"
	.byte NewLine
	.text "whatever provisions you desire."
	.byte NewLine
	.text "Within reason, of course."
	.byte WaitForA
	.byte ScrollText
	.text "We wouldn't want to be forced"
	.byte NewLine
	.text "to get rid of you too! Hahaha..."
	.byte WaitForA
	
	.byte Right_Slot
	.byte ScrollText
	.text "Thanks! Could do with a bite to eat."
	.byte NewLine
    .text "We've nearly exhausted our supply of"
	.byte NewLine
	.text "rations from the past few missions..."
	.byte WaitForA
	
	.byte Left_slot
	.byte ScrollText
	.text "Missions? What kind of hairball team"
	.byte NewLine
	.text "are you leading, young man?"
	.byte WaitForA
	
	.byte Right_Slot
	.byte ScrollText
	.text "I am Neill, leader of the Silessian"
	.byte NewLine
	.text "relief group, Storm Cabal!"
	.byte WaitForA
	.byte ScrollText
	.text "Our cause is dedicated to helping those"
	.byte NewLine
	.text "who suffer all across the nation, by hitting"
	.byte NewLine
	.text "the bad guys where it hurts them most-"
	.byte ScrollText
	.text "their wallets!"
	.byte WaitForA

	.byte Left_slot
	.byte ScrollText
	.text "That's quite a sales pitch you've got there!"
	.byte NewLine
	.text "Alright, I've held you up long enough."
	.byte NewLine
	.text "Go, enjoy yourselves!"
	.byte WaitForA
	.byte ScrollText
	.text "Just don't be here too long!"
	.byte WaitForA
	
	.byte Right_Slot
	.byte ScrollText
	.text "We should be out of your hair"
	.byte NewLine
	.text "by sunrise, tommorrow!"
	.byte WaitForA
	
	.byte EndText

dialogueChapter01Ending2

	.byte Right_Slot
    .word LoadPortrait
    .word halvan_portrait
	.text "Alright, we've secured housing for"
	.byte $02
	.text "the next... couple of hours."
	.byte $02
	.text "Where do we go from here, Neill?"
	.byte $08
	
	.byte Left_Slot
    .word LoadPortrait
    .word leif_portrait
	.text "I'm... not sure."
	.byte $08
	.byte $04
	.text "Ever since father gave me the reigns to"
	.byte $02
	.text "this team, I haven't been able to make"
	.byte $02
	.text "a single confident decision."
	.byte $08
	.byte $04
	.text "We've coasted by off of burglary for"
	.byte $02
	.text "a while, but we took a hit trying to pillage"
	.byte $02
	.text "Zaxon castle, and now we have nothing...."
	.byte $08
	.byte $04
	.text "No food, no money, and we lost most of our"
	.byte $02
	.text "weapons while making a break for it too..."
	.byte $08
	
	.byte Right_Slot
	.byte $04
	.text "Don't let it weigh too hard on ya, buddy."
	.byte $02
	.text "Your dearly departed pa put you in charge"
	.byte $02
	.text "of us for a reason. We've got your back."
	.byte $08
	
	.byte Left_Slot
	.byte $04
	.text "Thanks... that really means a lot to me."
	.byte $08
	.byte $04
	.text "Regarding our future plans, Seadna and"
	.byte $02
	.text "Otto got some interesting news from one" 
	.byte $02
	.text "of the villagers here."
	.byte $08
	.word ClearPortrait
	.byte $04
	.word LoadPortrait
    .word osian_portrait
	.text "Grannvale supply trains have been illegally"
	.byte $02
	.text "transporting goods out of Silesse."
	.byte $08
	.byte $04
	.text "The purpose of this cargo is unknown, but"
	.byte $02
	.text "some suspect it to be stolen crop from"
	.byte $02
	.text "farmers near the Zaxon-Lubeck border."
	.byte $08
	
	.byte Right_Slot
	.word LoadPortrait
    .word finn_portrait
	.byte $04
	.text "What Otto has said should be enough cause"
	.byte $02
	.text "for alarm, but it gets weirder."
	.byte $08
	.byte $04
    .text "Not only are things being shipped out of"
	.byte $02
	.text "Silesse, they're also being sent IN."
	.byte $08
	.byte $04
	.text "People who try to follow the transports"
	.byte $02
	.text "seem to disappear without a trace."
	.byte $08
	.byte $04
	.text "At least, that's what we've heard" 
	.byte $02
	.text "from the villagers."
	.byte $08
	
	.byte Left_Slot
	.byte $04
	.text "The supply trains are likely well-guarded."
	.byte $02
	.text "The fortitude of their security, relative"
	.byte $02
	.text "to our own power is unknown."
	.byte $08
	.byte $04
	.text "We must consider our next action"
	.byte $02
	.text "very carefully."
	.byte $08
	.byte $04
	.word ClearPortrait
	.word RetractBox
	
	.byte Right_Slot
	.word LoadPortrait
    .word leif_portrait
	.byte $04
	.text "Hmm... this is unlike anything we've ever"
	.byte $02
	.text "done before."
	.byte $08
	.byte $04
	.text "We can get away with robbing greedy"
	.byte $02
	.text "nobles every now and again, but to"
	.byte $02
	.text "steal from the empire?"
	.byte $08
	.byte $04
	.text "We'd be on the run for the rest of"
	.byte $02
	.text "our lives!"
	.byte $08
	.byte $04
	.text "Still... I think it's the best option"
	.byte $02
	.text "we've got."
	.byte $08
	.byte $04
	.text "Work is drying up. Sticking up criminals"
	.byte $02
	.text "isn't bringing home butter like it used to."
	.byte $02
	.text "We'll have to make do with what's available."
	.byte $08
	.byte $04
	.text "Get a good night's sleep, everyone."
	.byte $02
	.text "It could very well be our last..."
	.byte $08
	
	.byte EndText

dialogueChapter01EndingNoEyvel

	.byte Right_Slot
    .word LoadPortrait
    .word leif_portrait2
	.byte $09 ; font 9(always use font 9)	
	.text "Nanna! Mareeta! Where are you?!"
	.byte NewLine
	.text "Please, answer me!"
	.byte WaitForA
		
	.byte Left_slot
    .word LoadPortrait
    .word youngman_portrait
	.text "L-Lord Neill!"
	.byte NewLine
	.text "Gods' breath, are you a sight fer sore eyes!"
	.byte NewLine
	.text "I...wish I had better news fer you."
	.byte WaitForA
	.byte ScrollText
	.text "They came fer Lady Nanna, they did,"
	.byte NewLine
	.text "and we couldn't do nuthin' to stop 'em!"
	.byte WaitForA
	
	.byte Right_slot
	.byte ScrollText
	.text "Nanna? What happened to Nanna?"
	.byte WaitForA
	
	.byte Left_slot
	.byte ScrollText
	.text "The Empire took 'er, sure as you're standin'"
	.byte NewLine
	.text "here. Mareeta tried to break her loose,"
	.byte NewLine
	.text "but only got captured 'erself."
	.byte WaitForA
	.byte ScrollText
	.text "They both wore chains, last I saw."
	.byte WaitForA
	
	.byte Right_slot
	.byte ScrollText
	.text "Where were they taken?"
	.byte WaitForA
	
	.byte Left_slot
	.byte ScrollText
	.text "Don't rightfully know, Lord Neill. One of them"
	.byte NewLine
	.text "soldiers said somethin' about headin' back"
	.byte NewLine
	.text "to Munster, but nuthin' more specific'n that."
	.byte WaitForA
	
	.byte Right_slot
	.byte ScrollText
	.text "Munster... Then that's where I'm headed, too."
	.byte NewLine
	.text "I'll bring everyone home: Nanna, Mareeta,"
	.byte NewLine
	.text "and the Commander!"
	.byte WaitForA
	
	.byte EndText
	
dialogueChapter01WorldMap1

	.text "The northern country of Silesse"
	.byte NewLine
	.text "is in the midst of a rough patch."
	.byte WaitForA
	
	.word LoadPortraitalt_1
	.long LoadPortraitalt_2
	.word LewynPortrait
	.word $0406 ;y then x
	.byte ScrollText
	.text "The country's king, Lewyn, has been missing"
	.byte NewLine
	.text "for over a decade now."
	.byte WaitForA
	.byte ScrollText
	
	.text "Determined to track him down,"
	.word LoadPortraitalt_1
	.long LoadPortraitalt_2
	.word $001F ; Ced
	.word $0C10 ;y then x
	.byte WaitForA
	.byte ScrollText
	.text "Prince Ced has struck off in the"
	.byte NewLine
	.text "hopes of retrieving his father."
	.byte WaitForA
	.byte ScrollText
	
	.word ClearPortraitalt
	.long $82937A
	.word $0000
	.word ClearPortraitalt
	.long $82937A
	.word $0001
	
	.byte ScrollText
	.text "He has yet to return, and worse yet, Silesse's"
	.byte NewLine
	.text "beloved queen, Erinys, has recently passed"
	.byte ScrollText
	.text "away from heartbreak and terminal illness."
	.byte WaitForA
	.byte ScrollText
	.word LoadPortraitalt_1
	.long LoadPortraitalt_2
	.word $001F ; Ced
	.word $0C10 ;y then x
	.text "This leaves only the young and ill-prepared"
	.byte NewLine
	.text "Princess Fee to govern the Silesse territory,"
	.byte WaitForA
	.byte ScrollText
	.word ClearPortraitalt
	.long $82937A
	.word $0000
	
	.text "and many have begun to take notice."
	.byte NewLine
	.text "Grannvale encroaches on Silesse's soil"
	.byte WaitForA
	.byte ScrollText
	.text "more and more as the weeks pass."
	.byte NewLine
	.text "Commonfolk especially are spared no quarter"
	.byte WaitForA
	.byte ScrollText
	.text "from all this strife; sweeping crop failure"
	.byte NewLine
	.text "has begun to plague Silesse, and many are"
	.byte WaitForA
	.byte ScrollText
	.text "forced to seek jobs elsewhere just to survive."
	.byte NewLine
	.text "In spite of it all, some have perservered."
	.byte WaitForA
	.byte ScrollText
	.text "A number of vigilante groups have sprung up"
	.byte NewLine
	.text "around the country to provide Silessians"
	.byte WaitForA
	.byte ScrollText
	.text "relief- through any means necessary."
	.byte NewLine
	.text "This story follows the exploits of one of"
	.byte WaitForA
	.byte ScrollText
	.word LoadPortraitalt_1
	.long LoadPortraitalt_2
	.word $0001 ;leify-right
	.word $0406 ;y then x
	.text "these groups- Storm Cabal, headed by"
	.byte NewLine
	.text "the son of a Belhalla survivor, Neill..."
	.byte WaitForA
	
	.byte EndText

dialogueChapter01neillseadna
	.byte Right_slot
    .word LoadPortrait
    .word leif_portrait
.text "Seadna! What's cookin'?"
.byte $08
	.byte Left_slot
    .word LoadPortrait
    .word finn_portrait
.text "Not much. No food, remember?"
.byte $08
.byte $04
.text "But I'm sure we'll be treated to a meal"
.byte $02
.text "if we rid these folks of their"
.byte $02
.text "bandit problem!"
.byte $08
.byte $04
.text "...That's what I'm hoping, at least."
.byte $08
.byte Right_slot
.byte $04
.text "Don't go too far out there, you still"
.byte $02
.text "have that scar from when you fell off Pan!"
.byte Left_slot
.byte $04
.text "Hey, that's not my fault!"
.byte $02
.text "He got startled! Happens all the time!"
.byte $08
.byte Right_slot
.byte $04
.text "Haha... I'm just teasing."
.byte $08
.byte $04
.text "Go tear them a new one."
.byte $02
.text "Just don't sacrifice yourself"
.byte $02
.text "for the rest of us."
.byte $08
.byte Left_slot
.byte $04
.text "I'll stick by you,"
.byte $02
.text "if that's what you want..."
.byte $08
.byte Right_slot
.byte $04
.text "Pardon?"
.byte $08
.byte Left_slot
.byte $04
.text "Uhh... see you later! Or sooner!"
.byte $02
.text "I don't know!"
.byte $08
.byte $04
.word ClearPortrait
.byte Right_slot
.byte $04
.text "Man, she's so cool..."
.byte $08
	.byte EndText

dialogueChapter01gazowmnfromhittvanimemobilesuitgundamdoublezeta

	.byte Right_slot
    .word LoadPortrait
    .word finn_portrait
	
	.byte Left_slot
    .word LoadPortrait
    .word Leif_portrait
	.text "Babe, would you still love me,"
	.byte $02
	.text "even if I were..."
	.byte WaitForA
    .byte $04
    .word LoadPortrait
    .word dalsin_portrait
	.text "An AMX-008 Ga-Zowmn introduced"
	.byte $02
	.text "in the hit TV Anime"
	.byte $02
	.text "Mobile Suit Gundam ZZ?"
	.byte $08
	
	.byte Right_slot
	.text "Hmm... Now, if you were an"
	.byte $02
	.text "AMX-006 Gaza-D, I might go out"
	.byte $02
	.text "with you. Otherwise, I'd pass."
	.byte $08
	
	.byte Left_slot
    .byte $04
    .word LoadPortrait
    .word leif_portrait
	.text "Dang..."
	.byte $08
	.byte EndText
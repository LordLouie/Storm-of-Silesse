;text

dialogueChapter02Opening1

.byte Right_slot
.word LoadPortrait
.word largo_portrait

.byte Right_slot
.byte $09 ; font 9(always use font 9)	
.text "Day 4:"
.byte $02
.text "We are en route to cross"
.byte $02
.text "Silesse's borders soon."
.byte $08
.byte $04
.text "I have utmost faith in the"
.byte $02
.text "empire for the task I've been assigned,"
.byte $08
.byte $04
.text "but I would be remiss were I not to"
.byte $02
.text "mention the mounting pressure my team feels."
.byte $08
.byte $04
.text "The citizenry scowl at us on the regular."
.byte $08
.byte $04
.text "The mercenaries hired to protect our cargo"
.byte $02
.text "don't exactly have amicable relations with"
.byte $02
.text "my crew, either."
.byte $08
.byte $04
.text "In order to avoid suspicion, an imperial"
.byte $02
.text "supply train leaving Silesse has transfered"
.byte $02
.text "their supply of children to us."
.byte $08
.byte $04
.text "Our destination is somewhere in the Tofa"
.byte $02
.text "mountain range. This map shows the route,"
.byte $02
.text "but leaves the destination ambiguous."
.byte $08
.byte $04
.text "The details are not my concern."
.byte $08
.byte $04
.text "We have countless weeks of travel ahead"
.byte $02
.text "of us, but today will be the most difficult."
.byte $08
.byte $04
.text "I pray the children stay quiet as we"
.byte $02
.text "pass through the village..."
.byte $08
.byte $04
.text "- General Tavares"
.byte $02
.text "4th Supply Core of the Rotritter"
.byte $08

.byte EndText
	
dialogueChapter02Opening2A

.byte Right_slot
.word LoadPortrait
.word leif_portrait
.byte $09 ; font 9(always use font 9)
.text "This is it. The empire's supply route..."
.byte $08

.byte Left_Slot
.word LoadPortrait
.word osian_portrait
.text "I would advise against travelling"
.byte NewLine
.text "further south, Neill."
.byte NewLine
.text "We are officially in imperial territory."
.byte $08
.byte $04
.text "If we overstep our boundaries,"
.byte $02
.text "we could be swamped by their most"
.byte $02
.text "powerful soldiers very quickly."
.byte $08
.byte $04

.byte Right_slot
.byte $02
.text "Heard you loud and clear."
.byte $08
.byte $04
.text "We'll ambush the first cargo we see"
.byte $02
.text "entering Silesse, take out the"
.byte $02
.text "imperial lackeys guarding it,"
.byte $08
.byte $04
.text "and wheel what we find back here before"
.byte $02
.text "the main force notices. Got it?"
.byte WaitForA

.byte Left_Slot
.byte ScrollText
.word LoadPortrait
.word finn_portrait
.text "Sounds like a plan. I can't wait to beat"
.byte NewLine
.text "the tar out of those Grannvale creeps!"
.byte WaitForA

.byte Right_slot
.byte ScrollText
.word LoadPortrait
.word halvan_portrait
.text "Whoa! Slow your roll, Seadna!"
.byte $02
.text "We're just here to take what we need,"
.byte $02
.text "not get blood all over our hands!"
.byte $08
.byte $04
.byte Left_Slot
.byte ScrollText
.text "Hehe... got the better of myself there..."
.byte $02
.text "But... yeah..."
.byte $02
.text "All we have to do... is lie in wait..."
.byte $08

.byte EndText
	
dialogueChapter02Opening2B
	
.byte Right_slot
.word LoadPortrait
.word finn_portrait

.byte Left_slot
.word LoadPortrait
.word leif_portrait2
.byte $09 ; font 9(always use font 9)
.text "Seadna, look here! That village is being raided!"
.byte WaitForA

.byte Right_slot
.text "What's this? These pirates answer to a man"
.byte NewLine
.text "named Lifis, as I recall—but they've been quiet"
.byte NewLine
.text "for so long, I thought they might've disbanded."
.byte WaitForA

.byte Left_slot
.byte ScrollText
.text "Seems they have a macabre idea of a reunion,"
.byte NewLine
.text "then. Ready yourself, Seadna."
.byte NewLine
.text "We cannot stand by and allow this to happen!"
.byte WaitForA

.byte EndText

dialogueChapter02Opening2C

.byte Right_slot
.word LoadPortrait; load portrait
.word leif_portrait2
.byte $09 ; font 9(always use font 9)
.text "Is that... No! Another pirate raid?!"
.byte NewLine
.text "Is no place safe anymore?"
.byte WaitForA
.byte ScrollText
.text "Wait, those are the colors that Lifis' gang"
.byte NewLine
.text "once wore..."
.byte WaitForA
.byte ScrollText
.text "Well, let's give our old friend a proper greeting!"
.byte NewLine
.text "Everyone, to arms!"
.byte NewLine
.text "We'll not stand by and allow this to happen!"
.byte WaitForA

.byte EndText
	
dialogueChapter02WorldMap1

.word LoadPortraitalt_1
.long LoadPortraitalt_2
.word $0078 ;raydrik
.word $0207 ;y then x
.text "Disregarding any sense of"
.word LoadPortraitalt_1
.long LoadPortraitalt_2
.word $0313 ;nanna
.word $0A0B ;y then x
.byte NewLine
.text "self preservation,"
.byte WaitForA
.byte ScrollText
.text "Neill and his friend journey to the"
.byte NewLine
.text "Zaxon-Lubeck border."
.byte WaitForA
.byte ScrollText
.text "Though low on provisions, they are"
.byte NewLine
.text "brimming with hope..."
.byte WaitForA
.byte ScrollText
.text "...And perhaps desperation as well."
.byte WaitForA
.byte ScrollText
.text "Fortunately for Storm Cabal,"
.byte NewLine
.text "a caravan of imperial troops arrives,"
.byte WaitForA
.byte ScrollText
.text "right on cue..."

.word ClearPortraitalt
.long $82937A
.word $0000
.byte ScrollText
.word ClearPortraitalt
.long $82937A
.word $0003
.byte ScrollText
.word ClearPortraitalt
.long $82937A
.word $0001
.byte ScrollText

.byte EndText
	
dialogueChapter02Ending1Gaiden

.byte Right_slot
.word LoadPortrait
.word leif_portrait

.byte Left_slot
.word LoadPortrait
.word augustus_potrait
.byte $09 ; font 9(always use font 9)
.text "placeholduh"
.byte WaitForA

.byte EndText

dialogueChapter02Ending1Regular

.byte Right_slot
.word LoadPortrait
.word leif_portrait
.byte $09 ; font 9(always use font 9)
.text "Excellent work, team! We took a colossal"
.byte $02
.text "risk, but it seems to have paid off."
.byte $08

.byte Left_slot
.word LoadPortrait
.word halvan_portrait
.text "Let's get the cargo somewhere safe."
.byte $02
.text "We don't want to attract any more"
.byte $02
.text "attention than we already have."
.byte $08

.byte Left_slot
.byte $04
.word LoadPortrait
.word boy_portrait
.text "Ma... Pa..."
.byte $08

.byte Right_slot
.byte $04
.text "There are children here?!"
.byte $02
.text "What are they doing in a cage?"
.byte $08

.byte Left_slot
.byte $04
.word LoadPortrait
.word halvan_portrait
.text "..."
.byte $08

.byte Right_slot
.byte $04
.text "Barra? Your face... this must be"
.byte $02
.text "something grim, isn't it?"
.byte $08

.byte Left_slot
.byte $04
.text "It's just as I suspected..."
.byte $02
.text "They're trying to conduct"
.byte $02
.text "child hunts in Silesse."
.byte $08

.byte Right_slot
.byte $04
.text "...Child hunts?" 
.byte $02
.text "Do I dare ask what those are?"
.byte $08

.byte Left_slot
.byte $04
.text "It's one of the empire's"
.byte $02
.text "more-grizzly activities."
.byte $08
.byte $04
.text "They abduct children barely old enough to"
.byte $02
.text "read, and indoctrinate them into a cult"
.byte $02
.text "that preaches hatred like a virtue..."
.byte $08
.byte $04
.text "Tadhg and I visited Grannvale"
.byte $02
.text "a few years ago, and bore witness to"
.byte $02
.text "the atrocity of it all."
.byte $08

.byte Right_slot
.byte $04
.text "That was when you and father left me"
.byte $02
.text "in charge to go find medicine"
.byte $02
.text "for mother, right?"
.byte $08

.byte Left_slot
.byte $04
.text "Indeed, it was..."
.byte $08
.byte $04
.text "You're very fortunate to have"
.byte $02
.text "grown up in a place spared"
.byte $02
.text "from Loptyr's influence, Neill."
.byte $08
.byte $04
.text "From the looks of it, though..." 
.byte $02
.text "We won't be spared for much longer."
.byte $08

.byte Right_slot
.byte $04
.text "Is there nothing we can do about this?"
.byte $02
.text "I would hate to stand idle and allow"
.byte $02
.text "the empire to just consume Silesse..."
.byte $08

.byte Left_slot
.byte $04
.text "If we were a fully-fledged army, maybe,"
.byte $02
.text "but as we are now, there's no chance."
.byte $08
.byte $04
.text "You've seen it firsthand- we struggled"
.byte $02
.text "mightly just to take down an armed"
.byte $02
.text "transport."
.byte $08
.byte $04
.text "At the very least, there's one good"
.byte $02
.text "thing that is within our power to "
.byte $02
.text "accomplish-"
.byte $08
.byte $04
.text "Returning these children to their parents."
.byte $08

.byte Right_slot
.byte $04
.text "We don't even know where they're from..."
.byte $02
.text "I suppose we could ask them?"
.byte $08

.byte Left_slot
.byte $04
.word LoadPortrait
.word finn_portrait

.byte Right_slot
.byte $04
.text "Seadna, I don't know how to put this..."
.byte $02
.text "I'm not very good at consoling children."
.byte $02
.text "Could you...?"
.byte $08

.byte Left_slot
.text "I can certainly try."
.byte $08

.byte Right_slot
.byte $04
.word LoadPortrait
.word boy_portrait
.text "*sniff* I jus' wanna go home..."
.byte $02
.text "Those scary people... they took us..."
.byte $08

.byte Left_slot
.byte $04
.text "There, there... deep breaths..."
.byte $02
.text "You're safe, now..."
.byte $02
.text "I'm going to ask you a question."
.byte $08

.byte Right_slot
.byte $04
.text "Mhm..."
.byte $08

.byte Left_slot
.byte $04
.text "Can you tell us where you live?"
.byte $08

.byte Right_slot
.byte $04
.text "A town... called Skanor."
.byte $02
.text "We were playin' out in the forest..."
.byte $08
.byte $04
.text "Then, a bunch of armored men found us."
.byte $02
.text "We were kidnapped."
.byte $08
.byte $04
.text "We cried for days, but no one came..."
.byte $02
.text "*sniff*"
.byte $08

.byte Left_slot
.byte $04
.text "Don't worry... we'll get you home."
.byte $02
.text "Safe... and sound..."
.byte $08

.byte Right_slot
.byte $04
.text "T-thank you, lady! I uh-pree..."
.byte $02
.text "uh-pree-sh... appreciate it!"
.byte $08

.byte Left_slot
.byte $04
.word LoadPortrait
.word leif_portrait
.text "Well, I think we know where we're"
.byte $02
.text "headed now."
.byte $08
.byte $04
.text "Otto, how much food is there in"
.byte $02
.text "the cargo?"
.byte $08

.byte Right_slot
.byte $04
.word LoadPortrait
.word osian_portrait
.text "By my estimate, enough provisions"
.byte $02
.text "to last us for several weeks."
.byte $08

.byte Left_slot
.byte $04
.text "Alright, everyone!"
.byte $02
.text "We march towards Skanor,"
.byte $02
.text "starting tomorrow!"
.byte $08

.byte EndText

supplyescapes
.byte Right_slot
.word LoadPortrait
.word leif_portrait
.byte $09 ; font 9(always use font 9)
.text "Argh! I'm such a failure..."
.byte $08

.byte EndText

edithwhines
.byte Right_slot
.word LoadPortrait
.word dagdar_portrait
.byte $09 ; font 9(always use font 9)
.text "*yawn* Are we there yet?"
.byte $08

.byte Left_slot
.word LoadPortrait
.word largo_portrait

.text "Silence, sellsword! You will only talk"
.byte $02
.text "when you are being addressed!"
.byte $08
.byte $04
.word ClearPortrait
.word RetractBox

.byte Right_slot
.byte $04
.text "(Sheesh... you imperial louts oughta"
.byte $02
.text "treat your hired swords better...)"
.byte $08
.byte $04
.text "(It's not like we're protecting your"
.byte $02
.text "sorry asses out here, or anything...)"
.byte $08
.byte $04
.text "(Come to think of it, this whole job has"
.byte $02
.text "felt super weird... what do they need to" 
.byte $02
.text "be guarded from?)"
.byte $08
.byte $04
.text "(...This stinks. Something about these"
.byte $02
.text "guys is seriously bad news.)"
.byte $08
.byte $04
.text "(I need to get out of here. I bet they"
.byte $02
.text "wouldn't notice if one of their mercs"
.byte $02
.text "went missing in the heat of battle...)"
.byte $08
.byte $04
.text "(Pfft, loyalty. I was paid up-front!"
.byte $02
.text "I can quit whenever I want to!)"
.byte $08

.byte EndText

geraldappears
.byte Right_slot
.word LoadPortrait
.word eyvel_portrait

.text "Soldiers come in... crops go out..."
.byte $02 
.text "Day... after day... after day..."
.byte $08
.byte $04
.text "Damnable Grannvalians..."
.byte $02
.text "How great is the depth of their greed?"
.byte $08
.byte $04
.text "I cannot abide by them any longer."
.byte $02
.text "Action, swift, must be taken."
.byte $08
.byte $04
.text "...But what chance do I alone have"
.byte $02
.text "against an entire army?"
.byte $08
.byte $04
.text "Hmm..."
.byte $02
.text "It appears that vigilante group is"
.byte $02
.text "gearing up to attack a transport..."
.byte $08
.byte $04
.text "Bah, I've seen many a sort try that."
.byte $02
.text "Never once have they succeeded."
.byte $08
.byte $04
.text "If I remain idle, though... nothing"
.byte $02
.text "will change."
.byte $08
.byte $04
.text "I haven't done a thing... not since..."
.byte $02
.text "that day..."
.byte $08
.byte $04
.text "Perish the thought. I will go to them..."
.byte $08

.byte EndText

geraldrecruitment
.byte Right_slot
.word LoadPortrait
.word eyvel_portrait

.text "I am Gerald, armor of the arcane!"
.byte $02
.text "Take this aid I bring to you!"
.byte $08


.byte Left_slot
.word LoadPortrait
.word leif_portrait
.text "Whoa! What the hell are you thinking,"
.byte $02
.text "sneaking up on us like that?"
.byte $02
.text "You coulda blown our cover!"
.byte $08
.byte $04

.byte Right_slot
.byte $04
.text "Do you not understand? I am here to"
.byte $02
.text "pledge myself to your cause!"
.byte $08

.byte Left_slot

.text "Yeah, yeah, I heard that much..."
.byte $02
.text "Ah, excuse my temper there. I'm just"
.byte $02
.text "a little on edge, that's all."
.byte $08
.byte $04

.text "Thing is... I'm not sure I trust you."
.byte $08

.byte Right_slot
.byte $04
.text "I do not expect you to."
.byte $02
.text "My actions on the battlefield shall"
.byte $02
.text "speak to my purity of heart."
.byte $08

.byte Left_slot
.byte $04
.text "Is that so? I think we have a deal,"
.byte $02
.text "then."
.byte $08
.byte $04

.text "If you can hold your own out there,"
.byte $02
.text "we'll accept you as a permanent"
.byte $02
.text "member of Storm Cabal."
.byte $08

.byte Right_slot
.byte $04
.text "I have yearned to fight for a cause ever"
.byte $02
.text "since Silesse first fell to Grannvale."
.byte $02
.text "I shall not fail you... er..."
.byte $08

.byte Left_slot
.byte $04
.text "I look forward to your performance, Gerald."
.byte $02
.text "The name's Neill, by the way..."
.byte $08

.byte EndText

edithrecruitment

.byte Right_slot
.word LoadPortrait
.word dagdar_portrait

.byte Left_slot
.word LoadPortrait
.word halvan_portrait

.text "*thud*"
.byte $08

.byte Right_slot
.text "Waaaaah! A bandit!"
.byte $02
.text "I'll tear you to shreds!"
.byte $02
.text "Taste the howling gale of Scir-"
.byte $08

.byte Left_slot
.byte $04
.text "Who you callin' a bandit?"

.byte Right_slot
.byte $04
.text "Why, you of course, you bandit!"
.byte $02
.text "No one that big would be carryin'"
.byte $02
.text "around an axe if they weren't a bandit!"
.byte $08

.byte Left_slot
.byte $04
.text "...I feel like you've just gravely"
.byte $02
.text "insulted every lumberjack in all of Jugdral."
.byte $08

.byte Right_slot
.byte $04
.text "You talk way too witty to be a bandit though..."
.byte $08

.byte Left_slot
.byte $04
.text "That's because I'm not a bandit!"
.byte $02
.text "I fight for Storm Cabal!"
.byte $02
.text "We're a vigilantee group dedicated to-"
.byte $08

.byte Right_slot
.byte $04
.text "Pssh... a vigilantee group? Puh-leez!"
.byte $02
.text "What kind of corny charity are you"
.byte $02
.text "running here?"
.byte $08

.byte Left_slot
.byte $04
.text "A damn good one, that's what."
.byte $02
.text "Wait..."
.byte $02
.text "Aren't you supposed to be with the empire?"
.byte $08

.byte Right_slot
.byte $04
.text "Oh, those droners?"
.byte $02
.text "I've washed my hands of them."
.byte $08
.byte $04
.text "I figure I'll use this money"
.byte $02
.text "to buy some food, maybe crash at"
.byte $02
.text "someone's place in Silesse..."
.byte $08

.byte Left_slot
.byte $04
.text "How about you team up with us instead?"
.byte $02
.text "We're about to go in 'n fight them"
.byte $02
.text "imperial scum ourselves."
.byte $08

.byte Right_slot
.byte $04
.text "I don't see harm in getting a little bit of"
.byte $02
.text "payback... hehe..."
.byte $08

.byte EndText

braveswordhouse

.byte Right_slot
.word LoadPortrait
.word collar_portrait

.text "Who could be knocking on my door"
.byte $02
.text "at this hour?"
.byte $08
.byte $04
.text "Ah, you must be with the supply corps!"
.byte $02
.text "I have a friend in the Rotritter you were"
.byte $02
.text "bidden to deliver this to."
.byte $08
.byte $04
.text "This parcel contains a rare sword."
.byte $02
.text "I know you're dying to take a peak, but"
.byte $02
.text "do try to restrain yourself."
.byte $08
.byte $04
.text "After all, going through other people's mail"
.byte $02
.text "isn't too polite! Ha ha..."
.byte $08
.byte $04
.text "Oh? You wish to learn more about the recipient?"
.byte $08
.byte $04
.text "She's this dame called Ellis..."
.byte $02
.text "Her hair is as vibrant red as Fjalar herself..."
.byte $08
.byte $04
.text "The way she gazes at people is so intense,"
.byte $02
.text "yet it belies her depth of kindness"
.byte $02
.text "and maturity..."
.byte $08
.byte $04
.text "I joined the imperial academy just so"
.byte $02
.text "that I could be closer to her..."
.byte $08
.byte $04
.text "I want to take the next step."
.byte $02
.text "This parcel is where I'll start."
.byte $02
.text "I can't thank you enough for doing this..."
.byte $08
.byte $04
.text "Move along, now!"
.byte $08
.byte EndText


sailanescrollhouse
.byte Right_slot
.word LoadPortrait
.word beardedman_portrait
.text "Silesse as we know it was founded"
.byte $02
.text "about 150 years ago."
.byte $08
.byte $04
.text "The newly formed government drafted a"
.byte $02
.text "book detailing the country's early"
.byte $02
.text "legislation and practices."
.byte $08
.byte $04
.text "Unfortunately for Crusader Ced and his"
.byte $02
.text "disciples, an unscrupulous cretin stole"
.byte $02
.text "the book and auctioned off every page."
.byte $08
.byte $04
.text "I've spent much of my life collecting"
.byte $02
.text "pieces of the Silesse Codex and trying"
.byte $02
.text "to put it back together."
.byte $08
.byte $04
.text "I've heard rumors that the book's pages"
.byte $02
.text "somehow attract each other."
.byte $02
.text "I want to put that to the test."
.byte $08
.byte $04
.text "Upon you, I bestow one page of the codex."
.byte $02
.text "Its magical powers shall protect you"
.byte $02
.text "from harm."
.byte $08
.byte $04
.text "Once you have every piece together,"
.byte $02
.text "I'll come find you."
.byte $02
.text "Until then... stay safe!"
.byte $08

.byte EndText

silverlancehouse

.byte Right_slot
.word LoadPortrait
.word youngman2_portrait

.text "Hey... can you keep a secret?"
.byte $02
.text "I... think I killed someone."
.byte $08
.byte $04
.text "Ok, I know that sounds bad,"
.byte $02
.text "but hear me out!"
.byte $08
.byte $04
.text "I was fighting with my neighbour"
.byte $02
.text "over this silver stick we saw"
.byte $02
.text "lying in the dirt."
.byte $08
.byte $04
.text "He claimed he saw it first,"
.byte $02
.text "and then we started pulling on it."
.byte $08
.byte $04
.text "...I tripped over a rock and speared"
.byte $02
.text "him right in the chest."
.byte $08
.byte $04
.text "Buried him as best I could..."
.byte $02
.text "As long as I have this stick though..."
.byte $02
.text "He'll haunt me for the rest 'o my days..."
.byte $08
.byte $04
.text "Here y'are. It's a good weapon..."
.byte $02
.text "Maybe... a little too good..."
.byte $08

.byte EndText

javelinhouse

.byte Right_slot
.word LoadPortrait
.word braidedgirl_portrait
.text "Throwing javelins is a blast!"
.byte $02
.text "You really oughta try it!"
.byte $02
.text "Here, take one! Watch how far it flies!"
.byte $08

.byte EndText

purewaterhousenormal
.byte Right_slot
.text "...Who lives like this?"
.byte $08

.byte EndText

purewaterhousegerald

.byte Right_slot
.word LoadPortrait
.word eyvel_portrait
.text "Making sure the chest is still here..."
.byte $02
.text "Ah, yes... My pure water..."
.byte $02
.text "To think I left home without this..."
.byte $08
.byte $04
.text "May the contents of this vial enhance"
.byte $02
.text "my powers so that none bar my path!"
.byte $08

.byte EndText

wreckageexamination
.byte Right_slot
.text "Was something supposed to be here?"
.byte $08

.byte EndText










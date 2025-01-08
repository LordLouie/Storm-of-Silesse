dialogueChapter03WorldMap1

.text "Our intrepid heroes are just"
.word LoadPortraitalt_1
.long LoadPortraitalt_2 
.word $0101 ;leify-left
.word $0A17 ;y then x
.byte NewLine
.text "a stone's throw away from Skanor."
.byte WaitForA
.byte ScrollText
.byte EndText

dialogueChapter03WorldMap2

.text "They set up camp in an abandoned town,"
.byte NewLine
.text "planning to resume travel in the morning."
.byte WaitForA
.byte ScrollText
.text "Unfortunately for Neill and his friends,"
.byte WaitForA
.byte ScrollText
.text "there would be no respite from"
.byte NewLine
.text "those who wished them harm..."
.byte WaitForA
.byte EndText

dialogueChapter03OpeningA1

.byte Right_slot
.word LoadPortrait
.word dagdar_portrait

.byte Left_slot
.word LoadPortrait
.word halvan_portrait

.text "Look's like the sun has set."
.byte $02
.text "This is when the nastier sort of"
.byte $02
.text "thugs begin to stir."
.byte $08
.byte $04
.text "You're on guard duty for the next hour."
.byte $02
.text "We sleep in shifts, got it?"
.byte $08

.byte Right_slot

.text "You can count on me!"
.byte WaitForA
.byte EndText

dialogueChapter03OpeningA2

.byte Right_slot
.word LoadPortrait
.word dagdar_portrait

.text "(I have half a mind to just ditch"
.byte $02
.text "these guys... but they don't"
.byte $02
.text "seem so bad? It's weird.)"
.byte $08
.byte $04
.text "(Either way... gotta stay on"
.byte $02
.text "the lookout for bad-)"
.byte WaitForA
.byte EndText

dialogueChapter03OpeningA3

.byte Right_slot
.word LoadPortrait
.word dagdar_portrait

.text "(guys...)"
.byte $08
.byte $04
.text "Keep your distance, mauraders!"
.byte $02
.text "You dwell on the ground of the"
.byte $02
.text "famed mage, Edith Othello!"
.byte $08
.byte $04
.text "One wrong step, and you're out!"
.byte $08
.byte EndText

dialogueChapter03OpeningA4

.byte Right_slot
.word LoadPortrait
.word dagdar_portrait

.byte Left_slot
.word LoadPortrait
.word bandit_portrait

.text "Ksshhaaahh..."
.byte $08

.byte Right_slot
.text "Eek!"
.byte $08

.byte Left_slot
.byte $04
.text "Foolish child..."
.byte $02
.text "This is MY ground."
.byte $08
.byte $04
.text "The only way out of here is"
.byte $02
.text "to be cut to ribbons..."
.byte $08

.byte right_slot
.byte $04
.text "Augh! Your breath smells like"
.byte $02
.text "horse shit!"
.byte $08

.byte left_slot
.byte $04
.text "You've failed your duty," 
.byte $02
.text "your friends..." 
.byte $08
.byte $04
.text "However, I see fit to give" 
.byte $02
.text "you a new purpose-"
.byte $08
.byte $04
.text "You shall be the bait which" 
.byte $02
.text "draws the others to me..."
.byte $08

.byte right_slot
.byte $04
.text "Hey-! Let go of me-!"
.byte $08
.byte EndText

dialogueChapter03OpeningA5

.byte Right_slot
.word LoadPortrait
.word bandit_portrait

.byte Left_slot
.word LoadPortrait
.word bandit2_portrait

.text "Facthna..."
.byte $02
.text "you disarmed her, right?"
.byte $08
.byte $04
.byte Right_slot
.text "..."
.byte $08
.byte $04

.byte Left_slot
.word LoadPortrait
.word dagdar_portrait

.text "Ha, you're a capital S sucker!" 
.byte $02
.text "I can deliver you all to tartarus," 
.byte $02
.text "even from the confines of this room!"
.byte $08
.byte $04

.byte Right_slot
.text "Cripes! Change of plans, everyone!" 
.byte $02
.text "Shoot arrows at the wench until"
.byte $02
.text "she stops moving!"
.byte $08
.byte $04

.byte Left_slot
.text "You never learn, do ya?" 
.byte $02
.text "Here it comes-!"
.byte $08
.byte $04
.byte EndText

dialogueChapter03OpeningA6

.byte Right_slot
.word LoadPortrait
.word halvan_portrait

.text "What's that racket?"
.byte $02
.text "Edith?"
.byte $02
.text "..."
.byte $08
.byte $04
.text "Neill, get up!"
.byte $02
.text "We've been discovered by bandits!"
.byte $08

.byte Left_slot
.word LoadPortrait
.word Leif_portrait

.text "Bandits, again?"
.byte $02
.text "Its been one of those days..."
.byte $08
.byte $04
.text "Not really in the best shape to"
.byte $02
.text "fight, but I know, life or death"
.byte $02
.text "'n all that."
.byte $08
.byte $04
.text "Grab your weapons, everyone!"
.byte $02
.text "Edith can't hold them off forever!"
.byte $08
.byte EndText

dialogueChapter03OpeningB1

.byte Left_slot
.word LoadPortrait
.word halvan_portrait

.byte Right_slot
.word LoadPortrait
.word Leif_portrait

.text "I'm turning in for the night."
.byte $02
.text "You coming to bed, Barra?"
.byte $08

.byte Left_slot
.text "I'm afraid not."
.byte $02
.text "Even in a deserted fortress, someone" 
.byte $02
.text "has to keep a lookout for trouble."
.byte $08

.byte Right_slot
.byte $04
.text "I getcha..." 
.byte $02
.text "I really appreciate what you do"
.byte $02
.text "for us, Barra."
.byte $08
.byte $04
.text "Just... don't burn yourself out."
.byte $08

.byte Left_slot
.byte $04
.text "I'm working well within"
.byte $02
.text "my limits, Neill."
.byte $08

.byte Right_slot
.byte $04
.text "How are you so sure?"
.byte $08
.byte $04
.text "Ever since father died, You've"
.byte $02
.text "been working yourself ragged!"
.byte $08
.byte $04
.text "You buy the food, you recruit"
.byte $02
.text "new blood, you draw the maps"
.byte $02
.text "and draft all of our plans."
.byte $08
.byte $04
.text "I'm supposed to be the leader,"
.byte $02
.text "yet you're the one doing all of" 
.byte $02
.text "the heavy lifting..."
.byte $08
.byte $04
.text "What am I... but a burden to be"
.byte $02
.text "accounted for?"
.byte $08

.byte Left_slot
.byte $04
.text "The worst thing about you, Neill..."
.byte $02
.text "Is that you always sell yourself short."
.byte $08
.byte $04
.text "If I didn't have your support every"
.byte $02
.text "step of the way, I'd have keeled over"
.byte $02
.text "months ago."
.byte $08
.byte $04
.text "You put this twisted idea in my head..."
.byte $02
.text "Someday..."
.byte $02
.text "Things here'll get better."
.byte $08
.byte $04
.text "Everyone'll have a roof over their head..."
.byte $02
.text "Crops to spare..."
.byte $08
.byte $04
.text "Hell, maybe we'd be able to"
.byte $02
.text "take the fight to the empire."
.byte $08
.byte $04
.text "That's a long way's off..."
.byte $02
.text "but with you leadin' Storm Cabal?"
.byte $02
.text "Th'day only comes quicker."
.byte $08

.byte Right_slot
.byte $04
.text "I have a lot of things to think about..."
.byte $08

.byte Left_slot
.byte $04
.text "Save it for tomorrow. Try to catch"
.byte $02
.text "as much shut eye as you can."
.byte $08

.byte Right_slot
.byte $04
.text "As much as I can..."
.byte $02
.text "You got it..."
.byte $08

.byte $08
.byte EndText


dialogueChapter03OpeningB2

.byte Right_slot
.word LoadPortrait
.word halvan_portrait

.word $1200
.byte 5
.text "..."
.word $1D00
.byte 60
.byte $02
.word $1200
.byte 2
.text "I know you're behind me."
.byte $08
.byte EndText

dialogueChapter03OpeningB3

.byte Right_slot
.word LoadPortrait
.word halvan_portrait

.byte Left_slot
.word LoadPortrait
.word bandit_portrait


.text "Hark! You're keener than the last"
.byte $02
.text "bunch of fools I cut up..."
.byte $08

.byte Right_slot
.text "Don't get the wrong idea."
.byte $02
.text "We're just visiting."
.byte $08
.byte $04
.text "Make a move on my friends, though,"
.byte $02
.text "and I'll cave your skull in."
.byte $08

.byte Left_slot
.byte $04
.text "Feisty... I like that..."
.byte $08
.byte $04
.text "Stepping on my turf, though..."
.byte $02
.text "I take that a bit more personally."
.byte $08
.byte $04
.text "You ain't livin' through the night"
.byte $02
.text "unless you kill me first..."
.byte $08

.byte Right_slot
.byte $04
.text "If that's what it takes, so be it."
.byte $08
.byte $04
.text "Neill!"
.byte $08
.byte EndText

dialogueChapter03OpeningB4

.byte Right_slot
.word LoadPortrait
.word leif_portrait

.text "Huh? Barra... who are these..."
.byte $08

.byte Left_slot
.word LoadPortrait
.word halvan_portrait
.text "Murderers."
.byte $08
.byte $04
.text "Get everyone you can, we're gonna"
.byte $02
.text "to be fighting till daybreak."
.byte $02
.text "On the double!"
.byte $08
.word ClearPortrait
.word RetractBox

.byte Right_slot
.byte $04
.text "Yes, sir!"
.byte $08
.byte $04
.word ClearPortrait
.word RetractBox
.word LoadPortrait
.word bandit_portrait
.text "So this is our prey..."
.byte $02
.text "Most interesting..."
.byte $08
.byte $04
.text "Meet me inside..."
.byte $02
.text "If you live long enough, that is..."
.byte $02
.text "Ksshhaaahh..."
.byte $08
.byte EndText

dialogueChapter03empirestrikesback1

.byte Left_slot
.word LoadPortrait
.word galzus_portrait

.byte Right_slot
.word LoadPortrait
.word alphand_portrait

.text "I assume you're aware of our"
.byte $02
.text "plans, Agnes?"
.byte $08

.byte Left_slot
.text "...Why them?"
.byte $08

.byte Right_slot
.byte $04
.text "We cannot leave these rebels alive..."
.byte $02
.text "The knowledge they possess is far too"
.byte $02
.text "valuable."
.byte $08
.byte $04
.text "It risks jeopardizing our entire"
.byte $02
.text "operation."
.byte $08
.byte EndText

dialogueChapter03empirestrikesback2

.byte Left_slot
.word LoadPortrait
.word galzus_portrait

.byte Right_slot
.word LoadPortrait
.word alphand_portrait

.text "Heh. It appears they are"
.byte $02
.text "already occupied..."
.byte $08
.byte $04
.text "Your orders are to sneak past"
.byte $02
.text "this commotion and slaughter them."
.byte $08
.byte $04
.text "For your part in this cover up,"
.byte $02
.text "Lord Durchval shall reward you"
.byte $02
.text "handsomely."
.byte $08
.byte $04
.text "Do you understand?"
.byte $08

.byte Left_slot
.text "I have no further questions."
.byte $08

.byte Right_slot
.byte $04
.text "Do not disappoint us..."
.byte $08
.byte EndText

dialogueChapter03neillagnes1

.byte Right_slot
.word LoadPortrait
.word leif_portrait

.text "Who goes there?!"
.byte $08

.byte Left_slot
.word LoadPortrait
.word galzus_portrait

.text "The one who shall take your head."
.byte $08

.byte Right_slot
.byte $04
.text "An assassin, huh?"
.byte $02
.text "No doubt you're on the empire's payroll!"
.byte $08
.byte $04
.text "If you want your precious goods back,"
.byte $02
.text "you'll have to knock me dead first!"
.byte $08

.byte EndText

dialogueChapter03neillagnes2

.byte Right_slot
.word LoadPortrait
.word galzus_portrait

.byte Left_slot
.word LoadPortrait
.word leif_portrait

.text "Huhhh... I would've been a goner..."
.byte $02
.text "You... you went easy on me..."
.byte $02
.text "Why...?"
.byte $08

.byte Right_slot
.text "Something stayed my hand."
.byte $02
.text "You weren't ready to face me."
.byte $02
.text "I wasn't ready to face you either..."
.byte $08

.byte Left_slot
.byte $04
.text "We've met before... haven't we?"
.byte $02
.text "I... I know you-!"
.byte $08

.byte Right_slot
.byte $04
.text "I'm sorry..."
.byte $02
.text "We weren't supposed to see each"
.byte $02
.text "other like this..."
.byte $08

.byte Left_slot
.byte $04
.text "Wait!"
.byte $08

.byte EndText

dialogueChapter03Ending1

.byte Right_slot
.word LoadPortrait
.word leif_portrait

.text "Edith! Thank the heavens,"
.byte $02
.text "you're alright!"
.byte $08

.byte Left_slot
.word LoadPortrait
.word dagdar_portrait
.text "Oh, it was no trouble."
.byte $02
.text "Bandits waste themselves harder"
.byte $02
.text "than I ever could."
.byte $08
.byte $04
.text "I had my doubts about this cabal thing,"
.byte $02
.text "But you were all surprisingly fierce"
.byte $02
.text "out there. "
.byte $08
.byte $04
.text "Before this ambush deal started, I was"
.byte $02
.text "actually considering leaving your"
.byte $02
.text" goody two-shoes group."
.byte $08
.byte $04
.text "Now that I've seen what you guys"
.byte $02
.text "get up to..."
.byte $08
.byte $04
.text "I think I'll stick around."
.byte $02
.text "It's the least I can do to repay you."
.byte $08

.byte Right_slot
.byte $04
.text "Wonderful."
.byte $02
.text "I wouldn't be too pressured to stay"
.byte $02
.text "if I were you, though."
.byte $08
.byte $04

.text "We can barely scrape by long enough"
.byte $02
.text "to keep everyone fed."
.byte $08
.byte $04
.text "Wages are paltry, assuming we even have"
.byte $02
.text "gold to distribute in the first place."
.byte $08
.byte $04

.byte Left_slot
.byte $04
.text "Wages, bah! Who needs those?"
.byte $02
.text "With friends like you around, we'll"
.byte $02
.text "be raking in the dough someday!"
.byte $08
.byte $04

.text "As of now, I'm making an investment"
.byte $02
.text "towards the future I want to see."
.byte $02
.text "Here's a bag of gold."
.byte $08
.byte $04

.byte Right_slot
.byte $04
.text "Whoa... there's gotta be at least 4000 in here!"
.byte $02
.text "Is this your entire savings?"
.byte $08

.byte Left_slot
.text "Pretty much. When I was high-tailing it"
.byte $02
.text "from those empire jerks, I made off with"
.byte $02
.text "a few extra coins."
.byte $08
.byte $04

.text "Greed has always been one of my more"
.byte $02
.text "pervasive sins..."
.byte $08
.byte $04

.byte Right_slot
.byte $04
.text "I... can't thank you enough, Edith."
.byte $08

.byte EndText

dialogueChapter03Ending2A
.byte Right_slot
.word LoadPortrait
.word leif_portrait
.text "Goodness... I'm exhausted..."
.byte $02
.text "Was Silesse's crime rate always this high?"
.byte $02
.text "I can hardly keep my eyes open..."
.byte $08

.byte Left_slot
.word LoadPortrait
.word halvan_portrait
.text "Neill... who's protecting the children?"
.byte $08
.byte Right_slot
.byte $04
.text "Oh, gods!"
.byte $02
.text "I completely forgot about them!"
.byte $02
.text "Hurry, Barra!"
.byte $08

dialogueChapter03Ending2B
.byte Right_slot
.word LoadPortrait
.word leif_portrait
.text "...Phew. They're sound asleep."
.byte $02
.text "We'll reach Skanor tomorrow."
.byte $08

.byte Left_slot
.word LoadPortrait
.word halvan_portrait
.text "Aye sir!"
.byte $08
.byte EndText

dialogueChapter03ExceptEdithDied
.byte Right_slot
.word LoadPortrait
.word leif_portrait
.text "..."
.byte $08

.byte Left_slot
.word LoadPortrait
.word halvan_portrait
.text "..."
.byte $08
.byte $04
.text "Let's give her a proper burial."
.byte $02
.text "It's the least we can do for her now."
.byte $08

.byte Right_slot
.byte $04
.text "..."
.byte $08

.byte Left_slot
.byte $04
.text "It wasn't your fault, Neill."
.byte $02
.text "It wasn't anyone's fault."
.byte $02
.text "These things just..."
.byte $08
.byte $04
.text "..."
.byte $08
.byte EndText













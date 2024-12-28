dialogueChapter04Opening1

.byte Right_slot
.word LoadPortrait
.word amalda_portrait

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
.text "I thought Ilse here could use a hand,"
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
.word amalda_portrait
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

dialogueChapter04Opening2
.byte right_slot
.word LoadPortrait
.word leif_portrait

.byte Left_slot
.word LoadPortrait
.word amalda_portrait

.byte right_slot

.text "We hijacked an imperial supply,"
.byte $02
.text "and found more than we bargained for."
.byte $08
.byte $04
.text "The empire has been abducting children"
.byte $02
.text "for some kind of religious sacrifice."
.byte $02
.text "It's too repulsive for words..."
.byte $08

.byte Left_slot
.text "I'm speechless..."
.byte $02
.text "May the gods bless thee for your"
.byte $02
.text "acts of kindness."
.byte $08
.byte $04
.text "This town would have no future if"
.byte $02
.text "its youth were fed to Loptous."
.byte $08

.byte right_slot
.byte $04
.text "The part that hurts me the most is"
.byte $02
.text "knowing the empire likely has way"
.byte $02
.text "more kids captured somewhere."
.byte $08
.byte $04
.text "And they're stealing our food"
.byte $02
.text "on top of that!"
.byte $08
.byte $04
.text "They're bleeding us dry, and once"
.byte $02
.text "we're too weak to fight back,"
.byte $02
.text "they'll come in 'n conquer us!"
.byte $08
.byte $04
.text "How can we ever hope to stop them?!"
.byte $08
.byte Left_slot
.byte $04
.text "It's quite the connundrum..."
.byte $02
.text "With your small force, fighting against"
.byte $02
.text "the empire would only lose ground."
.byte $08
.byte $04
.text "But if you were to convene with a"
.byte $02
.text "larger army, you could repel them"
.byte $02
.text "from Silesse."
.byte $08
.byte $04
.text "I say we take this to the highest"
.byte $02
.text "authority we can find-"
.byte $02
.text "Princess Fee herself."
.byte $08
.byte $04
.text "She's currently positioned in Tofa"
.byte $02
.text "with a regiment of the most skilled"
.byte $02
.text "soldiers in the country."
.byte $08
.byte $04
.text "Bring this news to her, and you"
.byte $02
.text "might be able to mobilize a force"
.byte $02
.text "strong enough to oppose Grannvale."
.byte $08
.byte Right_slot
.word LoadPortrait
.word finn_portrait
.byte $04
.text "First of all- how would we even"
.byte $02
.text "reach Tofa in time? It's on the"
.byte $02
.text "opposite side of the country!"
.byte $08
.byte $04
.text "The mountain range is utterly" 
.byte $02
.text "inhospitable!"
.byte $08
.byte $04
.word LoadPortrait
.word leif_portrait
.text "I'm with Seadna on this one."
.byte $02
.text "It's a nice thought... but do"
.byte $02
.text "you really think that's possible?"
.byte $08
.byte $04
.text "At best, I'd be a courier, delivering"
.byte $02
.text "urgent news to her majesty..."
.byte $08
.byte $04
.text "Which she will promptly ignore."
.byte $02
.text "She hasn't the time for affairs"
.byte $02
.text "like ours."
.byte $08
.byte $04
.text "Even if she did, I'm certainly not talented"
.byte $02
.text "enough to lead a full-scale army"
.byte $02
.text "or wage a war or something of that sort."
.byte $08
.byte $04
.text "Maybe my father could've, but not me."
.byte $08
.byte $04
.word LoadPortrait
.word finn_portrait
.text "Take solace in what good we've made."
.byte $02
.text "That's what Barra would say."
.byte $02
.text "I think it applies here."
.byte $08
.byte $04
.word LoadPortrait
.word leif_portrait
.text "Then again..."
.byte $02
.text "I don't have any plan of my own."
.byte $02
.text "Ilse's idea wouldn't hurt to consider."
.byte $02
.text "It'd save our own hides, at least."
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
.byte Left_slot
.word LoadPortrait
.word albaportrait
.text "..."
.byte Right_slot
.text "Men! You have your orders, and I have mine."
.byte $02
.text "Raze this hovel and bring me their leader!"
.byte $08
.byte $04
.byte EndText

dialogueChapter04Opening4
.byte Right_slot
.word LoadPortrait
.word braidedgirl_portrait

.text "Lady Ilse! An imperial regiment"
.byte $02
.text "has been sighted on the"
.byte $02
.text "outskirts of town!"
.byte $08

.byte Left_slot
.word LoadPortrait
.word amalda_portrait

.text "(Oh, gods... could we not have"
.byte $02
.text "a little more time to spare?)"
.byte $08
.byte $04
.text "Have everyone escorted through"
.byte $02
.text "the north exit of town."
.byte $08
.byte $04
.text "Waulter and I will hold them"
.byte $02
.text "off for as long as it takes"
.byte $02
.text "everyone to escape."
.byte $08
.byte $04
.text "Now, hurry!"
.byte $08

.byte Right_slot
.byte $04
.word LoadPortrait
.word finn_portrait
.text "Wait! You can't possibly fend"
.byte $02
.text "them all off by yourselves!"
.byte $08
.byte $04
.text "Let us lend a hand!"
.byte $02
.text "Any chance to lay into the"
.byte $02
.text "empire is a great one!"
.byte $08
.byte $04
.byte Right_slot
.word LoadPortrait
.word ralph_portrait
.text "I agree with the lass."
.byte $08
.byte $04
.text "You might be ready to sacrifice"
.byte $02
.text "yourself at the drop of a hat,"
.byte $02
.text "but I'm not."
.byte $08
.byte $04
.text "I've got things left to do."
.byte $02
.text "Let Neill and his friends"
.byte $02
.text "take arms."
.byte $08
.byte Left_slot
.byte $04
.text "Alright, but please..."
.byte $02
.text "just don't get hurt!"
.byte $08
.byte $04
.byte EndText

civviesallescaped
.byte Right_slot
.word LoadPortrait
.word amalda_portrait
.text "The civilians have escaped!"
.byte $02
.text "Now hurry, don't be a hero!"
.byte $02
.text "Staying behind is death!"
.byte $08
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
.text "Your words have reached me. I mustn't falter."
.byte $02
.text "(Perhaps there is still time...)"
.byte $08
.byte $04
.byte EndText

civvydies
.byte Right_slot
.word LoadPortrait
.word leif_portrait
.byte $09 ; font 9(always use font 9)
.text "We lost someone?!"
.byte $08

ilsedies
.byte Right_slot
.word LoadPortrait
.word leif_portrait
.byte $09 ; font 9(always use font 9)
.text "Ilse? ILSE?!"
.byte $08

.byte EndText

.byte EndText

neillseadna2
.byte Left_slot
.word LoadPortrait
.word finn_portrait
.text "Still thinking about your dad?"
.byte right_slot
.word LoadPortrait
.word leif_portrait
.text "It's hard not to. He had a firm vision."
.text "It's like he always knew what to do."
.text "I feel like my leadership backfires"
.text "on all of us half of the time."

.text "You've got your head all wrapped up"
.text "in that leadership business."
.text "There's no chain of command between us"
.text "or anything. We listen to you because"
.text "we're your friends."
.text "If we pick up more recruits,"
.text "that could change..."
.text "But even then, we're with you,"
.text "every step of the way."
.text "At least... I'll be."

.text "Daw, thanks."
.text "I gotta stop being a glum bumpkin."
.text "Clearly, you don't find that attractive."

.text "And just WHAT are you insinuating there?"

.text "Uhh... Nothing at all!"

.text "Heheheh..."

.text "Ha... aha ha ha ha!"
.text "Ahh... but being serious for a second..."
.text "What do you think of Ilse, and this"
.text "whole visiting the royalty plot?"

.text "Ridiculous would be a good place to start."
.text "She talks about walking across the"
.text "entire continent like that wouldn't"
.text "take us a year or more."
.text "The idea of us joining their ranks"
.text "is equally preposterous."
.text "These are the same people who"
.text "rejected my application for"
.text "Silesse's Pegasus Corps."
.text "They called my behavior insubordinate."
.text "That lady acts like a fictional"
.text "character! As if we'll suddenly"
.text "become heroes for doing this."
.text "Then again... real heroes are born of"
.text "that sort of make believe-sounding"
.text "nonsense too."
.text "Sigurd was just protecting his"
.text "nation's borders, and he wound up"
.text "conquering two whole nations!"

.text "Crazy. And to think when I first told"
.text "you Sigurd was a martyr, you thought"
.text "I was an extremist."

.text "Misinformation is a powerful thing!"
.text "I almost signed a deal for the empire!"
.text "Your dad's story probably saved my life."

.text "I've kept you long enough."
.text "Tear em up, Seadna!"

.text "Roger that, Captain Neill!"
.text "Hehe..."

.byte EndText

cavernexamination
.byte Right_slot
.text "Echo!"
.byte $08
.byte EndText

storehouseexamination
.byte Right_slot
.word LoadPortrait
.word ralph_portrait
.text "The storehouse... where is it?"
.byte $08
.byte $04
.text "You. You robbed me of everything."
.byte $02
.text "I will not place my hands on your"
.byte $02
.text "hilt for as long as I live."
.byte $08
.byte $04
.text "This place will be abandoned soon..."
.byte $02
.text "But I cannot in good conscience leave"
.byte $02
.text "this foul thing here..."
.byte $08
.byte $04
.text "Perhaps there's somewhere I can"
.byte $02
.text "dispose of it..."
.byte $08
.byte $04
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

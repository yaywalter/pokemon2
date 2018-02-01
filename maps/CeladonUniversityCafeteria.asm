CeladonUniversityCafeteria_MapScriptHeader:
	db 0 ; map triggers

	db 0 ; map callbacks

	db 2 ; warps
	warp_def 7, 13, 2, CELADON_UNIVERSITY_2F
	warp_def 7, 14, 2, CELADON_UNIVERSITY_2F

	db 0 ; xy triggers

	db 1 ; signposts
	signpost 0, 10, SIGNPOST_JUMPTEXT, CeladonUniversityCafeteriaSignText

	db 7 ; person events
	person_event SPRITE_COOLTRAINER_M, 2, 11, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CeladonUniversityCafeteriaCoreyScript, -1
	person_event SPRITE_COOLTRAINER_F, 2, 4, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityCafeteriaCooltrainerfText, -1
	person_event SPRITE_BEAUTY, 3, 7, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityCafeteriaBeautyText, -1
	person_event SPRITE_YOUNGSTER, 6, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityCafeteriaYoungster1Text, -1
	person_event SPRITE_LADY, 6, 8, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityCafeteriaLadyText, -1
	person_event SPRITE_YOUNGSTER, 5, 11, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, CeladonUniversityCafeteriaYoungster2Script, -1
	person_event SPRITE_BAKER, 3, 0, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CeladonUniversityCafeteriaBakerScript, -1

	const_def 1 ; person constants
	const CELADONUNIVERSITYCAFETERIA_COREY

CeladonUniversityCafeteriaCoreyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_COOLTRAINERM_COREY
	iftrue .Beaten
	checkevent EVENT_INTRODUCED_CELADON_FOUR
	iftrue .IntroducedCeladonFour1
	writetext .IntroText1
	jump .AfterIntro
.IntroducedCeladonFour1
	writetext .IntroText2
.AfterIntro
	yesorno
	iffalse_jumpopenedtext .NoBattleText
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked CELADONUNIVERSITYCAFETERIA_COREY
	loadtrainer COOLTRAINERM, COOLTRAINERM_COREY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERM_COREY
	opentext
.Beaten
	setevent EVENT_INTRODUCED_CELADON_FOUR
	checkevent EVENT_BEAT_COOLTRAINERM_RAYMOND
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_BEAT_COOLTRAINERM_FERGUS
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_BEAT_COOLTRAINERF_NEESHA
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_GOT_CHOICE_BAND_FROM_CELADON_FOUR
	iftrue_jumpopenedtext .FinalText
	writetext .AfterText2
	buttonsound
	verbosegiveitem CHOICE_BAND
	iffalse_endtext
	setevent EVENT_GOT_CHOICE_BAND_FROM_CELADON_FOUR
	thisopenedtext

.FinalText:
	text "You'd be a star"
	line "student if you"
	cont "enrolled here."

	para "But you have other"
	line "goals, don't you?"
	done

.IntroText1:
	text "I'm Corey! I'm one"
	line "of top four train-"
	cont "ers at Celadon"
	cont "University."

	para "We're known as the"
	line "Celadon Four!"

	para "Let me show you"
	line "how we earned that"

	para "title with a quick"
	line "battle!"
	done

.IntroText2:
	text "I'm Corey! I'm one"
	line "of the Celadon"
	cont "Four!"

	para "You're challenging"
	line "all four of us?"

	para "Sure, I'm finished"
	line "eating here."

	para "Are you ready to"
	line "battle?"
	done

.NoBattleText:
	text "Yeah, we can be"
	line "intimidating."
	done

.SeenText:
	text "Winning this will"
	line "be a breeze!"
	done

.BeatenText:
	text "I underestimated"
	line "you…"
	done

.AfterText1:
	text "You're a strong"
	line "trainer!"

	para "But I'm just one of"
	line "the Celadon Four."

	para "You should track"
	line "down the rest of"

	para "us to really test"
	line "your strength!"
	done

.AfterText2:
	text "You beat all of"
	line "the Celadon Four?"

	para "Congratulations!"

	para "Take this as a"
	line "memento!"
	done

CeladonUniversityCafeteriaCooltrainerfText:
	text "This place makes"
	line "the best Cinnabar-"
	cont "style hamburger"

	para "steaks this side"
	line "of Kanto!"

	para "It's just like"
	line "being home."
	done

CeladonUniversityCafeteriaBeautyText:
	text "The cook finally"
	line "made another batch"
	cont "of Old Gateau!"

	para "I might go back"
	line "for seconds."
	done

CeladonUniversityCafeteriaYoungster1Text:
	text "I asked the cafe-"
	line "teria to stock"
	cont "Casteliacones."

	para "They remind me of"
	line "home, and they're"
	cont "yummy too!"
	done

CeladonUniversityCafeteriaLadyText:
	text "I'm on a diet."
	line "Today it's a"
	para "nutritious Slip"
	line "Seed salad for me."
	done

CeladonUniversityCafeteriaYoungster2Script:
	checkevent EVENT_GOT_LEMONADE_IN_UNIVERSITY
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	buttonsound
	verbosegiveitem LEMONADE
	iffalse_endtext
	setevent EVENT_GOT_LEMONADE_IN_UNIVERSITY
	jumpopenedtext .Text2

.Text1:
	text "The vending ma-"
	line "chine gave me an"
	cont "extra drink!"

	para "Let me share it"
	line "with you."
	done

.Text2:
	text "I love a cold"
	line "Lemonade after a"
	cont "tough battle."
	done

CeladonUniversityCafeteriaBakerScript:
	faceplayer
	opentext
	checkflag ENGINE_BOUGHT_LEFTOVERS
	iftrue_jumpopenedtext .Text3
	writetext .Text1
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .Text4
	checkmoney $0, 4000
	if_equal $2, .NotEnoughMoney
	giveitem LEFTOVERS
	iffalse_jumpopenedtext .Text6
	setflag ENGINE_BOUGHT_LEFTOVERS
	waitsfx
	playsound SFX_TRANSACTION
	takemoney $0, 4000
	special PlaceMoneyTopRight
	thisopenedtext

.Text2:
	text "Here you go, hon!"
	line "Enjoy it!"
	done

.NotEnoughMoney:
	thisopenedtext

	text "You don't have"
	line "enough money…"
	done

.Text1:
	text "What's that, hon?"

	para "Sorry, we're done"
	line "serving dinner."

	para "There are some"
	line "Leftovers, but"

	para "it'll cost ¥4000."
	line "Want some?"
	done

.Text3:
	text "There aren't any"
	line "more Leftovers"
	cont "today."
	done

.Text4:
	text "Have a nice day!"
	done

.Text6:
	text "You can't carry"
	line "it, hon."
	done

CeladonUniversityCafeteriaSignText:
	text "Please clean up"
	line "when you are"
	cont "finished eating."
	done

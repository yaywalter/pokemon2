FireIslandRoof_MapScriptHeader:
	db 0 ; map triggers

	db 0 ; map callbacks

	db 1 ; warps
	warp_def 7, 3, 2, FIRE_ISLAND

	db 0 ; xy triggers

	db 0 ; signposts

	db 1 ; person events
	person_event SPRITE_CANDELA, 5, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FireIslandRoofCandelaScript, EVENT_SHAMOUTI_COAST_CANDELA

	const_def 1 ; person constants
	const FIREISLANDROOF_CANDELA

FireIslandRoofCandelaScript:
	faceplayer
	opentext
	writetext .GreetingText
	yesorno
	iffalse .Refused
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer CANDELA, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CANDELA
	showtext .AfterText
	playsound SFX_WARP_TO
	applyonemovement FIREISLANDROOF_CANDELA, teleport_from
	disappear FIREISLANDROOF_CANDELA
	clearevent EVENT_CELADON_UNIVERSITY_CANDELA
	end

.Refused:
	jumpopenedtext .RefusedText

.GreetingText:
	text "TODO"
	done

.SeenText:
	text "TODO"
	done

.BeatenText:
	text "TODO"
	done

.AfterText:
	text "TODO"
	done

.RefusedText:
	text "TODO"
	done

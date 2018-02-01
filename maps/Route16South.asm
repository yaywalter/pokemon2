Route16South_MapScriptHeader:
	db 0 ; map triggers

	db 1 ; map callbacks
	dbw MAPCALLBACK_NEWMAP, UnknownScript_0x1ad318

	db 2 ; warps
	warp_def 10, 9, 1, ROUTE_16_17_GATE
	warp_def 11, 9, 2, ROUTE_16_17_GATE

	db 0 ; xy triggers

	db 1 ; signposts
	signpost 9, 5, SIGNPOST_JUMPTEXT, CyclingRoadSignText

	db 1 ; person events
	person_event SPRITE_OFFICER_F, 11, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, OfficerfJamieScript, -1

UnknownScript_0x1ad318:
	setflag ENGINE_ALWAYS_ON_BIKE
	return

OfficerfJamieScript:
	faceplayer
	opentext
	checknite
	iffalse .NoFight
	checkevent EVENT_BEAT_OFFICERF_JAMIE
	iftrue .AfterScript
	special SaveMusic
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext OfficerfJamieSeenText
	waitbutton
	closetext
	winlosstext OfficerfJamieBeatenText, 0
	loadtrainer OFFICERF, JAMIE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICERF_JAMIE
	endtext

.AfterScript:
	jumpopenedtext OfficerfJamieAfterText

.NoFight:
	jumpopenedtext OfficerfJamieDaytimeText

OfficerfJamieSeenText:
	text "Hey you! Are you"
	line "causing trouble?"
	done

OfficerfJamieBeatenText:
	text "Hmph!"
	done

OfficerfJamieAfterText:
	text "Riding around late"
	line "at night just"
	cont "looks suspicious."
	done

OfficerfJamieDaytimeText:
	text "Bikers and"
	line "Roughnecks like"

	para "to make trouble"
	line "on this road."

	para "Don't you get"
	line "involved, got it?"
	done

CyclingRoadSignText:
	text "Cycling Road"

	para "Downhill coasting"
	line "all the way!"
	done

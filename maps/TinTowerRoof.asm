TinTowerRoof_MapScriptHeader:
	db 0 ; map triggers

	db 1 ; map callbacks
	dbw MAPCALLBACK_OBJECTS, TinTowerRoofHoOh

	db 1 ; warps
	warp_def 13, 7, 2, TIN_TOWER_10F

	db 0 ; xy triggers

	db 0 ; signposts

	db 1 ; person events
	person_event SPRITE_HO_OH, 3, 7, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, TinTowerHoOh, EVENT_TIN_TOWER_ROOF_HO_OH

	const_def 1 ; person constants
	const TINTOWERROOF_HO_OH

TinTowerRoofHoOh:
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .NoAppear
	checkitem RAINBOW_WING
	iftrue .Appear
	jump .NoAppear

.Appear:
	appear TINTOWERROOF_HO_OH
	return

.NoAppear:
	disappear TINTOWERROOF_HO_OH
	return

TinTowerHoOh:
	faceplayer
	opentext
	writetext HoOhText
	cry HO_OH
	pause 15
	closetext
	setevent EVENT_FOUGHT_HO_OH
	writecode VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	loadwildmon HO_OH, 75
	startbattle
	disappear TINTOWERROOF_HO_OH
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_HO_OH
	end

HoOhText:
	text "Shaoooh!"
	done

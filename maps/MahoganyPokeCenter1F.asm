MahoganyPokeCenter1F_MapScriptHeader:
	db 0 ; map triggers

	db 0 ; map callbacks

	db 3 ; warps
	warp_def 7, 5, 4, MAHOGANY_TOWN
	warp_def 7, 6, 4, MAHOGANY_TOWN
	warp_def 7, 0, 1, POKECENTER_2F

	db 0 ; xy triggers

	db 1 ; signposts
	signpost 1, 10, SIGNPOST_READ, PokemonJournalPryceScript

	db 4 ; person events
	pc_nurse_event 1, 5
	person_event SPRITE_POKEFAN_M, 4, 9, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, MahoganyPokeCenter1FPokefanmText, -1
	person_event SPRITE_YOUNGSTER, 3, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, MahoganyPokeCenter1FYoungsterText, -1
	person_event SPRITE_COOLTRAINER_F, 3, 2, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MahoganyPokeCenter1FCooltrainerfText, -1

PokemonJournalPryceScript:
	setflag ENGINE_READ_PRYCE_JOURNAL
	thistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Pryce!"

	para "Pryce's middle name"
	line "is Willow."

	para "His fighting style"
	line "is said to be as"

	para "flexible as a"
	line "willow tree in"
	cont "winter, which has"

	para "earned him the"
	line "nickname “the"
	cont "winter trainer”."
	done

MahoganyPokeCenter1FPokefanmText:
	text "What's this? Team"
	line "Rocket has come"
	cont "back?"

	para "I saw some men in"
	line "black at Lake of"
	cont "Rage…"
	done

MahoganyPokeCenter1FYoungsterText:
	text "I stop my #mon"
	line "from evolving too"
	cont "early."

	para "I make them learn"
	line "certain moves be-"
	cont "fore I let them"
	cont "evolve."
	done

MahoganyPokeCenter1FCooltrainerfText:
	text "#mon do become"
	line "stronger when they"

	para "evolve, but they"
	line "also learn moves"
	cont "more slowly."
	done

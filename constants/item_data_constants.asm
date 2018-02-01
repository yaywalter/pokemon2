; pockets
ITEM     EQU 1
MEDICINE EQU 2
BALL     EQU 3
TM_HM    EQU 4
BERRIES  EQU 5
KEY_ITEM EQU 6

; bag pocket sizes
MAX_ITEMS     EQU 30
MAX_MEDICINE  EQU 20
MAX_BALLS     EQU 22
MAX_BERRIES   EQU 17
MAX_KEY_ITEMS EQU 27
MAX_PC_ITEMS  EQU 40

; item actions
CANT_SELECT_F EQU 6
CANT_TOSS_F   EQU 7

CANT_SELECT EQU 1 << CANT_SELECT_F
CANT_TOSS   EQU 1 << CANT_TOSS_F


; held item effects
	const_def

	const HELD_NONE
	const HELD_BERRY
	const HELD_LEFTOVERS
	const HELD_RESTORE_PP
	const HELD_CLEANSE_TAG

	const HELD_HEAL_POISON
	const HELD_HEAL_BURN
	const HELD_HEAL_PARALYZE
	const HELD_HEAL_SLEEP
	const HELD_HEAL_FREEZE
	const HELD_HEAL_STATUS
	const HELD_HEAL_CONFUSE

	const HELD_PREVENT_POISON
	const HELD_PREVENT_BURN
	const HELD_PREVENT_PARALYZE
	const HELD_PREVENT_SLEEP
	const HELD_PREVENT_FREEZE
	const HELD_PREVENT_CONFUSE

	const HELD_ATTACK_UP
	const HELD_DEFENSE_UP
	const HELD_SPEED_UP
	const HELD_SP_ATTACK_UP
	const HELD_SP_DEFENSE_UP
	const HELD_ACCURACY_UP
	const HELD_EVASION_UP

	const HELD_METAL_POWDER
	const HELD_QUICK_POWDER
	const HELD_EVIOLITE

	const HELD_TYPE_BOOST
	const HELD_CATEGORY_BOOST
	const HELD_ACCURACY_BOOST

	const HELD_CATCH_CHANCE
	const HELD_ESCAPE
	const HELD_CRITICAL_UP
	const HELD_FLINCH_UP
	const HELD_QUICK_CLAW
	const HELD_AMULET_COIN
	const HELD_BRIGHTPOWDER
	const HELD_FOCUS_BAND

	const HELD_EV_DOUBLE
	const HELD_EV_HP_UP
	const HELD_EV_ATK_UP
	const HELD_EV_DEF_UP
	const HELD_EV_SPD_UP
	const HELD_EV_SAT_UP
	const HELD_EV_SDF_UP

	const HELD_CHOICE

	const HELD_SELF_PSN
	const HELD_SELF_BRN
	const HELD_SELF_FRZ
	const HELD_SELF_PAR
	const HELD_SELF_SLP

	const HELD_PROLONG_WRAP
	const HELD_PROLONG_SCREENS
	const HELD_PROLONG_RAIN
	const HELD_PROLONG_SUN
	const HELD_PROLONG_SANDSTORM
	const HELD_PROLONG_HAIL

	const HELD_AIR_BALLOON
	const HELD_ASSAULT_VEST
	const HELD_BIG_ROOT
	const HELD_BINDING_BAND
	const HELD_DESTINY_KNOT
	const HELD_EXPERT_BELT
	const HELD_FOCUS_SASH
	const HELD_LIFE_ORB
	const HELD_METRONOME
	const HELD_PROTECTIVE_PADS
	const HELD_ROCKY_HELMET
	const HELD_SAFETY_GOGGLES
	const HELD_SHED_SHELL
	const HELD_SHELL_BELL
	const HELD_WEAKNESS_POLICY
	const HELD_ZOOM_LENS

	const HELD_MENTAL_HERB
	const HELD_POWER_HERB
	const HELD_WHITE_HERB

	const HELD_BLACK_SLUDGE

	const HELD_RAISE_STAT

; item attributes
	const_def
	const ITEMATTR_PRICE
	const ITEMATTR_PRICE_HI
	const ITEMATTR_EFFECT
	const ITEMATTR_PARAM
	const ITEMATTR_PERMISSIONS
	const ITEMATTR_POCKET
	const ITEMATTR_HELP
NUM_ITEMATTRS EQU const_value

ITEMMENU_NOUSE   EQU 0
ITEMMENU_CURRENT EQU 4
ITEMMENU_PARTY   EQU 5
ITEMMENU_CLOSE   EQU 6


; mart types
	const_def
	const MARTTYPE_STANDARD
	const MARTTYPE_BITTER
	const MARTTYPE_BARGAIN
	const MARTTYPE_PHARMACY
	const MARTTYPE_ROOFTOP
	const MARTTYPE_SILPH
	const MARTTYPE_ADVENTURER
	const MARTTYPE_INFORMAL
	const MARTTYPE_BAZAAR
	const MARTTYPE_TM
	const MARTTYPE_BLUECARD
	const MARTTYPE_BP


; marts
	const_def
	const MART_CHERRYGROVE
	const MART_CHERRYGROVE_DEX
	const MART_VIOLET
	const MART_AZALEA
	const MART_GOLDENROD_2F_1
	const MART_GOLDENROD_2F_2
	const MART_GOLDENROD_2F_2_EEVEE
	const MART_GOLDENROD_3F
	const MART_GOLDENROD_4F
	const MART_GOLDENROD_5F_TM
	const MART_GOLDENROD_HARBOR
	const MART_UNDERGROUND
	const MART_ECRUTEAK
	const MART_OLIVINE
	const MART_CIANWOOD
	const MART_YELLOW_FOREST
	const MART_MAHOGANY_1
	const MART_MAHOGANY_2
	const MART_BLACKTHORN
	const MART_INDIGO_PLATEAU
	const MART_VIRIDIAN
	const MART_PEWTER
	const MART_MT_MOON
	const MART_CERULEAN
	const MART_LAVENDER
	const MART_VERMILION
	const MART_CELADON_2F_1
	const MART_CELADON_2F_2
	const MART_CELADON_3F_TM
	const MART_CELADON_4F
	const MART_CELADON_5F_1
	const MART_CELADON_5F_2
	const MART_SAFFRON
	const MART_SILPH_CO
	const MART_FUCHSIA
	const MART_SHAMOUTI_1
	const MART_SHAMOUTI_2
	const MART_BT_1
	const MART_BT_2
	const MART_BT_3


; PartyMenuActionText
	const_def
	const PARTYMENUACTION_00
	const PARTYMENUACTION_HEALING_ITEM
	const PARTYMENUACTION_02
	const PARTYMENUACTION_TEACH_TM
	const PARTYMENUACTION_04
	const PARTYMENUACTION_EVO_STONE
	const PARTYMENUACTION_06
	const PARTYMENUACTION_07
	const PARTYMENUACTION_08
	const PARTYMENUACTION_09

	const_def $f0
	const PARTYMENUTEXT_HEAL_PSN
	const PARTYMENUTEXT_HEAL_BRN
	const PARTYMENUTEXT_HEAL_FRZ
	const PARTYMENUTEXT_HEAL_SLP
	const PARTYMENUTEXT_HEAL_PAR
	const PARTYMENUTEXT_HEAL_HP
	const PARTYMENUTEXT_HEAL_ALL
	const PARTYMENUTEXT_REVIVE
	const PARTYMENUTEXT_LEVEL_UP
	const PARTYMENUTEXT_HEAL_CONFUSION

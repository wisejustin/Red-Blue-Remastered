const_value set 2
	const BLUESHOUSE_DAISY

BluesHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

DaisyScript_0x19b0d0:
	faceplayer
	opentext
	checkflag ENGINE_MAP_CARD
	iftrue UnknownScript0x19b11d
	writetext Intro
	waitbutton
	buttonsound
	waitsfx
	writetext TownMap
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_MAP_CARD
	closetext
	end
	
UnknownScript0x19b11d
	writetext nocard
	waitbutton
	closetext
	end

Intro
	text "Grandpa asked you"
	line "to run an errand?"
	cont "Here, this will"
	cont "help you!"
	done
	
TownMap
	text "<PLAYER> received"
	line "The Map Card!"
	done
	
nocard
	text "Use the MAP CARD"
	line "to find out where"
	cont "you are."
	done
	
BluesHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 2, PALLET_TOWN
	warp_def $7, $3, 2, PALLET_TOWN

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_DAISY, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, DaisyScript_0x19b0d0, -1

Scriptname DLC1SurgeryScript extends Quest  Conditional

MiscObject Property Gold001  Auto  

GlobalVariable Property DLC1SurgeryCost  Auto  

ObjectReference Property PlayerMarker  Auto  

ObjectReference Property MenuLight  Auto  

int Property MoveToMarkerDistance = 350 Auto
{ move the player if farther than this from marker
}

function BeginSurgery()
	actor player = Game.GetPlayer()
	; force player to not be crouching
	Game.DisablePlayerControls(abMovement = true, abFighting = true, abCamSwitch = false, \
  							abLooking = false, abSneaking = true, abMenu = true, abActivate = true, abJournalTabs = true, aiDisablePOVType = 0)

; 	debug.trace(self + " waiting to exit dialogue...")

	; wait for player to exit dialogue
	while Surgeon.IsInDialogueWithPlayer()
		utility.wait(0.5)
	endWhile

	; is player werewolf or vampire?
	if !CanUseFaceMenu() 
		return
	endif

	; remove gold
	player.RemoveItem( Gold001, DLC1SurgeryCost.GetValueInt() )

; 	debug.trace(self + " move player into position")

	; move player into position if too far from marker (to avoid unnecessary snapping)
	; or if player is sitting
	; or if player is behind NPC
	if player.GetDistance(PlayerMarker) > MoveToMarkerDistance || player.GetSitState() > 0 || Surgeon.GetHeadingAngle(player) < -90 || Surgeon.GetHeadingAngle(player) > 90
		player.MoveTo(PlayerMarker)
	endif

	; unequip helmet
	player.UnequipItemSlot(30) ; head slot
	player.UnequipItemSlot(31) ; hair slot
	player.UnequipItemSlot(42) ; circlet slot

; 	debug.trace(self + " enable light")

	; enable light
	MenuLight.Enable()

; 	debug.trace(self + " light enabled: MenuLight.Getdisabled()=" + MenuLight.IsDisabled())

	; make sure player is NOT a werewolf or vampire
	; is player werewolf or vampire?
	if !CanUseFaceMenu() 
		return
	endif

	; give achievement
	Game.AddAchievement(59)

	; call menu
	Game.ShowRaceMenu()

	; wait for menu to come up
; 	debug.trace(self + " waiting for 3 seconds")
	utility.waitMenuMode(3.0)

; 	debug.trace(self + " waiting to exit menu mode...")

	while utility.IsInMenuMode()
		utility.waitMenuMode(0.5)
	endwhile

	; out of menu - put everything back to normal
; 	debug.trace(self + " out of menu")

	; reenable controls
; 	debug.trace(self + " player controls reenabled")
	Game.EnablePlayerControls()

	; disable light
	MenuLight.Disable()
; 	debug.trace(self + " light disabled: MenuLight.Getdisabled()=" + MenuLight.IsDisabled())

endFunction

; call  me to check if player can use face menu
bool function CanUseFaceMenu()
	Actor thePlayer = Game.GetPlayer()
	if thePlayer.GetRace() == WerewolfBeastRace || thePlayer.HasKeyword(Vampire) || thePlayer.HasMagicEffect(WerewolfChangeEffect) || thePlayer.HasMagicEffect(WerewolfChangeFXEffect) 
		; enable controls since we're bailing
		Game.EnablePlayerControls()
		return false
	else
		return true
	endif
endFunction

function PreSculptSetup()
if (Game.GetPlayer().GetActorBase()).GetSex() == 0
	PreSculptPCSex = 0
elseif (Game.GetPlayer().GetActorBase()).GetSex() == 1
	PreSculptPCSex = 1
else
endIf
NordRace.ClearRaceFlag(0x00000001)
ImperialRace.ClearRaceFlag(0x00000001)
RedguardRace.ClearRaceFlag(0x00000001)
BretonRace.ClearRaceFlag(0x00000001)
HighElfRace.ClearRaceFlag(0x00000001)
DarkElfRace.ClearRaceFlag(0x00000001)
WoodElfRace.ClearRaceFlag(0x00000001)
OrcRace.ClearRaceFlag(0x00000001)
ArgonianRace.ClearRaceFlag(0x00000001)
KhajiitRace.ClearRaceFlag(0x00000001)
DES_WildElfRace .ClearRaceFlag(0x00000001)
DES_DeepElfRace .ClearRaceFlag(0x00000001)
DES_SeaElfRace .ClearRaceFlag(0x00000001)
DES_SnowElfRace .ClearRaceFlag(0x00000001)
DES_AkaviriRace .ClearRaceFlag(0x00000001)

(Game.GetPlayer().GetRace()).SetRaceFlag(0x00000001)
endFunction

function PostSculptCompareGenders()
if PreSculptPCSex != (Game.GetPlayer().GetActorBase()).GetSex()
	TGIsPCTrans.SetValue(1)
else
endIf
EndFunction

GlobalVariable Property TGIsPCTrans auto
Int Property PreSculptPCSex auto
ObjectReference Property Surgeon  Auto  
Race Property WerewolfBeastRace Auto
Race Property NordRace Auto
Race Property ImperialRace Auto
Race Property RedguardRace Auto
Race Property BretonRace Auto
Race Property HighElfRace Auto
Race Property DarkElfRace Auto
Race Property WoodElfRace Auto
Race Property OrcRace Auto
Race Property ArgonianRace Auto
Race Property KhajiitRace Auto
Race Property DES_WildElfRace Auto
Race Property DES_DeepElfRace Auto
Race Property DES_SeaElfRace Auto
Race Property DES_SnowElfRace Auto
Race Property DES_AkaviriRace Auto
Keyword Property Vampire Auto
MagicEffect Property WerewolfChangeEffect Auto
MagicEffect Property WerewolfChangeFXEffect Auto
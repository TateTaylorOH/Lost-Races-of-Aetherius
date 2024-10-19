Scriptname DES_AyleidController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsAyleid Auto
Formlist Property DES_HeadPartsAyleidVampire Auto

Race Property DES_WildElfRace auto
Race Property DES_WildElfRaceVampire auto

Actor Property PlayerRef auto
Spell Property Oakflesh auto
Quest Property MQ101 auto

Event OnInit () 

  if(SKSE.GetVersion() > 0)
    ;debug.messagebox("yeskse")
    RegisterForMenu("RaceSex Menu")
  else
	;debug.messagebox("no skse")
    RegisterForSingleUpdate(1.0)
  endIf

	raceController.  NewHighElf = DES_HeadPartsAyleid
	raceController.  NewHighElfVampire = DES_HeadPartsAyleidVampire

	raceController.  proxyRaces () 

	FormList ExhaustionResistRacesMajor = Game.GetFormFromFile(0x000008A6, "ccQDRSSE001-SurvivalMode.esl") As FormList

    if(ExhaustionResistRacesMajor )
        ExhaustionResistRacesMajor.AddForm(DES_WildElfRace)
        ExhaustionResistRacesMajor.AddForm(DES_WildElfRaceVampire)
    endif

EndEvent

Event OnUpdate()
  if(MQ101.IsStageDone(80) || MQ101.GetStage() >= 80.0 || MQ101.IsCompleted() || MQ101.IsStopped())
    doSpells()
  else
    RegisterForSingleUpdate(1.0)
  endIf
endEvent

Event OnMenuClose(String MenuName)
  Utility.Wait(0.25)
  doSpells()
endEvent

Function dospells()
	Race PlayerRace = PlayerRef.GetRace()
	IF PlayerRace == DES_WildElfRace
		PlayerRef.AddSpell(Oakflesh, false)
	ENDIF
EndFunction
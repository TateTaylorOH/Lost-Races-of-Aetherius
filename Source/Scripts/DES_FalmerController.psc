Scriptname DES_FalmerController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property HeadPartsHighElfSnow Auto
Formlist Property DES_HeadPartsSnowElfVampire Auto

Race Property SnowElfRace auto
Race Property DES_SnowElfRaceVampire auto

Actor Property PlayerRef auto
Spell Property Frostbite auto
Quest Property MQ101 auto

Event OnInit () 

  if(SKSE.GetVersion() > 0)
    ;debug.messagebox("yeskse")
    RegisterForMenu("RaceSex Menu")
  else
	;debug.messagebox("no skse")
    RegisterForSingleUpdate(1.0)
  endIf

	raceController.  NewHighElf = HeadPartsHighElfSnow
	raceController.  NewHighElfVampire = DES_HeadPartsSnowElfVampire

	raceController.  proxyRaces () 

	FormList ExhaustionResistRacesMajor = Game.GetFormFromFile(0x000008A6, "ccQDRSSE001-SurvivalMode.esl") As FormList

    if(ExhaustionResistRacesMajor)
        ExhaustionResistRacesMajor.AddForm(SnowElfRace)
        ExhaustionResistRacesMajor.AddForm(DES_SnowElfRaceVampire)
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
	IF PlayerRace == SnowElfRace
		PlayerRef.AddSpell(Frostbite, false)
	ENDIF
EndFunction

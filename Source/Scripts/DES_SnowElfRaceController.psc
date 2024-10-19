Scriptname DES_SnowElfRaceController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsSnowElf Auto
Formlist Property DES_HeadPartsSnowElfVampire Auto

Race Property DES_SnowElfRace auto
Race Property DES_SnowElfRaceVampire auto

Event OnInit () 

	raceController.  NewHighElf = DES_HeadPartsSnowElf
	raceController.  NewHighElfVampire =  DES_HeadPartsSnowElfVampire

	raceController.  proxyRaces () 

	FormList ExhaustionResistRacesMajor = Game.GetFormFromFile(0x000008A6, "ccQDRSSE001-SurvivalMode.esl") As FormList

    if(ExhaustionResistRacesMajor )
        ExhaustionResistRacesMajor.AddForm(DES_SnowElfRace)
        ExhaustionResistRacesMajor.AddForm(DES_SnowElfRaceVampire)
    endif

EndEvent

Scriptname DES_DwarfController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsDeepElf Auto
Formlist Property DES_HeadPartsDeepElfVampire Auto

Race Property DES_DeepElfRace auto
Race Property DES_DeepElfRaceVampire auto

Event OnInit () 

	raceController.  NewWoodElf =  DES_HeadPartsDeepElf
	raceController.  NewWoodElfVampire = DES_HeadPartsDeepElfVampire

	raceController.  proxyRaces () 

	FormList ExhaustionResistRacesMajor = Game.GetFormFromFile(0x000008A6, "ccQDRSSE001-SurvivalMode.esl") As FormList

    if(ExhaustionResistRacesMajor )
        ExhaustionResistRacesMajor.AddForm(DES_DeepElfRace)
        ExhaustionResistRacesMajor.AddForm(DES_DeepElfRaceVampire)
    endif

EndEvent


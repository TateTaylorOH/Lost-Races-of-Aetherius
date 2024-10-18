Scriptname DES_SeaElfRaceController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsSeaElf Auto
Formlist Property DES_HeadPartsSeaElfVampire Auto

Race Property DES_SeaElfRace auto
Race Property DES_SeaElfRaceVampire auto

Event OnInit () 

	raceController.  NewWoodElf = DES_HeadPartsSeaElf
	raceController.  NewWoodElfVampire =  DES_HeadPartsSeaElfVampire

	raceController.  proxyRaces () 

	FormList ExhaustionResistRacesMajor = Game.GetFormFromFile(0x000008A6, "ccQDRSSE001-SurvivalMode.esl") As FormList

    if(ExhaustionResistRacesMajor )
        ExhaustionResistRacesMajor.AddForm(DES_SeaElfRace)
        ExhaustionResistRacesMajor.AddForm(DES_SeaElfRaceVampire)
    endif

EndEvent

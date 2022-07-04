Scriptname DES_MaormerController extends Quest  

GenericRaceController Property raceController Auto 

Formlist Property DES_HeadPartsAkaviri Auto
Formlist Property DES_HeadPartsAkaviriVampire Auto

Formlist Property DES_HeadPartsAyleid Auto
Formlist Property DES_HeadPartsAyleidVampire Auto

Formlist Property DES_HeadPartsDeepElf Auto
Formlist Property DES_HeadPartsDeepElfVampire Auto

Formlist Property DES_HeadPartsSeaElf Auto
Formlist Property DES_HeadPartsSeaElfVampire Auto

Formlist Property DES_HeadPartsSnowElf Auto
Formlist Property DES_HeadPartsSnowElfVampire Auto

Race Property DES_AkaviriRace auto
Race Property DES_AkaviriRaceVampire auto

Race Property DES_DeepElfRace auto
Race Property DES_DeepElfRaceVampire auto

Race Property DES_SeaElfRace auto
Race Property DES_SeaElfRaceVampire auto

Race Property DES_SnowElfRace auto
Race Property DES_SnowElfRaceVampire auto

Race Property DES_WildElfRace auto
Race Property DES_WildElfRaceVampire auto

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


Scriptname DES_AyleidController extends Quest  

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

Event OnInit () 

	raceController.  NewHighElf = DES_HeadPartsAyleid
	raceController.  NewHighElfVampire = DES_HeadPartsAyleidVampire

	raceController.  proxyRaces () 

EndEvent


Scriptname DES_CloakSpell_Script extends ActiveMagicEffect  

Spell Property DES_CloakSpell Auto

Event OnEffectStart(Actor akCaster, Actor akTarget)

	DES_CloakSpell.Cast(akTarget)

EndEvent

Event OnEffectFinish(Actor akCaster, Actor akTarget)

	akTarget.DispelSpell(DES_CloakSpell)

EndEvent
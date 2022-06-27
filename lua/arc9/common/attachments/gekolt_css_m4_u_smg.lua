ATT.PrintName = "Sugma Receiver"
ATT.CompactName = "Sugma"
ATT.Icon = Material("")
ATT.Description = [[Adapter for converting the gun into a sugmachine gun. Uh, wait, that doesn't sound right.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_9mm"}
ATT.ShootSound = "gekolt_css/mp5-1.wav"
ATT.ShootSoundSilenced = "gekolt_css/tmp-1.wav"
ATT.MuzzleParticle = "muzzleflash_smg"

ATT.ClipSizeOverride = 32

ATT.RPMMult = 900 / 700

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_smg"
end

ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.5
ATT.RangeMinMult = 1.15
ATT.RangeMaxMult = 0.65

ATT.Ammo = "pistol"
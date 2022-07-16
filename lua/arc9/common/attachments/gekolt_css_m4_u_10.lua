ATT.PrintName = "Prototype Receiver"
ATT.CompactName = "Prototype"
ATT.Description = [[An older design that allows the rifle to take larger bullets. Powerful bullets overpenetrate at close range.]]

ATT.Icon = Material("")

ATT.SortOrder = 1.5
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_proto", "keep_rs"}
ATT.ShootSound = "gekolt_css/sg550-1.wav"
ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.Hook_TranslateAnimation = function(wep, anim) 

    return anim .. "_proto"

end

ATT.ClipSizeOverride = 20

ATT.DamageMaxMult = 0.925
ATT.DamageMinMult = 4.5
ATT.RangeMinMult = 1.25
ATT.RangeMaxMult = 0.95
ATT.PhysBulletMuzzleVelocityMult = 1.34
ATT.RPMMult = 500/700
ATT.RecoilMult = 2
ATT.RecoilPatternDriftMult = 2

ATT.Ammo = "ar2"
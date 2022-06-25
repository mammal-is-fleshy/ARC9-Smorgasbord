ATT.PrintName = "Prototype Receiver"
ATT.CompactName = "Prototype"
ATT.Description = [[An older design that allows the rifle to take larger bullets. Powerful bullets overpenetrate at close range.]]

ATT.Icon = Material("")

ATT.SortOrder = 1.5
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_proto", "keep_rs"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_proto"
end

ATT.ClipSizeOverride = 20

ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 1.75
ATT.PhysBulletMuzzleVelocityMult = 1.34
ATT.RPM = 800
ATT.RecoilMult = 2
ATT.RecoilPatternDriftMult = 2
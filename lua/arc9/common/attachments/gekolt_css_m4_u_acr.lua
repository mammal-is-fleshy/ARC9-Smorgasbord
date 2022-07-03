ATT.PrintName = "Experimental Receiver"
ATT.CompactName = "Exr"
ATT.Description = [[Extremely fictional-non-fictional receiver armed with duplex ammunition.
Comes with a 40-Rounder
May or may not deal double damage.]]

ATT.Icon = Material("")

ATT.SortOrder = 0.75
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_acr", "keep_rs"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_acr"
end

ATT.ClipSizeOverride = 40

ATT.DamageRand = 2
ATT.DamageMaxMult = 1.25
ATT.DamageMinMult = 1.25
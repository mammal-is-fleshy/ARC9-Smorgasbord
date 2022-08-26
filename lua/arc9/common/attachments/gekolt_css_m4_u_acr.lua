ATT.PrintName = "Experimental Receiver"
ATT.CompactName = "Exr"
ATT.Description = [[Extremely fictional-non-fictional receiver armed with duplex ammunition stacked in a 40-Rounder
May or may not deal double damage.]]

ATT.Icon = Material("entities/gekolt_css_m4_u_acr.png", "mips smooth")

ATT.SortOrder = 0.75
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_acr", "keep_rs"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_acr"
end

ATT.ClipSizeOverride = 40

ATT.DamageRand = 2
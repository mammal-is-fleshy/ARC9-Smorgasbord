ATT.PrintName = "Logistic Receiver"
ATT.CompactName = "M16"
ATT.Description = [[Older design with a fixed carry handle.
20-Rounder and Burst only for reasons that is definitely not related to gameplay.]]

ATT.Icon = Material("")

ATT.SortOrder = 0.5
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_a1"}

ATT.Firemodes = {
    {
        Mode = 3,
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_a1"
end

ATT.ClipSizeOverride = 20
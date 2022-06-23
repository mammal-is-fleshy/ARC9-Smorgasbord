ATT.PrintName = "Ranger Receiver"
ATT.CompactName = "Crossbow"
ATT.Icon = Material("")
ATT.Description = [[Ah yes, the ancient weapon that stands the test of time, now available for your m4. 
Explosive tip for obvious reasons.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 7

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_bow", "noguard"}
ATT.ShootSound = "gekolt_css/ak47-1.wav"

ATT.ClipSizeOverride = 1
ATT.ChamberSizeOverride = 0

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_bow"
end
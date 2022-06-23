ATT.PrintName = "Chimera Receiver"
ATT.CompactName = "AR47"
ATT.Icon = Material("")
ATT.Description = [[Specialised receiver designed to accept 7.62 Magazine.
Surely making the magwell slightly curved is enough to fit a bigger calibre, you don't need an entirely different barrel for it.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_ak"}
ATT.ShootSound = "gekolt_css/ak47-1.wav"

ATT.ClipSizeOverride = 30

ATT.RPMMult = 600/700

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ak"
end
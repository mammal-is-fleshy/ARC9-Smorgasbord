ATT.PrintName = "Belt-Fed Receiver"
ATT.CompactName = "LMG"
ATT.Icon = Material("")
ATT.Description = [[Comes with a 120 Round Magazine.
Drastically increases the reload speed
Really makes you think why they didn't just let you have a normal 120 round box magazine.
Surely balancing isn't the reason.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_lmg"}
ATT.ShootSound = "gekolt_css/m4a1_unsil-1.wav"

ATT.ClipSizeOverride = 120

ATT.ActivePosOverride = Vector(-0.5, 2, -0.5)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_lmg"
end
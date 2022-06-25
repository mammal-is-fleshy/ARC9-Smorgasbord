ATT.PrintName = "Sweeper Receiver"
ATT.CompactName = "Sweeper"
ATT.Icon = Material("")
ATT.Description = [[The lord shan't forgive your sins.
Of course it comes with a drum magazine.
In case you haven't figure it out, it's a shotgun receiver.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 5

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_sg", "noguard", "keep_rs"}
ATT.ShootSound = "gekolt_css/xm1014-1.wav"

ATT.ClipSizeOverride = 20

ATT.RPMMult = 320 / 700

ATT.Sights = {
    {
        Pos = Vector(3.1, 0, 6),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_sg"
end

ATT.NumOverride = 8
ATT.SpreadAdd = 0.025
ATT.DamageMaxMult = 0.5
ATT.DamageMinMult = 0.5

ATT.RecoilMult = 3
ATT.RecoilPatternDriftMult = 5

ATT.Ammo = "buckshot"
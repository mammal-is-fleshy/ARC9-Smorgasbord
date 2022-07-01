ATT.PrintName = "Breacher Receiver"
ATT.CompactName = "Breacher"
ATT.Icon = Material("")
ATT.Description = [[Compliment breaching device for your primary.
Usually these are installed under the handguard.
Not going to stop you from instaling it directly on the receiver]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 5

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_pump", "noguard", "nogrip"}
ATT.MuzzleParticle = "muzzleflash_shotgun"
ATT.ShootSound = "gekolt_css/xm1014-1.wav"

ATT.ClipSizeOverride = 5

ATT.RPMMult = 90 / 700

ATT.Sights = {
    {
        Pos = Vector(-3.05, -2, 0.25),
        Ang = Angle(0, 0, 5),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_pump"
end

ATT.NumOverride = 10
ATT.SpreadAdd = 0.025
ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.65

ATT.RecoilMult = 3
ATT.RecoilPatternDriftMult = 5

ATT.Ammo = "buckshot"

ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_pump.mdl"
ATT.ModelOffset = Vector(-6, -2.8, 3)
ATT.ModelAngleOffset = Angle(90, 0, -95)


ATT.LHIK_Priority = 5
ATT.LHIK = true


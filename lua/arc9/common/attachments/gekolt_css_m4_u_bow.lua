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
ATT.ShootSound = {"gekolt_css/cross_fire.wav"}

ATT.Sights = {
    {
        Pos = Vector(3.9, 0, 5),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.PhysBulletMuzzleVelocityMult = 0.75
ATT.PenetrationMult = 0
ATT.DamageMaxMult = 3
ATT.DamageMinMult = 2
ATT.RangeMult = 0.5

ATT.ClipSizeOverride = 1
ATT.ChamberSizeOverride = 0

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_bow"
end
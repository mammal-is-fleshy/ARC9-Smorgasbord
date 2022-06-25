ATT.PrintName = "Ranger Receiver"
ATT.CompactName = "Ranger"
ATT.Icon = Material("")
ATT.Description = [[I have no idea why you would want to convert your gun into a crossbow, but here's the option to do so anyway. We'll even throw in explosive bolts, free of charge.]]

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

ATT.Firemodes = {
    {
        Mode = 1,
        PrintName = "SINGLE"
    }
}

ATT.PhysBulletMuzzleVelocityMult = 0.25
ATT.PhysBulletDragMult = 0
ATT.AlwaysPhysBulletOverride = true
ATT.PenetrationMult = 0
ATT.DamageMaxMult = 3
ATT.DamageMinMult = 2
ATT.RangeMult = 0.5

ATT.ExplosionDamage = 40
ATT.ExplosionRadius = 128
ATT.ExplosionEffect = "Explosion"

ATT.ClipSizeOverride = 1
ATT.ChamberSizeOverride = 0

ATT.Ammo = "XBowBolt"

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_bow"
end

ATT.NoMuzzleEffect = true
ATT.NoShellEject = true
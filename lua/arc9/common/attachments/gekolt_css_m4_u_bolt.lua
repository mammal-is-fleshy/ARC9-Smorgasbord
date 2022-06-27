ATT.PrintName = "Predator Receiver"
ATT.CompactName = "Predator"
ATT.Icon = Material("")
ATT.Description = [[Converts the rifle to bolt-action in order to improve its... actually, I don't know why you'd want to do this. Here it is anyway.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 6

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_bolt", "noguard"}
ATT.ShootSound = "gekolt_css/m4a1-1.wav"

ATT.ClipSizeOverride = 5

ATT.RPMMult = 50 / 700

ATT.Sights = {
    {
        Pos = Vector(3.8, 0, 5),
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
        PrintName = "BOLT"
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_bolt"
end

ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.Ammo = "SniperRound"

ATT.PhysBulletMuzzleVelocityMult = 2.5
ATT.PenetrationMult = 2
ATT.DamageMaxMult = 1.5
ATT.DamageMinOverride = 120
ATT.RangeMult = 1.5

ATT.Silenced = true



ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.5,-0.3, -18),
        Ang = Angle(-90, 180, 0),
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.5,-0.3, -18),
        Ang = Angle(90, 0, 0),
    },	
}
ATT.PrintName = "Gibhr Receiver"
ATT.CompactName = "Gibhr"
ATT.Icon = Material("")
ATT.Description = [[Extra thicc receiver with two barrels and two firemodes.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 7

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_gih", "pre_muzzed", "noguard"}

ATT.ClipSizeOverride = 60
ATT.ChamberSize = 2

ATT.RecoilMult = 1.5
ATT.DamageMinMult = 1.5
ATT.PhysBulletMuzzleVelocityMult = 1.25

ATT.Firemodes = {
    {
		PrintName = "Alternating",
        Mode = -1,
		RPMMult = 1200 / 700
    },
    {
		PrintName = "Simutaneous",
        Mode = -1,
		NumOverride = 2,
		AmmoPerShot = 2,
		RPMMult = 600 / 700		
    },	
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_gih"
end


ATT.Sights = {
    {
        Pos = Vector(3.4, 0, 5),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Attachments = {
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-2.3, -12),
        Ang = Angle(90, 0, -90),
    },		
}
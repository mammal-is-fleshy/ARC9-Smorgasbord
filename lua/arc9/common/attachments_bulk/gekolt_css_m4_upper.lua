local ATT = {}

ATT = {}

ATT.PrintName = "Prototype Receiver"
ATT.CompactName = "Prototype"
ATT.Description = [[An older design that allows the rifle to take larger bullets. Powerful bullets overpenetrate at close range.]]

ATT.Icon = Material("entities/gekolt_css_m4_u_10.png", "mips smooth")

ATT.SortOrder = 1.5
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_proto", "keep_rs"}
ATT.ShootSound = "gekolt_css/sg550-1.wav"
ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.Hook_TranslateAnimation = function(wep, anim) 

    return anim .. "_proto"

end

ATT.ClipSizeOverride = 20

ATT.DamageMaxMult = 0.925
ATT.DamageMinMult = 4.5
ATT.RangeMinMult = 1.25
ATT.RangeMaxMult = 0.95
ATT.PhysBulletMuzzleVelocityMult = 1.34
ATT.RPMMult = 520/700
ATT.RecoilUpMult = 1.5
ATT.RecoilSideMult = 0.5
ATT.RecoilPatternDriftMult = 2

ATT.Ammo = "ar2"

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_10")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Logistic Receiver"
ATT.CompactName = "Logi"
ATT.Description = [[Old-fashioned receiver for old-fashioned people. It only works in three-round burst mode. Pretty lousy.]]

ATT.Icon = Material("entities/gekolt_css_m4_u_a1.png", "mips smooth")

ATT.SortOrder = 0.5
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_a1", "keep_rs"}

ATT.Firemodes = {
    {
        Mode = 3,
    }
}
ATT.RunawayBurst = true
ATT.PostBurstDelay = 0.2

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_a1"
end

ATT.ClipSizeOverride = 20

ATT.RPMMult = 1.5
ATT.RecoilMult = 0.8

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_a1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Experimental Receiver"
ATT.CompactName = "Exr"
ATT.Description = [[Extremely fictional-non-fictional receiver armed with duplex ammunition stacked in a 40-Rounder
May or may not deal double damage.]]

ATT.Icon = Material("entities/gekolt_css_m4_u_acr.png", "mips smooth")

ATT.SortOrder = 0.75
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_acr", "keep_rs"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_acr"
end

ATT.ClipSizeOverride = 40

ATT.DamageRand = 2

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_acr")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Chimera Receiver"
ATT.CompactName = "Chimera"
ATT.Icon = Material("entities/gekolt_css_m4_u_ak.png", "mips smooth")
ATT.Description = [[A receiver modification bridging the gap between East and West by allowing your rifle to take AK-47 magazines.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 3

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.MuzzleParticle = "muzzleflash_ak47"
ATT.ActivateElements = {"up_ak"}
ATT.ShootSound = "gekolt_css/ak47-1.wav"

// ATT.ClipSizeOverride = 30

ATT.RecoilMult = 1.5
ATT.DamageMinMult = 1.5
ATT.DamageMaxMult = 1.25
ATT.PhysBulletMuzzleVelocityMult = 1.25
ATT.RPMMult = 600 / 700

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_ak"

end

ATT.Ammo = "ar2"

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_ak")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Predator Receiver"
ATT.CompactName = "Predator"
ATT.Icon = Material("entities/gekolt_css_m4_u_bolt.png", "mips smooth")
ATT.Description = [[Converts the rifle to bolt-action in order to improve its... ehhhhhhhhhh
Comes with a built-in suppressor.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 6

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_bolt", "noguard", "pre_muzzed", "short_clamp"}
ATT.ShootSound = "gekolt_css/cs5_sup-1.wav"

ATT.ClipSizeOverride = 5

ATT.RPMMult = 60 / 700

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
        PrintName = "BOLT",
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_bolt"
end

ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.Ammo = "SniperRound"

ATT.PhysBulletMuzzleVelocityMult = 2.5
ATT.PenetrationMult = 2
ATT.DamageMaxMult = 2
ATT.DamageMinMult = 150/20
ATT.RangeMult = 2
ATT.SpreadMultSights = 0.5

ATT.Silenced = true

ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.5,-0.3, -18),
        Ang = Angle(90, 180, 0),
        ExtraSightDistance = 10			
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.5,-0.3, -18),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 10	
    },	

    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.95, -18),
        Ang = Angle(90, 0, -90),
        ExtraSightDistance = 10		
    },		
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_bolt")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Ranger Receiver"
ATT.CompactName = "Ranger"
ATT.Icon = Material("entities/gekolt_css_m4_u_bow.png", "mips smooth")
ATT.Description = [[Why would you want to convert your gun into a crossbow? 
Armed with explosive bolts because.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 7

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_bow", "noguard", "nogrip", "pre_muzzed", "short_clamp", "akantbo"}
ATT.ShootSound = {"gekolt_css/cross_fire.wav"}

ATT.Sights = {
    {
        Pos = Vector(0, 6, -5.9),
        Ang = Angle(0, 0, 0),
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

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_pdw"
end

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(1, 0, -2)
ATT.ModelAngleOffset = Angle(90, 0, -90)
ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_bow.mdl"



ATT.PhysBulletMuzzleVelocityMult = 0.25
ATT.PhysBulletDragMult = 0
ATT.AlwaysPhysBulletOverride = true
ATT.PenetrationMult = 0
ATT.DamageMaxMult = 3
ATT.DamageMinMult = 2
ATT.RangeMult = 0.5

ATT.ExplosionDamage = 60
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

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_bow")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Gibhr Receiver"
ATT.CompactName = "Gibhr"
ATT.Icon = Material("entities/gekolt_css_m4_u_gih.png", "mips smooth")
ATT.Description = [[Extra thicc receiver with two barrels and two firemodes.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 7

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_gih", "pre_muzzed", "noguard", "short_clamp"}

ATT.ClipSizeOverride = 60
ATT.ChamberSize = 2

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
        Pos = Vector(0,-2.3, -10.5),
        Ang = Angle(90, 0, -90),
    },		
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_gih")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Defiant Receiver"
ATT.CompactName = "Defiant"
ATT.Icon = Material("entities/gekolt_css_m4_u_pdw.png", "mips smooth")
ATT.Description = [[PDW is such a concept
Turns your M4 into a non-PDW length PDW firing from P90 magazines.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_pdw", "noguard", "nogrip", "short_clamp", "akantbo", "alt_optic"}
ATT.ShootSound = "gekolt_css/p90-1.wav"
ATT.MuzzleParticle = "muzzleflash_smg"

ATT.ClipSizeOverride = 50

ATT.RPMMult = 900 / 700

ATT.Sights = {
    {
        Pos = Vector(0, 6, -5.495),
        Ang = Angle(0, 0, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_pdw"
end

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-1, 0, -2.25)
ATT.ModelAngleOffset = Angle(90, 0, -90)
ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_cali.mdl"

ATT.RecoilMult = 0.75
ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.75
ATT.RangeMinMult = 0.5
ATT.RangeMaxMult = 1.75

ATT.Ammo = "smg1"

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = "mountr_css",
		InstalledElements = {"no_irons", "no_optic", "optic_main"},
        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
		ExcludeElements = {"fg_saw"},
        Category = {"optic_css_s", "optic_css_m" }, 
		
        Pos = Vector(0,-2.55, -0.5),
        Ang = Angle(90, 0, -90),	
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_pdw")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Shrike Receiver"
ATT.CompactName = "Shrike"
ATT.Icon = Material("entities/gekolt_css_m4_u_lmg.png", "mips smooth")
ATT.Description = [[Upper receiver that takes a 120-round box magazine, effectively giving you a light machine gun. Its main purpose is looking cool.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 4

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_lmg", "akantbo", "alt_optic"}
ATT.ShootSound = "gekolt_css/m249-1.wav"

ATT.ClipSizeOverride = 120
ATT.AimDownSightsTimeMult = 1.5
ATT.SprintToFireTimeMult = 1.5
ATT.SpeedMult = 0.9
ATT.RecoilPatternDriftMult = 3

ATT.ActivePosOverride = Vector(-0.5, 2, -0.5)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_lmg"
end

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = "mountr_css",
		InstalledElements = {"no_irons", "no_optic", "optic_main"},
        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
		ExcludeElements = {"fg_saw"},
        Category = {"optic_css_s", "optic_css_m" }, 
		
        Pos = Vector(0, -2.5, -0.05),
        Ang = Angle(90, 0, -90),	
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_lmg")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Little Italy Receiver"
ATT.CompactName = "Perosa"
ATT.Icon = Material("entities/gekolt_css_m4_u_perosa.png", "mips smooth")
ATT.Description = [[Twin barrel 9mm madness.
Comes with a preinstalled grip for recoil control.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 7

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_perosa", "pre_muzzed", "noguard", "nogrip", "short_clamp"}
ATT.ShootSound = "gekolt_css/mp5-1.wav"
ATT.ShootSoundSilenced = "gekolt_css/tmp-1.wav"
ATT.MuzzleParticle = "muzzleflash_smg"

ATT.ClipSizeOverride = 64
ATT.ChamberSize = 2

ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.5
ATT.RangeMinMult = 1.15
ATT.RangeMaxMult = 0.65

ATT.RecoilMult = 0.5

ATT.Ammo = "pistol"
ATT.ModelBodygroups = "0"

ATT.Firemodes = {
    {
		PrintName = "Alternating",
        Mode = -1,
		RPMMult = 1800 / 700
    },
    {
		PrintName = "Simutaneous",
        Mode = -1,
		NumOverride = 2,
		AmmoPerShot = 2,
		RPMMult = 900 / 700		
    },	
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_perosa"
end


ATT.Sights = {
    {
        Pos = Vector(0, 17, -4.9),
        Ang = Angle(0, 0, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Model = "models/weapons/geckololt_css/atts/fg.mdl"
ATT.ModelOffset = Vector(12.25, 0, -1.5)
ATT.ModelAngleOffset = Angle(90, 0, -90)


ATT.LHIK_Priority = 10
ATT.LHIK = true

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_perosa")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Breacher Receiver"
ATT.CompactName = "Breacher"
ATT.Icon = Material("entities/gekolt_css_m4_u_pump.png", "mips smooth")
ATT.Description = [[Compliment breaching device for your primary.
Usually these are installed under the handguard.
Not going to stop you from instaling it directly on the receiver]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 5

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_pump", "noguard", "nogrip", "akantbo"}
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

ATT.Firemodes = {
    {
        Mode = 1,
        PrintName = "PUMP"
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

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_pump")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Sweeper Receiver"
ATT.CompactName = "Sweeper"
ATT.Icon = Material("entities/gekolt_css_m4_u_sg.png", "mips smooth")
ATT.Description = [[The lord shan't forgive your sins.
Of course it comes with a drum magazine.
In case you haven't figure it out, it's an automatic shotgun receiver.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 5

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_sg", "noguard", "keep_rs", "akantbo"}
ATT.MuzzleParticle = "muzzleflash_shotgun"
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
ATT.DamageMaxMult = 0.45
ATT.DamageMinMult = 0.45

ATT.RecoilMult = 4
ATT.RecoilPatternDriftMult = 5

ATT.Ammo = "buckshot"

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_sg")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Blackout Receiver"
ATT.CompactName = "Blackout"
ATT.Icon = Material("entities/gekolt_css_m4_u_sd.png", "mips smooth")
ATT.Description = [[Interally suppressed total conversion for barrel and receiver that chambers the gun in .300 Blackout.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_sd", "noguard", "pre_muzzed"}
ATT.ShootSound = "gekolt_css/hb_sd.wav"

ATT.MuzzleParticleOverride = "muzzleflash_suppressed"

ATT.RPMMult = 650/700
ATT.RangeMaxMult = 0.75
ATT.RangeMinMult = 0.9

ATT.DamageMaxMult = 1.25
ATT.DamageMinMult = 0.5

ATT.RecoilMult = 1.05

ATT.Ammo = "357"

ATT.Attachments = {
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.8, -12),
        Ang = Angle(90, 0, -90),
    },		
}

ATT.Hook_TranslateAnimation = function(wep, anim)
	if anim == "reload_empty" then return "reload_empty_sd" end	
end


ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_sd")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Ancillary Receiver"
ATT.CompactName = "Aux"
ATT.Icon = Material("entities/gekolt_css_m4_u_smg.png", "mips smooth")
ATT.Description = [[An adapter slapped onto a standard magwell to accept lower calibre.
For scenarios where you need to downgrade your rifle.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_9mm"}
ATT.ShootSound = "gekolt_css/mp5-1.wav"
ATT.ShootSoundSilenced = "gekolt_css/tmp-1.wav"
ATT.MuzzleParticle = "muzzleflash_smg"

ATT.ClipSizeOverride = 32

ATT.RPMMult = 900 / 700

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_smg"

end

ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.5
ATT.RangeMinMult = 1.15
ATT.RangeMaxMult = 0.65

ATT.RecoilMult = 0.65

ATT.Ammo = "pistol"

ARC9.LoadAttachment(ATT, "gekolt_css_m4_u_smg")
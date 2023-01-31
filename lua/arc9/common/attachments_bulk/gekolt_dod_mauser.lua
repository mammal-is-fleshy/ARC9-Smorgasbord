local ATT = {}

ATT = {}

ATT.PrintName = [[Kantschapper-Gestell]]
ATT.CompactName = [[Malorian]]
ATT.Icon = Material("entities/gekolt_dod_c96_cyber.png", "mips smooth")
ATT.Description = [[Return to the basic with a peculiarity
Magically increases damage in the name of style.
]]

ATT.SortOrder = 1
ATT.Category = "dod_mauser_frame"
ATT.ActivateElements = {"f_edge"}

ATT.Firemodes = { { Mode = 1, } }

ATT.ClipSizeOverride = 5

ATT.RPMMult = 300/800
ATT.RecoilMult = 3
ATT.RecoilSideMult = 8
ATT.RecoilRandomSideMult = 0.75/0.3

ATT.DamageMaxMult = 92/34
ATT.DamageMinMult = 60/19 

ATT.MovingPosOverride = Vector(0, 4.5, -0.1)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.SprintAngOverride = Angle(-10, 60, -5)
ATT.SprintPosOverride = Vector(0.5, 4, -9)

ATT.CrouchPosOverride = Vector(-0.5, 4.5, -1)
ATT.CrouchAngOverride = Angle(0, 0, -10)

ATT.ActivePosOverride = Vector(0, 5, 0)
ATT.ActiveAngOverride = Angle(0, 0, 0)
ATT.ReloadNoSprintPos = true

ATT.Scale = 1
ATT.ModelOffset = Vector(-25, -2, -7.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_edge"
end

ARC9.LoadAttachment(ATT, "gekolt_css_mauser_f1")



ATT = {}

ATT.PrintName = [[Kundschafter-Gestell]] -- it means scout methinks whatev
ATT.CompactName = [[SD]]
ATT.Icon = Material("entities/gekolt_dod_c96_sd.png", "mips smooth")
ATT.Description = [[No, you cannae have a normal pistol configuration
Also removed full-auto for you.
]]

ATT.SortOrder = 1
ATT.Category = "dod_mauser_frame"
ATT.ActivateElements = {"f_sd", "pre_muzzed"}

ATT.Firemodes = { { Mode = 1, } }

ATT.MovingPosOverride = Vector(0, 4.5, -0.1)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.SprintAngOverride = Angle(-10, 60, -5)
ATT.SprintPosOverride = Vector(0.5, 4, -7)

ATT.CrouchPosOverride = Vector(-0.5, 4.5, -1)
ATT.CrouchAngOverride = Angle(0, 0, -10)

ATT.ActivePosOverride = Vector(0, 5, 0)
ATT.ActiveAngOverride = Angle(0, 0, 0)
ATT.ReloadNoSprintPos = true

ATT.ShootSound = "gekolt_css/usp1.wav"
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"

ATT.ClipSizeOverride = 15

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-25, -2, -5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"

ARC9.LoadAttachment(ATT, "gekolt_css_mauser_f11")

------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Karabiner-Gestell]]
ATT.CompactName = [[Carbine]]
ATT.Icon = Material("entities/gekolt_dod_c96_carbine.png", "mips smooth")
ATT.Description = [[An attempt to modernise a rusty old pistol with a more stable but lower rate of fire and a long top rail system for full length optics
Drum magazine is the only real solution.
]]

ATT.SortOrder = 1
ATT.Category = "dod_mauser_frame"
ATT.ActivateElements = {"f_carbine", "pre_optic", "akantbo"}

ATT.Firemodes = { { Mode = -1, } }

ATT.ClipSizeOverride = 80

ATT.RPMMult = 700/800

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-7, -3.8, 5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_mauser.mdl"
ATT.ModelBodygroups = "123320"

ATT.MovingPosOverride = Vector(-0.5, 4.5, -0.9)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.ActivePosOverride = Vector(-0.5, 5, -1)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.CrouchPosOverride = Vector(-0.5, 4.5, -2.5)
ATT.CrouchAngOverride = Angle(0, 0, -10)

ATT.SprintAngOverride = Angle(40, -15, -10)
ATT.SprintPosOverride = Vector(1.25, 4, -1.5)

ATT.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"has_optic"},	
		
        Category = {"optic_css"},
        Pos = Vector(0, -3.85, 0),
        Ang = Angle(90, 0, -90),		
    },	
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.25, -2.15, -7.25),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 5			
    },		
	
    {
        PrintName = "Foregrip",
        DefaultName = "None",

        Category = {"grip_css"}, 
        Pos = Vector(0, 0.3, -7),
        Ang = Angle(90, 0, -90),		
    },		
}


ATT.Sights = {
    {
        Pos = Vector(-3.85, 4, 0.1),
        Ang = Angle(0, 0, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}
ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_roni"
end

ARC9.LoadAttachment(ATT, "gekolt_css_mauser_f2")


------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Aufplatzen-Gestell]]
ATT.CompactName = [[Burst]]
ATT.Icon = Material("entities/gekolt_dod_c96_burst.png", "mips smooth")
ATT.Description = [[Aftermarket three-round burst system straight from the favelas of Brazil
Grip is added to emotionally help you.
]]

ATT.SortOrder = 1
ATT.Category = "dod_mauser_frame"
ATT.ActivateElements = {"f_brazil"}

ATT.Firemodes = { { Mode = 3, } }
ATT.RunawayBurst = true
ATT.PostBurstDelay = 0.2

ATT.ClipSizeOverride = 20

ATT.RPMMult = 1200/800

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_brazil"
end

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-8, -2.05, 4)
ATT.ModelAngleOffset = Angle(90, -90, 12.5)
ATT.Model = "models/weapons/geckololt_css/grip/garand_romania.mdl"

ARC9.LoadAttachment(ATT, "gekolt_css_mauser_f3")


------------------------------------------------------------

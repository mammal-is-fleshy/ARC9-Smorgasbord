local ATT = {}

ATT = {}

ATT.PrintName = [[Kantschapper-Gestell]]
ATT.CompactName = [[Malorian]]
//ATT.Icon = Material("entities/gekolt_css_m9_f_auto.png", "mips smooth")
ATT.Description = [[ongewoon
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

ATT.DamageMaxMult = 95/26
ATT.DamageMinMult = 60/16 

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.ActivePosOverride = Vector(0, 5, 0)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.Scale = 1
ATT.ModelOffset = Vector(-25, -2, -7.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_edge"
end

ARC9.LoadAttachment(ATT, "gekolt_css_mauser_f1")


------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Karabiner-Gestell]]
ATT.CompactName = [[Carbine]]
//ATT.Icon = Material("entities/gekolt_css_m9_f_auto.png", "mips smooth")
ATT.Description = [[ongewoon
]]

ATT.SortOrder = 1
ATT.Category = "dod_mauser_frame"
ATT.ActivateElements = {"f_carbine", "pre_optic", "akantbo"}

ATT.Firemodes = { { Mode = -1, } }

ATT.ClipSizeOverride = 80

ATT.RPMMult = 700/800
ATT.RecoilMult = 3
ATT.RecoilSideMult = 8
ATT.RecoilRandomSideMult = 0.75/0.3

ATT.DamageMaxMult = 95/26
ATT.DamageMinMult = 60/16 

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-10, -2.1, 4.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"

ATT.ActivePosOverride = Vector(-0.5, 5, -1)
ATT.ActiveAngOverride = Angle(0, 0, 0)


ATT.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"has_optic"},	
		
        Category = {"optic_css"},
        Pos = Vector(0, -3.85, 0),
        Ang = Angle(90, 0, -90),		
    },		
}


ATT.Sights = {
    {
        Pos = Vector(-2.15, 0, -0.475),
        Ang = Angle(0, 0, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}
ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_carbine"
end

ARC9.LoadAttachment(ATT, "gekolt_css_mauser_f2")


------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Aufplatzen-Gestell]]
ATT.CompactName = [[Burst]]
//ATT.Icon = Material("entities/gekolt_css_m9_f_auto.png", "mips smooth")
ATT.Description = [[Straight from Brazil
]]

ATT.SortOrder = 1
ATT.Category = "dod_mauser_frame"
ATT.ActivateElements = {"f_brazil"}

ATT.Firemodes = { { Mode = 3, } }

ATT.ClipSizeOverride = 20

ATT.RPMMult = 1200/800

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_brazil"
end

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-8, -1.75, 4)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/grip/garand_romania.mdl"

ARC9.LoadAttachment(ATT, "gekolt_css_mauser_f3")


------------------------------------------------------------

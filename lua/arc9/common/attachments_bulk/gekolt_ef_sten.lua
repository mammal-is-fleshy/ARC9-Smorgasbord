local ATT = {}
--[[

Note:
Volkstutzen - MP3008
Prototype - MK1
Viper/Adder - MK4
Ezpieg - Sterling (polish because              ehhhhhhhh)
Walcaster - Salad Mender (Voorlopig Ontwerp[Provisional Design]   /    'First' Running Design) 

]]

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Walcaster-Frame"
ATT.CompactName = "Salad Mender"
ATT.Icon = Material("entities/gekolt_ef_sten_saladmender.png", "mips smooth")
ATT.Description = [[Belt-fed mechanicsm bollocks
Requires a heavier trigger to fire]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 30
ATT.ExcludeElements = {"pre_maglow"}

ATT.Sights = {
    {
        Pos = Vector(-2.8475, -1, 1.2),
        Ang = Angle(0, 0, -10),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-10.5, -3.75, 6.5)
ATT.ModelAngleOffset = Angle(0, 0, 10)
ATT.Model = "models/weapons/geckololt_css/c_sten_ik3.mdl"
ATT.ModelBodygroups = "0000000"

ATT.TriggerDelay = true
ATT.TriggerDelayTime = 0.07
ATT.TriggerDownSound = "gekolt_css/weaponclick.wav"
//ATT.TriggerUpSound = "gekolt_css/sliderelease.wav"

ATT.ClipSizeOverride = 90
ATT.AimDownSightsTimeMult = 1.5
ATT.SprintToFireTimeMult = 1.5
ATT.SpeedMult = 0.9
ATT.RecoilPatternDriftMult = 3

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_lmg"
end

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_mk5", "pre_stock", "no_maglow"}

ARC9.LoadAttachment(ATT, "gekolt_ef_sten_lmg")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Ezpieg-Frame"
ATT.CompactName = "Sterling"
ATT.Icon = Material("entities/gekolt_ef_sten_sterling.png", "mips smooth")
ATT.Description = [[50 year old submachine gun lol]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Sights = {
    {
        Pos = Vector(-2.275, 7, 2.32),
        Ang = Angle(0, 0, -10),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_sterling"
end

ATT.LHIK = true
ATT.LHIK_Priority = 0
ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-10.5, -3, 6.5)
ATT.ModelAngleOffset = Angle(0, 0, 10)
ATT.Model = "models/weapons/geckololt_css/c_sten_ik2.mdl"
ATT.ModelBodygroups = "0000000"

ATT.ActivePosOverride = Vector(0, 8, 0.5)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.MovingPosOverride = Vector(0, 7.5, 0.5)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.CrouchPos = Vector(-0.5, 7.5, -1)
ATT.CrouchAng = Angle(0, 0, -10)

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_sterling","pre_muzzed",  "pre_stock",  "pre_barrel",  "pre_hg"}

ARC9.LoadAttachment(ATT, "gekolt_ef_sten_ster")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Volkstutzen-Frame"
ATT.CompactName = "3008"
ATT.Icon = Material("entities/gekolt_ef_sten_mp3008.png", "mips smooth")
ATT.Description = [[Captured militian modification, they even fixed the sight for you
Verticle design requires slower cycling
Magically jammed in 2 more bullets.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2
ATT.ExcludeElements = {"pre_maglow"}

ATT.ClipSizeOverride = 32
ATT.RPMMult = 550/600

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_3008", "no_maglow"}

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_3008"
end

ARC9.LoadAttachment(ATT, "gekolt_ef_sten_3008")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Viper-Frame"
ATT.CompactName = "MK4"
ATT.Icon = Material("entities/gekolt_ef_sten_mk4.png", "mips smooth")
ATT.Description = [[The uzi at home:]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 3

ATT.ClipSizeOverride = 15

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_mk4"
end

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_mk4", "pre_stock", "pre_hg"}

ATT.LHIK = true
ATT.LHIK_Priority = 0
ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-10.5, -3.4, 6.45)
ATT.ModelAngleOffset = Angle(0, 0, 10)
ATT.Model = "models/weapons/geckololt_css/c_sten_ik1.mdl"
ATT.ModelBodygroups = "0000000"


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_mk4")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Owen Frame"  --im not going to put some lame ass aussie stereotype         am i?
ATT.CompactName = "Owen"
ATT.Icon = Material("entities/gekolt_ef_sten_owen.png", "mips smooth")
ATT.Description = [[Why the mag like]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 4

ATT.ClipSizeOverride = 25
ATT.RPMMult = 900/600
//ATT.CaseEffectQCA = 3

ATT.Sights = {
    {
        Pos = Vector(-4, 1.5, 2.85),
        Ang = Angle(0, 0, 0), -- tilt it a bit
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.LHIK = true
ATT.LHIK_Priority = 0
ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-10.5, -3.4, 6.45)
ATT.ModelAngleOffset = Angle(0, 0, 10)
ATT.Model = "models/weapons/geckololt_css/c_sten.mdl"
ATT.ModelBodygroups = "56570000000"

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_owen"
end

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_owen", "pre_stock", "pre_hg"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_owen")






---------------------------------------------------------------------------------- STOCK

ATT = {}

ATT.PrintName = [['Pistol' Stock]]
ATT.CompactName = "PISTOL"
ATT.Icon = Material("entities/gekolt_ef_sten_stock_mk2s.png", "mips smooth")
ATT.Description = [[wnolochy]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "ef_sten_stock" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"s_mk2s"}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-5, -4.5, 7)
ATT.ModelAngleOffset = Angle(0, 0, 5)
ATT.Model = "models/weapons/geckololt_css/c_m18.mdl"
ATT.ModelBodygroups = "223043"


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_s1")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[MK2 Stock]]
ATT.CompactName = "MK2"
ATT.Icon = Material("entities/gekolt_ef_sten_stock_mk2.png", "mips smooth")
ATT.Description = [[cymrag]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "ef_sten_stock" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"s_mk2"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_s2")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Wooden Stock]]
ATT.CompactName = "WOOD"
ATT.Icon = Material("entities/gekolt_ef_sten_stock_wood.png", "mips smooth")
ATT.Description = [[cymrag]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "ef_sten_stock" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"s_wood"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_s3")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Prototype Stock]]
ATT.CompactName = "PROTO"
ATT.Icon = Material("entities/gekolt_ef_sten_stock_mk1.png", "mips smooth")
ATT.Description = [[cymrag]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "ef_sten_stock" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"s_mk1"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_s4")












---------------------------------------------------------------------------------- HANDGUARD

ATT = {}

ATT.PrintName = [[Wooden Handguard]]
ATT.CompactName = "WOOD"
ATT.Icon = Material("entities/gekolt_ef_sten_grip_wood.png", "mips smooth")
ATT.Description = [[wood]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "ef_sten_hg" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"hg_wood"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_low1")

---------------------------------------------------------------------------------- 

ATT = {}

ATT.PrintName = [[No Handguard]]
ATT.CompactName = "NO"
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[just no]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "ef_sten_hg" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"hg_no"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_low2")

---------------------------------------------------------------------------------- 

ATT = {}

ATT.PrintName = [[Walcaster Handguard]]
ATT.CompactName = "PROTO"
ATT.Icon = Material("entities/gekolt_ef_sten_grip_mk1.png", "mips smooth")
ATT.Description = [[First tested iteration, bulky
Heavier grip negates the ability to reload like a retard.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 3
ATT.ExcludeElements = {"f_mk5", "f_3008"}

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(5, 0, -1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/geckololt_css/atts/fg.mdl"
ATT.ModelBodygroups = "100000000000"


ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_mk1"
end

ATT.Category = "ef_sten_hg" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"hg_mk1" ,"pre_maglow", "no_maglow" ,    "pre_frame"}  -- only works on the normal frame anyway

ARC9.LoadAttachment(ATT, "gekolt_ef_sten_low3")















---------------------------------------------------------------------------------- Barrel

ATT = {}

ATT.PrintName = [[Walcaster Barrel]]
ATT.CompactName = "PROTO"
//ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[mk1]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "ef_sten_barrel" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"b_mk1", "pre_muzzed"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_b1")

---------------------------------------------------------------------------------- 

ATT = {}

ATT.PrintName = [[MK3 Barrel]]
ATT.CompactName = "MK3"
ATT.Icon = Material("entities/gekolt_ef_sten_barrel_mk1.png", "mips smooth")
ATT.Description = [[mk3]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 3

ATT.Category = "ef_sten_barrel" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"b_mk3"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_b2")

---------------------------------------------------------------------------------- 

ATT = {}

ATT.PrintName = [[MK2 Barrel]]
ATT.CompactName = "MK2"
ATT.Icon = Material("entities/gekolt_ef_sten_barrel_mk2.png", "mips smooth")
ATT.Description = [[mk2]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "ef_sten_barrel" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"b_mk2"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_b3")

---------------------------------------------------------------------------------- 

ATT = {}

ATT.PrintName = [[Owen Barrel]]
ATT.CompactName = "OWEN"
ATT.Icon = Material("entities/gekolt_ef_sten_barrel_owen.png", "mips smooth")
ATT.Description = [[owen]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 4

ATT.Category = "ef_sten_barrel" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"b_owen"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_b4")

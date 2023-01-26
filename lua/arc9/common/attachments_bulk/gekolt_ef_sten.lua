local ATT = {}

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "LMG-Frame"
ATT.CompactName = "Salad Mender"
//ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[Belt-fed mechanicsm bollocks
Heavier trigger is required]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 30

ATT.Sights = {
    {
        Pos = Vector(5.3, 0.02, 12),
        Ang = Angle(89.5, 0, -90),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

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
ATT.ActivateElements = {"f_mk5"}

ARC9.LoadAttachment(ATT, "gekolt_ef_sten_lmg")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Sterling Frame"
ATT.CompactName = "Sterling"
//ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[50 year old submachine gun lol]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 30

ATT.Sights = {
    {
        Pos = Vector(4.2, 0, 18),
        Ang = Angle(90, 0, -90),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_sterling","pre_muzzed"}

ARC9.LoadAttachment(ATT, "gekolt_ef_sten_ster")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Machinenpistole Frame"
ATT.CompactName = "3008"
//ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[The peoples]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 30

ATT.ClipSizeOverride = 32

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_3008"}

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_3008"
end

ARC9.LoadAttachment(ATT, "gekolt_ef_sten_3008")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Mk1 Frame"
ATT.CompactName = "MK1"
//ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[What]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 30


ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_mk1","pre_muzzed"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_mk1")


----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Mk4 Frame"
ATT.CompactName = "MK4"
//ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[The uzi at home:]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 30

ATT.ClipSizeOverride = 15

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_mk4"
end

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_mk4"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_mk4")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Owen Frame"
ATT.CompactName = "Owen"
//ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[Why the mag like]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 30

ATT.Sights = {
    {
        Pos = Vector(3.5, 1.16, 15),
        Ang = Angle(90, 0, -90),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_owen"
end

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_owen","pre_optic"}


ARC9.LoadAttachment(ATT, "gekolt_ef_sten_owen")

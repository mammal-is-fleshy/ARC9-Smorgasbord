local ATT = {}

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Tranchante-Charpente"
ATT.CompactName = "Vanguard"
ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[Extra short experimental module for paratrooper with extra funky definitely non-foldable stock]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = -1

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_vanguard"}

ATT.DrawFunc = function(swep, model, wm) end


ATT.RecoilMult = 0.775/0.75
ATT.RecoilKickMult = 3.1/3

ATT.AimDownSightsTimeMult = 0.8
ATT.SprintToFireTimeMult = 0.75

ARC9.LoadAttachment(ATT, "gekolt_dod_garand_vanguard")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Chasseuse-Charpente"
ATT.CompactName = "YSL"
ATT.Icon = Material("entities/gekolt_dod_garand_m14.png", "mips smooth")
ATT.Description = [["Prototype" of a Mag-Fed conversion, fitted with 20 rounders capable of full-auto]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ShootSound = "gekolt_dod/m1carbine_shoot.wav"
ATT.ActivateElements = {"garand_m14", "ubgl_maghold"}
ATT.MuzzleParticle = "muzzleflash_smg"

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 500/300
ATT.Firemodes = {
    {
        Mode = 1
    },
    {
        Mode = -1,
    }
}
ATT.ClipSizeOverride = 20
ATT.ChamberSizeOverride = 1

ATT.DamageMaxMult = 45/80
ATT.DamageMinMult = 22/30
ATT.RecoilMult = 1/0.75
ATT.RecoilKickMult = 2/3

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.15

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_308"
end

ARC9.LoadAttachment(ATT, "gekolt_dod_garand_m14")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Sportive-Charpente"
ATT.CompactName = "SCF"
ATT.Icon = Material("entities/gekolt_dod_garand_mini.png", "mips smooth")
ATT.Description = [[Modernised Mag-Fed system loaded in a lower calibre]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ShootSound = "gekolt_dod/m1carbine_shoot1.wav"
ATT.ActivateElements = {"garand_mini", "ubgl_maghold"}
ATT.MuzzleParticle = "muzzleflash_smg"

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 650/300
ATT.Firemodes = {
    {
        Mode = -1
    },
    {
        Mode = 1,
    }
}
ATT.ClipSizeOverride = 30
ATT.ChamberSizeOverride = 1

ATT.DamageMaxMult = 32/80
ATT.DamageMinMult = 18/30
ATT.RecoilMult = 0.5/0.75
ATT.RecoilKickMult = 1.5/3

ATT.AimDownSightsTimeMult = 0.95
ATT.SprintToFireTimeMult = 0.95

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_mini"
end




ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-7.5, -2, 3)
ATT.ModelAngleOffset = Angle(120, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"

ARC9.LoadAttachment(ATT, "gekolt_dod_garand_min")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Trancheuse-Charpente"
ATT.CompactName = "SLAM"
ATT.Icon = Material("entities/gekolt_dod_garand_slam.png", "mips smooth")
ATT.Description = [[Unholy creation for all your trench sweeping needs. Both the enemies and your allies will be confused]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 3

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_slam"}
ATT.MuzzleParticle = "muzzleflash_shotgun"
ATT.ShootSound = "gekolt_dod/1887_fire01.wav"
ATT.ShellModelOverride = "models/shells/shell_12gauge.mdl"
ATT.ShellScaleOverride = 1

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 120/300
ATT.Firemodes = {
    {
        Mode = 1,
		PrintName = "Pump"		
    },
    {
        Mode = -1,
		PrintName = "SLAM"			
    }
}

ATT.Attachments = {
    {
        PrintName = "Ammo Type",
        DefaultName = "Default Type",		
        Category = {"css_ammo_sg"},
        Pos = Vector(0,2,-3),
        Ang = Angle(0, 0, 0),
    },		
}

ATT.ClipSizeOverride = 7

ATT.FreeAimRadiusAdd = 5
ATT.NumOverride = 10
ATT.SpreadAdd = 0.0175
ATT.DamageMaxMult = 12/80
ATT.DamageMinMult = 6/30

ATT.RecoilMult = 3

ATT.Ammo = "buckshot"

ATT.ShotgunReload = true

ATT.Hook_TranslateAnimation = function(wep, anim)
	if anim == "reload_start_empty" then return "reload_start_empty_slam" end
	if anim == "reload_insert_1" then return "reload_insert_slam" end
	if anim == "reload_insert_5" then return "reload_insert_slam_5" end	
    return anim .. "_slam"
end

ARC9.LoadAttachment(ATT, "gekolt_dod_garand_slam")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Charognarde-Charpente"
ATT.CompactName = "SCAV"
ATT.Icon = Material("entities/gekolt_dod_garand_romania.png", "mips smooth")
ATT.Description = [[Coversion to a lever action high calibre with a fixed magazine, stripper load only]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 4

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_sks", "nogrip", "ubgl_maghold"}

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 60/300
ATT.Firemodes = {
    {
        Mode = 1,	
    },
}

ATT.ClipSizeOverride = 12
ATT.ChamberSizeOverride = 1

ATT.DamageMaxMult = 105/80
ATT.DamageMinMult = 45/30
ATT.RecoilMult = 0.8/0.7
ATT.RecoilKickMult = 2.5/3

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 1.05

ATT.ShotgunReload = true

ATT.Hook_TranslateAnimation = function(wep, anim)
	if anim == "reload_start_empty" then return "reload_start_empty_sks" end
	if anim == "reload_insert_1" then return "reload_insert_sks_1" end
	if anim == "reload_insert_5" then return "reload_insert_sks_5" end
	
    return anim .. "_sks"
end


ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-6.5, -2, 1.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/grip/garand_romania.mdl"

ARC9.LoadAttachment(ATT, "gekolt_dod_garand_strip")


----------------------------------------------------------------------------------

-- EXTRA --

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Rail"
ATT.CompactName = "O"
ATT.Description = [[Railing without attachments]]

ATT.Icon = Material("")

ATT.SortOrder = -900
ATT.Category = {"grip_css_free"}

ARC9.LoadAttachment(ATT, "gekolt_dod_grip_air")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Rail"
ATT.CompactName = "O"
ATT.Description = [[Railing without attachments.]]

ATT.Icon = Material("")

ATT.SortOrder = -900
ATT.Category = {"optic_css_free"}


ARC9.LoadAttachment(ATT, "gekolt_dod_optic_air")

----------------------------------------------------------------------------------

local ATT = {}

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Tranchante-Charpente"
ATT.CompactName = "Vanguard"
ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[Extra short experimental paratrooper model with extra funky definitely non-foldable stock.
Modified loader can quickly eject non-empty clips in a spectacular but wasteful fashion.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = -1

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_vanguard"}

ATT.SwayAdd = -0.3
ATT.FreeAimRadiusAdd = -5
ATT.SwayAddMove = -0.4
ATT.SwayMultSights = 2

ATT.SpreadAdd = 0.003

ATT.RecoilMult = 1.15
ATT.SpreadMultRecoil = 1.1
ATT.RecoilMultRecoil = 0.9

ATT.AimDownSightsTimeAdd = -0.04
ATT.SprintToFireTimeAdd = -0.06

ATT.RPM = 360

ATT.RangeMin = 750
ATT.RangeMax = 6000

ARC9.LoadAttachment(ATT, "gekolt_dod_garand_vanguard")

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_vanguard"
end


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Chasseuse-Charpente"
ATT.CompactName = "YSL"
ATT.Icon = Material("entities/gekolt_dod_garand_m14.png", "mips smooth")
ATT.Description = [[Select-fire prototype that accepts box magazines. This model has a curious short barrel that makes it resemble a later US military rifle.

Integrity of your shoulder is not guaranteed if you dare touch that fire selector.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_m14", "ubgl_maghold"}

-- ATT.ShootSound = "gekolt_dod/m1carbine_shoot.wav"
-- ATT.MuzzleParticle = "muzzleflash_smg"

ATT.RPM = 600
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

ATT.RangeMin = 1000
ATT.RangeMax = 7500

ATT.RecoilDissipationRateMult = 0.75
ATT.SpreadMultRecoil = 1.15

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_308"
end

ARC9.LoadAttachment(ATT, "gekolt_dod_garand_m14")


----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Sportive-Charpente"
ATT.CompactName = "SCF"
ATT.Icon = Material("entities/gekolt_dod_garand_mini.png", "mips smooth")
ATT.Description = [["Modernized" carbine model firing intermediate cartridges from STANAG magazines. Short barrel and pistol grip improves handling noticeably.
A travesty of a conversion, but at least it has an auto sear that won't dislocate your shoulder.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ShootSound = "gekolt_dod/m1carbine_shoot1.wav"
ATT.ActivateElements = {"garand_mini", "ubgl_maghold"}
ATT.MuzzleParticle = "muzzleflash_smg"

ATT.Ammo = "smg1"

ATT.RPMMult = 650 / 300
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

ATT.Spread = 0.0015
ATT.SpreadAddHipFire = -0.005

ATT.FreeAimRadiusAdd = -4
ATT.SwayAdd = -0.2
ATT.SwayAddMove = -0.25

ATT.RecoilUp = 0.3
ATT.RecoilSide = 0.15
ATT.RecoilDissipationRate = 15
ATT.SpreadAddRecoil = -0.002
ATT.SpreadMultRecoil = 0.85
ATT.RecoilMultRecoil = 0.63
ATT.RecoilModifierCap = 14

ATT.DamageMax = 35
ATT.DamageMin = 20

ATT.RangeMin = 500
ATT.RangeMax = 4000

ATT.AimDownSightsTimeAdd = -0.04
ATT.SprintToFireTimeAdd = -0.05

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
ATT.Description = [[Unholy creation for all your trench sweeping needs.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 3

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_slam"}
ATT.MuzzleParticle = "muzzleflash_shotgun"
ATT.ShootSound = "gekolt_dod/1887_fire01.wav"
ATT.ShellModelOverride = "models/shells/shell_12gauge.mdl"
ATT.ShellScaleOverride = 1

ATT.RPM = 100
ATT.RPMEmpty = 600
ATT.Firemodes = {
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
ATT.ChamberSizeOverride = 1

ATT.FreeAimRadiusAdd = 5
ATT.NumOverride = 10
ATT.SpreadAdd = 0.0175
ATT.DamageMaxMult = 12 / 80
ATT.DamageMinMult = 6 / 30

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


ATT.RPM = 60
ATT.RPMEmpty = 600

ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ATT.ClipSizeOverride = 12
ATT.ChamberSizeOverride = 1

ATT.DamageMaxMult = 105 / 80
ATT.DamageMinMult = 45 / 30
ATT.RecoilMult = 3
ATT.RecoilKickMult = 1.5

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


ATT = {}

ATT.PrintName = "Rocheux-Pierreux-Charpente"
ATT.CompactName = "M1000"
ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[Futuristic garage kit made for space mining operations.
Modified trigger and gas system can fire two shots at once after charging briefly.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 5

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_drg"}

-- need reload anim to support
-- ATT.ClipSize = 14

ATT.DamageMax = 60
ATT.DamageMin = 40

ATT.RecoilMult = 0.75
ATT.RecoilMultRecoil = 0.9

ATT.NumHeated = 2
ATT.AmmoPerShotHeated = 2
ATT.RPMMultHeated = 0.3
ATT.RecoilMultHeated = 2.5
ATT.RecoilKickHeated = 2

ATT.TriggerDelay = true
ATT.TriggerDelayTime = 0
ATT.TriggerDelayCancellable = false
ATT.TriggerDelayReleaseToFire = true

ATT.Overheat = true
ATT.HeatPerShot = 0
ATT.HeatCapacity = 1
ATT.HeatDissipation = 0
ATT.HeatLockout = false
ATT.HeatDelayTime = 0

ATT.Hook_Think = function(wep)
    if not IsFirstTimePredicted() then return end

    local primedAttack = wep:GetPrimedAttack()
    if primedAttack then
        wep:SetHeatAmount(math.min(1, wep:GetHeatAmount() + engine.TickInterval() * 2))
    else
        wep:SetHeatAmount(0)
        wep:SetJammed(false)
    end
end

ATT.Firemodes = {
    {
        Mode = 1,
        PrintName = "FOCUS",
    },
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    if wep:GetHeatAmount() == 1 then
        return anim .. "_focus"
    else
        return anim .. "_drg"
    end
end

ARC9.LoadAttachment(ATT, "gekolt_dod_garand_drg")


----------------------------------------------------------------------------------

-- EXTRA --

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Rail"
ATT.CompactName = "O"
ATT.Description = [[Railing without attachments]]

ATT.Icon = Material("entities/gekolt_css_mount_side.png", "mips smooth")

ATT.SortOrder = -900
ATT.Category = {"grip_css_free"}

ARC9.LoadAttachment(ATT, "gekolt_dod_grip_air")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Rail"
ATT.CompactName = "O"
ATT.Description = [[Railing without attachments]]

ATT.Icon = Material("entities/gekolt_css_mount_side.png", "mips smooth")

ATT.SortOrder = -900
ATT.Category = {"optic_css_free"}


ARC9.LoadAttachment(ATT, "gekolt_dod_optic_air")

----------------------------------------------------------------------------------

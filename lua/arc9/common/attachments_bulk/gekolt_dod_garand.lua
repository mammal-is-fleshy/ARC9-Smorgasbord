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

ATT.SpreadAdd = 0.004

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

ATT.Firemodes = {
    {
        Mode = 1
    },
    {
        Mode = -1,
        RPMMult = 2
    }
}
ATT.ClipSizeOverride = 20
ATT.ChamberSizeOverride = 1

ATT.SpreadAdd = 0.0025

ATT.RangeMin = 1000
ATT.RangeMax = 7500

ATT.AimDownSightsTimeAdd = -0.02
ATT.SprintToFireTimeAdd = 0.02

ATT.RecoilDissipationRateMult = 0.75
ATT.SpreadMultRecoil = 1.15

ATT.FreeAimRadiusAdd = -2

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_308"
end

ATT.Hook_PrimaryAttack = function(wep)
    if SERVER and wep:GetBurstCount() > 5 and math.random() <= (wep:GetBurstCount() - 5) * 0.0025 then
        -- YOU BROKE YOUR SHOULDERS, IDIOT.
        wep:GetOwner():EmitSound("vo/npc/male01/myarm0" .. math.random(1, 2) .. ".wav", 75)
        local dmg = DamageInfo()
        dmg:SetAttacker(wep:GetOwner())
        dmg:SetInflictor(wep)
        dmg:SetDamage(math.random(15, 25))
        dmg:SetDamageType(DMG_GENERIC)
        wep:GetOwner():TakeDamageInfo(dmg)
        wep:GetOwner():ViewPunch(Angle(20, -10, 5))
        -- can't do it right now because the gun isn't done firing yet
        timer.Simple(0, function()
            if IsValid(wep) and IsValid(wep:GetOwner()) then
                wep:GetOwner():DropWeapon(wep, nil, wep:GetOwner():GetForward() * -200 + VectorRand() * 50 + Vector(0, 0, 150))
            end
        end)
    end
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

ATT.RPM = 650
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

ATT.SpreadAdd = 0.0015
ATT.SpreadAddHipFire = -0.012

ATT.FreeAimRadiusAdd = -4
ATT.SwayAdd = -0.2
ATT.SwayAddMove = -0.25

ATT.RecoilUp = 0.3
ATT.RecoilSide = 0.15
ATT.RecoilDissipationRate = 15
ATT.SpreadAddRecoil = -0.003
ATT.SpreadMultRecoil = 0.95
ATT.RecoilMultRecoil = 0.6
ATT.RecoilModifierCap = 10

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
ATT.Description = [[Unholy creation for all your trench sweeping needs.
Still goes ping even though it doesn't use clips anymore. This is because - *dies of cringe*

Somewhere in the afterlife, John Garand is weeping for your sins (yes, that is his real name).]]

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

ATT.ClipSizeOverride = 5
ATT.ChamberSizeOverride = 1

ATT.FreeAimRadiusAdd = 2
ATT.NumOverride = 10
ATT.SpreadAdd = 0.0175
ATT.DamageMax = 12
ATT.DamageMin = 6

ATT.RecoilMult = 3
ATT.RecoilModifierCap = 2

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
ATT.Description = [[Lever action conversion that could only have come from the hands of some Eastern European crackhead. A wooden "dong" grip is somehow carved onto the frame for stability.
Fires a sniper cartridge that overpenetrates up close, and can only be loaded from the top.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 4

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_sks", "nogrip", "ubgl_maghold"}


ATT.RPM = 45
ATT.RPMEmpty = 600

ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ATT.ClipSizeOverride = 12
ATT.ChamberSizeOverride = 1

ATT.SwayAdd = -0.05
ATT.SwayAddMove = 0.1
ATT.SwayMultSights = 0.75

ATT.FreeAimRadiusAdd = -2

ATT.DamageMax = 40
ATT.DamageMin = 80
ATT.RangeMin = 500
ATT.RangeMax = 2500

ATT.RecoilMult = 2
ATT.RecoilKickMult = 1.5
ATT.RecoilMultRecoil = 0.6
ATT.RecoilModifierCap = 3

ATT.AimDownSightsTimeAdd = -0.03
ATT.SprintToFireTimeAdd = 0.025

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

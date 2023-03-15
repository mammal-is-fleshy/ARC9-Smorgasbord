local ATT = {}

ATT = {}

ATT.PrintName = [[Buckshot]]
ATT.CompactName = [[SG]]
ATT.Icon = Material("entities/gekolt_css_ammo/shotgun.png", "mips smooth")
ATT.Description = [[Oversized buckshot round for your angry explosive tube
Explosive privilege revoked. 
]]

ATT.Attachments = {
    {
        PrintName = "Ammo Type",
        DefaultName = "Default Type",
        Category = {"css_ammo_sg"},
        Pos = Vector(0,3,0),
        Ang = Angle(0, 0, 0),
    },
}


ATT.SortOrder = 1
ATT.Category = "fas2_m79_ammo"
ATT.ActivateElements = {"a_12g"}

ATT.Ammo = "buckshot"

ATT.PhysBulletMuzzleVelocityOverride = 2900 * 12
ATT.PhysBulletGravityOverride = 1
ATT.PhysBulletDragOverride = 1

ATT.SpreadAdd = 0.02

ATT.PenetrationOverride = 1
ATT.RicochetChanceOverride = 0.25

ATT.NumOverride = 32

ATT.DamageMaxOverride = 20
ATT.DamageMinOverride = 5
ATT.RangeMinOverride = 750
ATT.RangeMaxOverride = 10000

ATT.PhysBulletModelOverride = false
ATT.ImpactDecalOverride = ""

ATT.SuppressSmokeTrail = true

ATT.ExplosionDamageOverride = 0
ATT.ExplosionEffect = false

ATT.ShootSoundOverride = {"cturix_m79/fire_buck_large-1.wav", "cturix_m79/fire_buck_large-2.wav", "cturix_m79/fire_buck_large-3.wav", "cturix_m79/fire_buck_large-4.wav"}
ATT.ShellSoundsOverride = {"cturix_m79/shotshell_large-1.wav", "cturix_m79/shotshell_large-2.wav", "cturix_m79/shotshell_large-3.wav", "cturix_m79/shotshell_large-4.wav"}


ATT.MuzzleParticleOverride = "muzzleflash_shotgun"

ATT.TracerColor = Color(255, 225, 200)
ATT.TracerSize = 1

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_a1")



ATT = {}

ATT.PrintName = [[Rifle Round]]
ATT.CompactName = [[308]]
ATT.Icon = Material("entities/gekolt_fas2_m79_rifle.png", "mips smooth")
ATT.Description = [[Reconfigurate the not revolver into something
similar.
]]

ATT.SortOrder = 1
ATT.Category = "fas2_m79_ammo2"
ATT.ActivateElements = {"a_308"}

ATT.Ammo = "357"

ATT.SpreadMult = 0.1

ATT.PenetrationOverride = 12
ATT.RicochetChanceOverride = 1

ATT.NumOverride = 1

ATT.DamageMaxOverride = 65
ATT.DamageMinOverride = 34
ATT.RangeMinOverride = 750
ATT.RangeMaxOverride = 10000

ATT.PhysBulletModelOverride = false
ATT.ImpactDecalOverride = ""

ATT.SuppressSmokeTrail = true

ATT.ExplosionDamageOverride = 0
ATT.ExplosionEffect = false

ATT.ShootSound = "gekolt_css/deagle-1.wav"

ATT.MuzzleParticleOverride = "muzzleflash_minimi"

ATT.TracerColor = Color(255, 225, 200)
ATT.TracerSize = 1

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_a2")


------------------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Pirate-Kit]]
ATT.CompactName = [[Pirate]]
ATT.Icon = Material("entities/gekolt_fas2_m79_pirate.png", "mips smooth")
ATT.Description = [[Removes and shortens everything
The Magic™️ auto eject is no more.
]]

ATT.SortOrder = 1
ATT.Category = "fas2_m79_frame"
ATT.ActivateElements = {"f_pirate", "nogrip"}
ATT.SpeedMultShootingMult = 0.7 / 0.6


ATT.MovingPosOverride = Vector(0, 4.5, -0.1)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.SprintAngOverride = Angle(-10, 60, -5)
ATT.SprintPosOverride = Vector(0.5, 4, -6)

ATT.CrouchPosOverride = Vector(-0.5, 4.5, -1)
ATT.CrouchAngOverride = Angle(0, 0, -10)

ATT.ActivePosOverride = Vector(0, 5, 0)
ATT.ActiveAngOverride = Angle(0, 0, 0)
ATT.ReloadNoSprintPos = true

ATT.Scale = 1
ATT.ModelOffset = Vector(-50, -2, -7.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"

ATT.Hook_TranslateAnimation = function(wep, anim) -- mang fuck that shit
    return anim .. "_pirate"
end

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_f1")


------------------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Alofs]]
ATT.CompactName = [[Alofs]]
ATT.Icon = Material("entities/gekolt_fas2_m79_alof.png", "mips smooth")
ATT.Description = [[An overbulking attempt to compete the classic outdated grenade launcher with the modern auto grenade launchers
China Lakes are too expensive.
]]

ATT.SortOrder = 1
ATT.Category = "fas2_m79_frame"
ATT.ActivateElements = {"f_alofs", "nogrip"}
ATT.ClipSizeOverride = 5
ATT.ManualAction = true
ATT.ShotgunReload = true
ATT.ManualActionNoLastCycle = true

ATT.Hook_TranslateAnimation = function(wep, anim) -- mang fuck that shit
    return anim .. "_alofs"
end

ATT.LHIK = true
ATT.LHIK_Priority = 0
ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-14, -2.75, 2.2)
ATT.ModelAngleOffset = Angle(90, -90, -5)
ATT.Model = "models/weapons/geckololt_css/grip/m79_alofs.mdl"

ATT.Sights = {
    {
        Pos = Vector(-2.95, -2, 0.05),
        Ang = Angle(-0.25, -2.5, 5),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_f2")

------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[MTS]]
ATT.CompactName = [[MTS]]
ATT.Icon = Material("entities/gekolt_fas2_m79_mts.png", "mips smooth")
ATT.Description = [[There are guns, that look like other guns
This isn't it mate
The inclusive urge to bundle a revolver is too great to ignore. - definitely not the author
]]


ATT.ShellModel = nil
ATT.SortOrder = 1
ATT.Category = "fas2_m79_frame"
ATT.ActivateElements = {"f_mts", "pre_ammo"}

ATT.ClipSizeOverride = 5
ATT.Ammo = "buckshot"

ATT.PhysBulletMuzzleVelocityOverride = 3100 * 12
ATT.PhysBulletGravityOverride = 1
ATT.PhysBulletDragOverride = 1
ATT.SpeedMultShooting = 0.8 / 0.6

ATT.SpreadAdd = 0.02

ATT.PenetrationOverride = 1
ATT.RicochetChanceOverride = 0.25

ATT.NumOverride = 12

ATT.DamageMaxOverride = 23
ATT.DamageMinOverride = 10
ATT.RangeMinOverride = 750
ATT.RangeMaxOverride = 10000

ATT.PhysBulletModelOverride = false
ATT.ImpactDecalOverride = ""

ATT.SuppressSmokeTrail = true

ATT.ExplosionDamageOverride = 0
ATT.ExplosionEffect = false

ATT.ShootSoundOverride = {"cturix_m79/fire_buck_small_long-1.wav", "cturix_m79/fire_buck_small_long-2.wav", "cturix_m79/fire_buck_small_long-3.wav", "cturix_m79/fire_buck_small_long-4.wav"}
ATT.ShellSoundsOverride = {"cturix_m79/shotshell_large-1.wav", "cturix_m79/shotshell_large-2.wav", "cturix_m79/shotshell_large-3.wav", "cturix_m79/shotshell_large-4.wav"}

ATT.MuzzleParticleOverride = "muzzleflash_shotgun"

ATT.TracerColor = Color(255, 225, 200)
ATT.TracerSize = 1

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-12, -2.75, 3)
ATT.ModelAngleOffset = Angle(90, -90, -5)
ATT.Model = "models/weapons/geckololt_css/c_m79.mdl"
ATT.ModelBodygroups = "14324022"

ATT.Sights = {
    {
        Pos = Vector(-2.855, -2, 1.75),
        Ang = Angle(0, 0, 5),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Attachments = {
    {
        PrintName = "Ammo",
        DefaultName = "12 Gauge",

        Category = {"fas2_m79_ammo2", "css_ammo_sg"},
        Bone = "W_Main",
        Pos = Vector(0, 0, 4),
        Ang = Angle(0, 0, 0),
    },
}
ATT.Hook_TranslateAnimation = function(wep, anim) -- mang fuck that shit
	if anim == "reload" then return "reload_mts" end
	if anim == "reload_empty" then return "reload_mts" end
	if anim == "fire" then return "fire_rev" end
	if anim == "fire_iron" then return "fire_rev" end
end

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_f3")

------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[MTS-S]]
ATT.CompactName = [[MTS-S]]
ATT.Icon = Material("entities/gekolt_fas2_m79_mtss.png", "mips smooth")
ATT.Description = [[The inclusive urge to bundle an actual revolver is too great to ignore
Break action is easier to animate, that's it.
]]

ATT.ShellModel = nil
ATT.SortOrder = 1
ATT.Category = "fas2_m79_frame"
ATT.ActivateElements = {"f_mtss", "pre_ammo", "nogrip"}

ATT.ClipSizeOverride = 5
ATT.Ammo = "buckshot"

ATT.PhysBulletMuzzleVelocityOverride = 2900 * 12
ATT.PhysBulletGravityOverride = 1
ATT.PhysBulletDragOverride = 1
ATT.SpeedMultShootingMult = 0.9 / 0.6

ATT.SpreadAdd = 0.03

ATT.PenetrationOverride = 1
ATT.RicochetChanceOverride = 0.25

ATT.NumOverride = 8

ATT.DamageMaxOverride = 23
ATT.DamageMinOverride = 10
ATT.RangeMinOverride = 750
ATT.RangeMaxOverride = 10000

ATT.PhysBulletModelOverride = false
ATT.ImpactDecalOverride = ""

ATT.SuppressSmokeTrail = true

ATT.ExplosionDamageOverride = 0
ATT.ExplosionEffect = false

ATT.ShootSoundOverride = {"cturix_m79/fire_buck_small1.wav", "cturix_m79/fire_buck_small2.wav", "cturix_m79/fire_buck_small3.wav"}
ATT.ShellSoundsOverride = {"cturix_m79/shotshell_large-1.wav", "cturix_m79/shotshell_large-2.wav", "cturix_m79/shotshell_large-3.wav", "cturix_m79/shotshell_large-4.wav"}

ATT.MuzzleParticleOverride = "muzzleflash_shotgun"

ATT.TracerColor = Color(255, 225, 200)
ATT.TracerSize = 0.5


ATT.Hook_TranslateAnimation = function(wep, anim) -- mang fuck that shit
	if anim == "reload" then return "reload_rev" end
	if anim == "reload_empty" then return "reload_rev" end
	if anim == "fire" then return "fire_rev" end
	if anim == "fire_iron" then return "fire_rev" end
end

ATT.MovingPosOverride = Vector(0, 4.5, -0.1)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.SprintAngOverride = Angle(-10, 60, -5)
ATT.SprintPosOverride = Vector(0.5, 4, -6)

ATT.CrouchPosOverride = Vector(-0.5, 4.5, -1)
ATT.CrouchAngOverride = Angle(0, 0, -10)

ATT.ActivePosOverride = Vector(0, 5, 0)
ATT.ActiveAngOverride = Angle(0, 0, 0)
ATT.ReloadNoSprintPos = true

ATT.Scale = 1
ATT.ModelOffset = Vector(-50, -2, -7.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"


ATT.Attachments = {
    {
        PrintName = "Ammo",
        DefaultName = "12 Gauge",

        Category = {"fas2_m79_ammo2", "css_ammo_sg"},
        Bone = "W_Main",
        Pos = Vector(0, 0, 4),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_f4")

------------------------------------------------------------------------------------------
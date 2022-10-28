local ATT = {}

ATT = {}

ATT.PrintName = [[Buckshot]]
ATT.CompactName = [[SG]]
//ATT.Icon = Material("entities/gekolt_css_m9_f_auto.png", "mips smooth")
ATT.Description = [[Shotguno
]]

ATT.SortOrder = 1
ATT.Category = "fas2_m79_ammo"
ATT.ActivateElements = {"a_12g"}

ATT.Ammo = "buckshot"

ATT.PhysBulletMuzzleVelocityOverride = 8000
ATT.PhysBulletGravityOverride = 1
ATT.PhysBulletDragOverride = 1

ATT.SpreadAdd = 0.02

ATT.PenetrationOverride = 1
ATT.RicochetChanceOverride = 0.25

ATT.NumOverride = 40

ATT.DamageMaxOverride = 20
ATT.DamageMinOverride = 5
ATT.RangeMinOverride = 750
ATT.RangeMaxOverride = 10000

ATT.PhysBulletModelOverride = false
ATT.ImpactDecalOverride = ""

ATT.SuppressSmokeTrail = true

ATT.ExplosionDamageOverride = 0
ATT.ExplosionEffect = false

ATT.ShootSound = "gekolt_css/xm1014-1.wav"

ATT.MuzzleParticleOverride = "muzzleflash_shotgun"

ATT.TracerColor = Color(255, 225, 200)
ATT.TracerSize = 1


ATT.Hook_TranslateAnimation = function(wep, anim) -- mang fuck that shit	
	if anim == "reload_revolver" then return "reload_buck_revolver" end		
end

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_a1")


------------------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Pirate]]
ATT.CompactName = [[Pirate]]
//ATT.Icon = Material("entities/gekolt_css_m9_f_auto.png", "mips smooth")
ATT.Description = [[Short
]]

ATT.SortOrder = 1
ATT.Category = "fas2_m79_frame"
ATT.ActivateElements = {"f_pirate"}



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
//ATT.Icon = Material("entities/gekolt_css_m9_f_auto.png", "mips smooth")
ATT.Description = [[Agony
]]

ATT.SortOrder = 1
ATT.Category = "fas2_m79_frame"
ATT.ActivateElements = {"f_alofs"}
ATT.ClipSizeOverride = 5
ATT.ManualAction = true

ATT.Hook_TranslateAnimation = function(wep, anim) -- mang fuck that shit
    return anim .. "_alofs"
end

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_f2")

------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[MTS]]
ATT.CompactName = [[MTS]]
//ATT.Icon = Material("entities/gekolt_css_m9_f_auto.png", "mips smooth")
ATT.Description = [[how
]]

ATT.SortOrder = 1
ATT.Category = "fas2_m79_frame"
ATT.ActivateElements = {"f_mts"}

ATT.ClipSizeOverride = 5
ATT.Ammo = "buckshot"

ATT.PhysBulletMuzzleVelocityOverride = 8000
ATT.PhysBulletGravityOverride = 1
ATT.PhysBulletDragOverride = 1

ATT.SpreadAdd = 0.02

ATT.PenetrationOverride = 1
ATT.RicochetChanceOverride = 0.25

ATT.NumOverride = 15

ATT.DamageMaxOverride = 23
ATT.DamageMinOverride = 10
ATT.RangeMinOverride = 750
ATT.RangeMaxOverride = 10000

ATT.PhysBulletModelOverride = false
ATT.ImpactDecalOverride = ""

ATT.SuppressSmokeTrail = true

ATT.ExplosionDamageOverride = 0
ATT.ExplosionEffect = false

ATT.ShootSound = "gekolt_css/xm1014-1.wav"

ATT.MuzzleParticleOverride = "muzzleflash_shotgun"

ATT.TracerColor = Color(255, 225, 200)
ATT.TracerSize = 1

ATT.Hook_TranslateAnimation = function(wep, anim) -- mang fuck that shit
    return anim .. "_mts"
end

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_f3")

------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[MTS-S]]
ATT.CompactName = [[MTS-S]]
//ATT.Icon = Material("entities/gekolt_css_m9_f_auto.png", "mips smooth")
ATT.Description = [[HOW
]]

ATT.SortOrder = 1
ATT.Category = "fas2_m79_frame"
ATT.ActivateElements = {"f_mtss"}

ATT.ClipSizeOverride = 5
ATT.Ammo = "buckshot"

ATT.PhysBulletMuzzleVelocityOverride = 8000
ATT.PhysBulletGravityOverride = 1
ATT.PhysBulletDragOverride = 1

ATT.SpreadAdd = 0.02

ATT.PenetrationOverride = 1
ATT.RicochetChanceOverride = 0.25

ATT.NumOverride = 15

ATT.DamageMaxOverride = 23
ATT.DamageMinOverride = 10
ATT.RangeMinOverride = 750
ATT.RangeMaxOverride = 10000

ATT.PhysBulletModelOverride = false
ATT.ImpactDecalOverride = ""

ATT.SuppressSmokeTrail = true

ATT.ExplosionDamageOverride = 0
ATT.ExplosionEffect = false

ATT.ShootSound = "gekolt_css/xm1014-1.wav"

ATT.MuzzleParticleOverride = "muzzleflash_shotgun"

ATT.TracerColor = Color(255, 225, 200)
ATT.TracerSize = 1

ATT.Hook_TranslateAnimation = function(wep, anim) -- mang fuck that shit
    return anim .. "_mtss"
end

ARC9.LoadAttachment(ATT, "gekolt_fas2_m79_f4")

------------------------------------------------------------------------------------------
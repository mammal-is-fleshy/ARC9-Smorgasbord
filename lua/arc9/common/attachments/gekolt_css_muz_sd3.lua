ATT.PrintName = "Suppressor C"
ATT.CompactName = "SUPP. BEN"
ATT.Icon = Material("entities/gekolt_css_muz_sd3.png", "mips smooth")
ATT.Description = [[Large suppressor]]
ATT.SortOrder = 2

ATT.Model = "models/weapons/geckololt_css/atts/sd_m3.mdl"
ATT.Category = {"muzzle_css", "muzzle_css_shotgun"}

ATT.Scale = 1
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.PhysBulletMuzzleVelocityMult = 0.8
ATT.RangeMaxMult = 1.2
ATT.RangeMinMult = 0.8

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.09
ATT.SwayMult = 1.15

ATT.Silencer = true
ATT.ShootVolumeMult = 0.75
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilRandomMult = 0.95
ATT.ShootPitchMult = 1.05
ATT.ShootVolumeMult = 0.85
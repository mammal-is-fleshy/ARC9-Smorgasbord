ATT.PrintName = "Suppressor D"
ATT.CompactName = "SUPP. DECH"
ATT.Icon = Material("entities/gekolt_css_muz_sd4.png", "mips smooth")
ATT.Description = [[Sniper suprressor]]
ATT.SortOrder = 2

ATT.Model = "models/weapons/geckololt_css/atts/sd_sniper.mdl"
ATT.Category = {"muzzle_css", "muzzle_css_shotgun"}

ATT.Scale = 1
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.PhysBulletMuzzleVelocityMult = 0.6
ATT.RangeMaxMult = 1.25
ATT.RangeMinMult = 0.75

ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.15
ATT.SwayMult = 1.2

ATT.Silencer = true

ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 0.85
ATT.RecoilRandomMult = 0.8
ATT.ShootPitchMult = 1.1
ATT.ShootVolumeMult = 0.65
ATT.PrintName = "Bird Cage"
ATT.CompactName = "FLASH: CAGE"
ATT.Description = [[Improves stability on sustaining fire]]

ATT.Icon = Material("entities/gekolt_css_muz_cage.png", "mips smooth")
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/muz_cage.mdl"
ATT.ModelBodygroups = "0000000"
ATT.Category = "muzzle_css"

ATT.Scale = 1.1
ATT.ModelOffset = Vector(0.25, 0, -0.01)

ATT.ShootVolumeMult = 1.1
--ATT.MuzzleParticleOverride = "muzzleflash_4"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.SwayMultShootingMult = 1.1

ATT.RecoilMult = 1.05
--ATT.RecoilUpMult = 1
ATT.RecoilSideMult = 0.7

ATT.RecoilRandomUpMult = 0.5
ATT.PrintName = "Flash Hider"
ATT.CompactName = "FLASH"
ATT.Description = [[Converts most vertical kick into horizontal
Unstable report.]]

ATT.Icon = Material("entities/gekolt_css_muz_flash.png", "mips smooth")
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/muz_cage.mdl"
ATT.ModelBodygroups = "2"
ATT.Category = "muzzle_css"

ATT.Scale = 1
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.ShootVolumeMult = 0.7
--ATT.MuzzleParticleOverride = "muzzleflash_4"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.SwayMultShootingMult = 2

ATT.RecoilUpMult = 0.5
ATT.RecoilSideMult = 1.25

ATT.RecoilRandomUpMult = 0.8
ATT.RecoilRandomSideMult = 1.2
ATT.VisualRecoilMult = 1.25
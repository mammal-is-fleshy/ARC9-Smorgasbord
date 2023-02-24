ATT.PrintName = "Heavy Muzzle Break"
ATT.CompactName = "BRAKE: HARV"
ATT.Description = [[Muzzle device designed to compensate DMR/Sniper Rifle recoil
Renders unusable for full auto.]]

ATT.Icon = Material("entities/gekolt_css_muz_heavy.png", "mips smooth")
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/muz_heavy.mdl"
ATT.Category = "muzzle_css"

ATT.Scale = 1
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.ShootVolumeMult = 1.1
--ATT.MuzzleParticleOverride = "muzzleflash_4"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 1.25
ATT.RecoilSideMult = 0.5
ATT.RecoilRandomMult = 2

ATT.RecoilKickMult = 0.2
ATT.VisualRecoilMult = 0.2
ATT.RecoilMultRecoilMult = 1.25
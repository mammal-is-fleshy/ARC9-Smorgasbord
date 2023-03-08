local ATT = {}

ATT = {}

ATT.PrintName = "Breacher"
ATT.CompactName = "FLASH: BEAT"
ATT.Description = [[Spiking muzzle for bashing people]]

ATT.Icon = Material("entities/gekolt_css_muz_breach.png", "mips smooth")
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/muz_breach.mdl"
ATT.Category = "muzzle_css"

ATT.Scale = 1
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.ShootVolumeMult = 1.1
ATT.MuzzleParticleOverride = "muzzleflash_4"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 0.875
ATT.RecoilSideMult = 1.1
ATT.RecoilRandomMult = 1.5

ATT.RecoilKickMult = 0.96
ATT.VisualRecoilMult = 0.9

ARC9.LoadAttachment(ATT, "gekolt_css_muz_breach")

ATT = {}

ATT.PrintName = "Negator"
ATT.CompactName = "BREAK: NALA"
ATT.Description = [[Heavy device improves sustaining recoil]]

ATT.Icon = Material("entities/gekolt_css_muz_negate.png", "mips smooth")
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/muz_negator.mdl"
ATT.Category = "muzzle_css"

ATT.Scale = 1
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.ShootVolumeMult = 1.1
ATT.MuzzleParticleOverride = "muzzleflash_4"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.SwayMultShootingMult = 1.25

ATT.RecoilMult = 0.9
--ATT.RecoilUpMult = 1
ATT.RecoilSideMult = 0.85

ARC9.LoadAttachment(ATT, "gekolt_css_muz_neg")

ATT = {}

ATT.PrintName = "Slanted"
ATT.CompactName = "BREAK: SALM"
ATT.Description = [[Compensator like on that one really famous rifle. Makes the recoil go down]]

ATT.Icon = Material("entities/gekolt_css_muz_long.png", "mips smooth")
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/muz_long.mdl"
ATT.Category = "muzzle_css"

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.ShootVolumeMult = 1.1
--ATT.MuzzleParticleOverride = "muzzleflash_4"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.SwayMultShootingMult = 1.25

ATT.RecoilMult = 0.9
--ATT.RecoilUpMult = 1
ATT.RecoilSideMult = 0.85

ARC9.LoadAttachment(ATT, "gekolt_css_muz_long")

ATT = {}

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

ARC9.LoadAttachment(ATT, "gekolt_css_muz_heavy")

ATT = {}

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

ARC9.LoadAttachment(ATT, "gekolt_css_muz_flash")


ATT = {}

ATT.PrintName = "Compensator"
ATT.CompactName = "COMP"
ATT.Description = [[  ]]

ATT.Icon = Material("entities/gekolt_css_muz_comp.png", "mips smooth")
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/muz_cage.mdl"
ATT.ModelBodygroups = "1"
ATT.Category = "muzzle_css"

ATT.Scale = 1
ATT.ModelOffset = Vector(0.25, 0, -0.01)

ATT.ShootVolumeMult = 1.1
ATT.MuzzleParticleOverride = "muzzleflash_4"
--ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.SwayMultShootingMult = 0.75

ATT.RecoilUpMult = 0.9
ATT.RecoilSideMult = 0.75

ATT.RecoilRandomUpMult = 1.2
ATT.RecoilRandomSideMult = 0.55

ARC9.LoadAttachment(ATT, "gekolt_css_muz_comp")


ATT = {}

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

ARC9.LoadAttachment(ATT, "gekolt_css_muz_cage")









ATT = {}

ATT.PrintName = "Suppressor"
ATT.CompactName = "SUPP. KLON"
ATT.Icon = Material("entities/gekolt_css_muz_sd.png", "mips smooth")
ATT.Description = [[Small suppressor]]
ATT.SortOrder = 2

ATT.Model = "models/weapons/geckololt_css/atts/sd_m.mdl"
ATT.Category = "muzzle_css"

ATT.Scale = 1
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 0.9

ATT.AimDownSightsTimeMult = 1.04
ATT.SprintToFireTimeMult = 1.05

ATT.Silencer = true
ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 1.1
ATT.RecoilRandomMult = 0.9

ARC9.LoadAttachment(ATT, "gekolt_css_muz_sd")

ATT = {}

ATT.PrintName = "Suppressor B"
ATT.CompactName = "SUPP. BARY"
ATT.Icon = Material("entities/gekolt_css_muz_sd2.png", "mips smooth")
ATT.Description = [[Medium suppressor]]
ATT.SortOrder = 2

ATT.Model = "models/weapons/geckololt_css/atts/sd_m2.mdl"
ATT.Category = "muzzle_css"

ATT.Scale = 1
ATT.ModelOffset = Vector(0.25, 0, 0)

ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.RangeMaxMult = 1.1
ATT.RangeMinMult = 0.9

ATT.AimDownSightsTimeMult = 1.075
ATT.SprintToFireTimeMult = 1.095

ATT.Silencer = true
ATT.ShootVolumeMult = 0.75
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 0.95
ATT.RecoilRandomMult = 0.95

ARC9.LoadAttachment(ATT, "gekolt_css_muz_sd2")

ATT = {}

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

ARC9.LoadAttachment(ATT, "gekolt_css_muz_sd3")

ATT = {}

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

ARC9.LoadAttachment(ATT, "gekolt_css_muz_sd4")
ATT.PrintName = "Grenadier Handguard"
ATT.CompactName = "Grenadier"
ATT.Description = [[Half handguard equipped with a prototype grenade launcher]]

ATT.Icon = Material("entities/gekolt_css_m4_h_148.png", "mips smooth")

ATT.SortOrder = 0.2
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_148", "nogrip", "pre_ubgl", "short_clamp"}

ATT.UBGL = true
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "XM148"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110

ATT.SpreadUBGL = 0.0025

ATT.ShootEntUBGL = "gekolt_css_m4_nade"
ATT.ShootEntForceUBGL = 20000
ATT.ShootSoundUBGL = "gekolt_css/deagle-1.wav"

// ATT.HasSightsUBGL = false

ATT.MuzzleParticleUBGL = "muzzleflash_m79"


ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_nor.mdl"
ATT.ModelOffset = Vector(-12, -2.8, 0)
ATT.ModelAngleOffset = Angle(90, 0, -95)


ATT.LHIK_Priority = 5
ATT.LHIK = true

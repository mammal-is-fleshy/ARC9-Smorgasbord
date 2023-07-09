local ATT = {}

ATT = {}

ATT.PrintName = "Naval Handguard"
ATT.CompactName = "Naval"
ATT.Description = [[Take a deep dive in the island hopping campaign of the Pacific.
Improves accuracy and range with moderate penalty to handling.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_t86.png", "mips smooth")

ATT.SortOrder = 15
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_t86"}

ATT.FreeAimRadiusAdd = 1
ATT.SwayAdd = -0.02

ATT.RangeMaxMult = 1.5
ATT.SpreadAdd = -0.0003

ATT.AimDownSightsTimeAdd = 0.01
ATT.SprintToFireTimeAdd = 0.02

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_t86")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "No Handguard"
ATT.CompactName = "No"
ATT.Description = [[Handguards are just another piece of superfluous accessory, you can make do without one.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_sten.png", "mips smooth")

ATT.SortOrder = 0.1
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_sten", "nogrip", "short_clamp"}

ATT.SpeedMult = 1.05

ATT.AimDownSightsTimeAdd = -0.08
ATT.SprintToFireTimeAdd = -0.12

ATT.RangeMaxMult = 0.75
ATT.SwayMult = 1.15
ATT.RecoilMultRecoil = 1.1

ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_rest.mdl"
ATT.ModelOffset = Vector(-16, -2.5, 2)
ATT.ModelAngleOffset = Angle(90, 0, -90)

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.Attachments = {
    {
        PrintName = "Clamp",
        Category = {"clamp_s_css"},
        Pos = Vector(0,0.25, 0.5),
        Ang = Angle(90, 0, -90),
        Icon_Offset = Vector(5, 0, 0)
    },

}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_sten")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Special-Purpose Rifle Handguard"
ATT.CompactName = "SPR"
ATT.Description = [[Short cylinder handguard with lower weight.
Slim and thin, fits right in.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_spr.png", "mips smooth")

ATT.FreeAimRadiusAdd = -1
ATT.SpreadAdd = 0.0005
ATT.RecoilMult = 1.1

ATT.AimDownSightsTimeAdd = -0.01
ATT.SprintToFireTimeAdd = -0.03

ATT.SortOrder = 1
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_spr"}

ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.25,0.2, -4),
        Ang = Angle(90, 180, 0),
        ExtraSightDistance = 7
    },

    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.25,0.2, -4),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 7
    },

    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.1, -3.25),
        Ang = Angle(90, 0, -90),
        ExtraSightDistance = 7
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_spr")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "RIS Handguard"
ATT.CompactName = "RIS"
ATT.Description = [[Railed hanguard for extra mounted devices.
Fitted with four extra rails.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_ris.png", "mips smooth")

ATT.SortOrder = 0.5
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_ris"}

ATT.RecoilMult = 0.95
ATT.SwayAdd = 0.05

ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.25,0.3, -4),
        Ang = Angle(90, 180, 0),
        ExtraSightDistance = 7
    },

    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.25,0.3, -4),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 7
    },

    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.1, -2),
        Ang = Angle(90, 0, -90),
        ExtraSightDistance = 7
    },

    {
        PrintName = "MOUNT Bottom",
        Category = {"tac_css"},
        Pos = Vector(0,1.65, -5),
        Ang = Angle(90, 0, 90),
        ExcludeElements = {"bottom_long"},
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_ris")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Stub Barrel"
ATT.CompactName = "Stub"
ATT.Description = [[It's still longer than what you got down there.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_patriot.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_no", "nogrip", "short_clamp"}

ATT.SpeedMult = 1.1
ATT.SwayMult = 1.15
ATT.AimDownSightsTimeAdd = -0.12
ATT.SprintToFireTimeAdd = -0.15

ATT.RangeMinMult = 0
ATT.RangeMaxMult = 0.3

ATT.PhysBulletMuzzleVelocityMult = 0.5

ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_rest.mdl"
ATT.ModelOffset = Vector(-16, -2.5, 2)
ATT.ModelAngleOffset = Angle(90, 0, -90)


ATT.LHIK_Priority = 5
ATT.LHIK = true

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_patriot")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Targeter Handguard"
ATT.CompactName = "Targeter"
ATT.Description = [[Carbine-length handguard with extra rails and a heatshield.
Improves sustained fire performance slightly.
Despite its name, it doesn't really help that much with targeting.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_lr300.png", "mips smooth")

ATT.SortOrder = 2
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_lr300", "short_clamp"}

ATT.RecoilDissipationRateMult = 1.25
ATT.RecoilRandomSideAdd = 0.25
ATT.RecoilSideAdd = 0.25

ATT.AimDownSightsTimeAdd = 0.01
ATT.SprintToFireTimeAdd = 0.02

ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1,0.3, -8.25),
        Ang = Angle(90, 180, 0),
        ExtraSightDistance = 7
    },

    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1,0.3, -8.25),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 7
    },

    {
        PrintName = "MOUNT Bottom",
        Category = {"tac_css"},
        Pos = Vector(0,1.6, -8.5),
        Ang = Angle(90, 0, 90),
        ExcludeElements = {"bottom_long"},
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_lr300")




----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "LMG Handguard"
ATT.CompactName = "LMG"
ATT.Description = [[Heavy duty handguard designed for long sustained fire.
Less accurate and has more sway.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_lmg.png", "mips smooth")

ATT.SortOrder = 18
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_lmg"}


ATT.RPMMult = 0.9

ATT.FreeAimRadiusAdd = 2.5
ATT.SwayAdd = 0.05

ATT.RangeMaxMult = 1.5
ATT.SpreadAdd = 0.00003
ATT.SpreadAddHipFire = 0.00008

ATT.RecoilMult = 0.8
ATT.SpreadMultRecoil = 0.95
ATT.RecoilMultRecoil = 0.95

ATT.AimDownSightsTimeAdd = 0.04
ATT.SprintToFireTimeAdd = 0.06

ATT.RecoilModifierCapAdd = 5

ATT.FiremodesOverride = {
    {
        Mode = -1,
    },
}
ATT.FiremodesOverride_Priority = 1

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_lmg")




----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Dragoon Handguard"
ATT.CompactName = "Dragoon"
ATT.Description = [[Slim handguard fitted for mounting or moving.
Increases fire rate noticeably at the cost of spread.
Hit them with that driveby whip.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_dragoon.png", "mips smooth")

ATT.SortOrder = 1.2
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_drg"}

ATT.SpreadAdd = 0.0005
ATT.SpreadAddHipFire = 0.0015
ATT.SpreadMultRecoil = 0.98
ATT.RPMMult = 850 / 750
ATT.RecoilMult = 1.15

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_dragoon")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Bulwark Handguard"
ATT.CompactName = "Bulwark"
ATT.Description = [[Short handguard fitted with a peculiar flash guard.
Very short range, but quite easy to handle.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_doe.png", "mips smooth")

ATT.SortOrder = 0.05
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_doe", "short_clamp"}

ATT.RangeMaxMult = 0.75
ATT.RecoilMult = 3

ATT.SpreadAdd = 0.00003
ATT.SpreadAddHipFire = 0.00008

ATT.SpreadMultRecoil = 0.95
ATT.RecoilMultRecoil = 0.95

ATT.AimDownSightsTimeAdd = -0.06
ATT.SprintToFireTimeAdd = -0.1

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_doe")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Marksman Handguard"
ATT.CompactName = "Marksman"
ATT.Description = [[Extended barrel and guard with 4 extra rails.
Superb precision and sway, but fires slower.
Why couldn't they make a regular extended RIS guard?]]

ATT.Icon = Material("entities/gekolt_css_m4_h_bn63.png", "mips smooth")

ATT.SortOrder = 20
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_bn63"}

ATT.RPMMult = 650 / 750

ATT.FreeAimRadiusAdd = 3.5
ATT.SwayAdd = -0.1

ATT.RangeMaxMult = 2
ATT.SpreadAdd = -0.001

ATT.RecoilUpMult = 0.9

ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.25,0.3, -8.25),
        Ang = Angle(90, 180, 0),
        ExtraSightDistance = 10
    },

    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.25,0.3, -8.25),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 10
    },

    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.25, -6.5),
        Ang = Angle(90, 0, -90),
        ExtraSightDistance = 7
    },

    {
        PrintName = "MOUNT Bottom",
        Category = {"tac_css"},
        Pos = Vector(0,2, -9.5),
        Ang = Angle(90, 0, 90),
        -- ExcludeElements = {"bottom_long"},
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_bn63")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Woodsman Handguard"
ATT.CompactName = "Woodsman"
ATT.Description = [[Full length barrel with a sturdy wooden handguard.
Reduces sway considerably, but does not increase range as much.
Doesn't make you wish for a nuclear winter all that much.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_adar.png", "mips smooth")

ATT.SortOrder = 19
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_adar"}

ATT.RPMMult = 700 / 750

ATT.FreeAimRadiusAdd = 2.5
ATT.SwayAdd = -0.15

ATT.RangeMaxMult = 1.5
ATT.SpreadAdd = -0.0006

ATT.RecoilUpMult = 0.9

ATT.AimDownSightsTimeAdd = 0.02
ATT.SprintToFireTimeAdd = 0.04

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_adar")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "ACR Handguard"
ATT.CompactName = "ACR"
ATT.Description = [[Tall full-length barrel and handguard with a cooling device allowing for rapid first shot firing.
Heavy additions hurt handling and sway, and rate of fire is greatly reduced.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_acr.png", "mips smooth")

ATT.SortOrder = 18
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_acr"}


ATT.RPMMult = 600 / 750

ATT.FreeAimRadiusAdd = 3
ATT.SwayAdd = 0.05

ATT.RangeMaxMult = 1.5
ATT.SpreadAdd = -0.0008

ATT.RPMMultFirstShot = 2
ATT.RecoilMultFirstShot = 0.1

ATT.AimDownSightsTimeAdd = 0.03
ATT.SprintToFireTimeAdd = 0.04

ATT.FiremodesOverride = {
    {
        Mode = -1,
    },
    {
        Mode = 2,
        RunawayBurst = true,
        PostBurstDelay = 0.15
    },
}
ATT.FiremodesOverride_Priority = 1

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_acr")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Full-length Handguard"
ATT.CompactName = "Full"
ATT.Description = [[Full length handguard used by turn-of-the-century rifle models.
Comes with an additional fire mode with a higher cycle rate.
Fictional, but probably good enough for your G.I. roleplay.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_a2.png", "mips smooth")

ATT.SortOrder = 20
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_a2"}

ATT.RPMMult = 700 / 750

ATT.FreeAimRadiusAdd = 2.5
ATT.SwayAdd = -0.08

ATT.RangeMaxMult = 1.75
ATT.SpreadAdd = -0.0008

ATT.RecoilUpMult = 0.9

ATT.AimDownSightsTimeAdd = 0.02
ATT.SprintToFireTimeAdd = 0.03

ATT.FiremodesOverride = {
    {
        Mode = -1,
    },
    {
        Mode = 3,
        RPMMult = 850 / 700,
        PostBurstDelay = 0.1,
    },
    {
        Mode = 1,
    },
}
ATT.FiremodesOverride_Priority = 1

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_a2")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Antique Handguard"
ATT.CompactName = "Antique"
ATT.Description = [[It's old, outdated and you want it for your serious anarchist roleplay.
Increases both range and rate of fire, but accuracy suffers greatly.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_a1.png", "mips smooth")

ATT.SortOrder = 16
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_a1"}

ATT.RPMMult = 800 / 750

ATT.FreeAimRadiusAdd = 2.5
ATT.SwayAdd = -0.02

ATT.RangeMaxMult = 1.75

ATT.RecoilUpMult = 0.9

ATT.SpreadAdd = 0.00005
ATT.SpreadAddRecoil = 0.000005
ATT.SpreadAddHipFire = 0.0003

ATT.AimDownSightsTimeAdd = 0.015
ATT.SprintToFireTimeAdd = 0.03

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_a1")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Custodian Handguard"
ATT.CompactName = "F.Hider"
ATT.Description = [[Thin handguard fitted with a peculiar flashhider.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_608.png", "mips smooth")

ATT.SortOrder = 0.15
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_608", "pre_muzzed", "short_clamp"}

ATT.SwayMultShootingMult = 2

ATT.RecoilUpMult = 0.75
ATT.RecoilSideMult = 1.25

ATT.RecoilRandomUpMult = 0.8
ATT.RecoilRandomSideMult = 1.2
ATT.VisualRecoilMult = 1.25

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_608")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Grenadier Handguard"
ATT.CompactName = "Grenadier"
ATT.Description = [[Half handguard equipped with a prototype grenade launcher. Still short as hell.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_148.png", "mips smooth")

ATT.SortOrder = 0.2
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_148", "nogrip", "pre_ubgl", "short_clamp", "akantbo"}

ATT.SprintToFireTimeAdd = 0.05
ATT.AimDownSightsTimeAdd = 0.02
ATT.SwayMult = 1.1

ATT.FreeAimRadiusUBGL = 3

ATT.UBGL = true
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "XM148"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110

ATT.SpreadUBGL = 0.005

ATT.ShootEntUBGL = "gekolt_css_m4_nade"
ATT.ShootEntForceUBGL = 10000
ATT.ShootSoundUBGL = {"cturix_ar15/fire_grenade1.wav", "cturix_ar15/fire_grenade2.wav", "cturix_ar15/fire_grenade3.wav"}
ATT.DistantShootSoundUBGL = {"cturix_ar15/fire_grenade_dist.wav"}

-- ATT.HasSightsUBGL = false

ATT.MuzzleParticleUBGL = "muzzleflash_m79"


ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_nor.mdl"
ATT.ModelOffset = Vector(-12, -2.8, 0)
ATT.ModelAngleOffset = Angle(90, 0, -95)


ATT.LHIK_Priority = 5
ATT.LHIK = true


ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_148")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Precision Handguard"
ATT.CompactName = "Precision"
ATT.Description = [[Long barrel and handguard manufactured for extreme precision.
Very slow fire rate, but ballistic performance is excellent.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_10.png", "mips smooth")

ATT.SortOrder = 21
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_10"}


ATT.RPMMult = 550 / 750

ATT.FreeAimRadiusAdd = 5
ATT.SwayAdd = -0.15

ATT.RangeMinMult = 3
ATT.RangeMaxMult = 2.5
ATT.SpreadAdd = -0.0015

ATT.RecoilUpMult = 0.75

ATT.RecoilDissipationRateMult = 0.8

ATT.AimDownSightsTimeAdd = 0.02
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_10")


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Athena Handguard"
ATT.CompactName = "Athena"
ATT.Description = [[Sharpshooter extention, accuracy comes prepacked.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_athena.png", "mips smooth")

ATT.SortOrder = 21
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_11"}


ATT.RPMMult = 400 / 750

ATT.FreeAimRadiusAdd = 10
ATT.SwayAdd = -0.5

ATT.RangeMinMult = 3.5
ATT.RangeMaxMult = 2
ATT.SpreadAdd = -0.0025

ATT.RecoilUpMult = 0.675

ATT.RecoilDissipationRateMult = 0.95

ATT.AimDownSightsTimeAdd = 0.03
ATT.SprintToFireTimeAdd = 0.075


ATT.Attachments = {
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.25, -6.5),
        Ang = Angle(90, 0, -90),
        ExtraSightDistance = 7
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_11")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


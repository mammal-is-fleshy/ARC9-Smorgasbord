local ATT = {}

ATT = {}

ATT.PrintName = "Naval Handguard"
ATT.CompactName = "Naval"
ATT.Description = [[Take a deep dive in the island hopping campaign of the Pacific.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_dragoon.png", "mips smooth")

ATT.SortOrder = 2.8
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_t86"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_t86")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "?????? Handguard"
ATT.CompactName = "whatshouldicallthishelp"
ATT.Description = [[The T definitely stands for taiwan.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_dragoon.png", "mips smooth")

ATT.SortOrder = 2.85
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_t65"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_t65")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "No Handguard"
ATT.CompactName = "No"
ATT.Description = [[Handguards are a conspiracy to sell more useless gun crap you don't need. You can make do without one.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_sten.png", "mips smooth")

ATT.SortOrder = 0.1
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_sten", "nogrip", "short_clamp"}

ATT.SpeedMult = 1.15
ATT.AimDownSightsTimeMult = 0.8
ATT.SprintToFireTimeMult = 0.85
ATT.PhysBulletMuzzleVelocityMult = 0.5

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
        Icon_Offset = Vector(0, 0, 5)
    },	
	
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_sten")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Special-Purpose Rifle Handguard"
ATT.CompactName = "SPR"
ATT.Description = [[Small and slim, fit right in.
Compact design with three extra rails.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_spr.png", "mips smooth")

ATT.SortOrder = 1
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_spr"}

ATT.RPMMult = 1.05
ATT.RecoilSideMult = 1.25
ATT.SprintToFireTimeMult = 0.95

ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.5,0.2, -4),
        Ang = Angle(90, 180, 0),
        ExtraSightDistance = 7				
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.5,0.2, -4),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 7				
    },	
	
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.3, -3.25),
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


ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.5,0.3, -4),
        Ang = Angle(90, 180, 0),
        ExtraSightDistance = 7		
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.5,0.3, -4),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 7		
    },	
	
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.35, -2),
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

ATT.SpeedMult = 1.25
ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 0.75
ATT.PhysBulletMuzzleVelocityMult = 0.25
ATT.RangeMaxMult = 0.5
ATT.DamageMaxMult = 0.5

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
ATT.Description = [[Despite its name, it doesn't really help that much with targeting.
Fitted with three extra rails.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_lr300.png", "mips smooth")

ATT.SortOrder = 2
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_lr300", "short_clamp"}

ATT.SpreadMultSights = 1.15
ATT.SpreadMultHipFire = 0.75
ATT.RecoilMult = 0.95


ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.25,0.3, -8),
        Ang = Angle(90, 180, 0),
        ExtraSightDistance = 7				
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.25,0.3, -8),
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
ATT.Description = [[Heavy duty handguard designed for long sustaining fire.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_lmg.png", "mips smooth")

ATT.SortOrder = 4
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_lmg"}

ATT.SwayMult = 1.5
ATT.RecoilSideMult = 0.75
ATT.RPMMult = 0.9
ATT.VisualRecoilMult = 0.75

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_lmg")




----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Dragoon Handguard"
ATT.CompactName = "Dragoon"
ATT.Description = [[Design fitted for mounting or moving. 
Hit them with that driveby whip.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_dragoon.png", "mips smooth")

ATT.SortOrder = 1.2
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_drg"}

ATT.AimDownSightsTimeMult = 0.875
ATT.SprintToFireTimeMult = 0.875

ATT.RPMMult = 750/600

ATT.RecoilMult = 1.05

ATT.SpreadMultSights = 1.25
ATT.SwayMult = 1.25

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_dragoon")



----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Bulwark Handguard"
ATT.CompactName = "Bulwark"
ATT.Description = [[Short handguard fitted with a peculiar flash guard.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_doe.png", "mips smooth")

ATT.SortOrder = 0.05
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_doe", "short_clamp"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_doe")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Marksman Handguard"
ATT.CompactName = "Marksman"
ATT.Description = [[Extended guard with 4 extra rails.
Why couln't there be a regular extended RIS guard?]]

ATT.Icon = Material("entities/gekolt_css_m4_h_bn63.png", "mips smooth")

ATT.SortOrder = 7.5
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_bn63"}

ATT.SpreadMultSights = 0.8
ATT.RecoilMult = 0.9

ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.5,0.3, -8),
        Ang = Angle(90, 180, 0),
        ExtraSightDistance = 10				
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.5,0.3, -8),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 10		
    },	
	
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.5, -6.5),
        Ang = Angle(90, 0, -90),
		ExtraSightDistance = 7
    },	

    {
        PrintName = "MOUNT Bottom",
        Category = {"tac_css"},
        Pos = Vector(0,2, -9.5),
        Ang = Angle(90, 0, 90),
		// ExcludeElements = {"bottom_long"},		
    },		
}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_bn63")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Woodsman Handguard"
ATT.CompactName = "Woodsman"
ATT.Description = [[Wooden handguard which magnically increases precision.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_adar.png", "mips smooth")

ATT.SortOrder = 5
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_adar"}

ATT.SpreadMultSights = 0.5
ATT.SwayMult = 0.75

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_adar")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "ACR Handguard"
ATT.CompactName = "ACR"
ATT.Description = [[Special system with a cooling device allowing for rapid two-shot fire.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_acr.png", "mips smooth")

ATT.SortOrder = 2.9
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_acr"}

ATT.AimDownSightsTimeMult = 1.02
ATT.SprintToFireTimeMult = 1.02

ATT.RPMMult = 0.85
ATT.RPMMultFirstShot = 3

ATT.RecoilMult = 1.25
ATT.RecoilMultFirstShot = 0.1

ATT.SpreadMultSights = 0.85
ATT.SwayMult = 0.9

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_acr")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Full-length Handguard"
ATT.CompactName = "Full"
ATT.Description = [[Full length handguard for full length engagement.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_a2.png", "mips smooth")

ATT.SortOrder = 7
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_a2"}

ATT.SpreadMultSights = 0.9
ATT.RPMMult = 0.95
ATT.RecoilMult = 0.85
ATT.RangeMinMult = 1.25
ATT.RangeMaxMult = 1.25

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_a2")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Antique Handguard"
ATT.CompactName = "Antique"
ATT.Description = [[It's old, outdated and you want it for your serious anarchist roleplay.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_a1.png", "mips smooth")

ATT.SortOrder = 3
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_a1"}

ATT.SpreadMultSights = 1.1
ATT.AimDownSightsTimeMult = 1.1
ATT.RecoilMult = 0.9

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_a1")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "???? Handguard"
ATT.CompactName = "F.Hider"
ATT.Description = [[Thin handguard fitted with a peculiar flashhider.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_608.png", "mips smooth")

ATT.SortOrder = 0.15
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_608", "pre_muzzed", "short_clamp"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_608")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Grenadier Handguard"
ATT.CompactName = "Grenadier"
ATT.Description = [[Half handguard equipped with a prototype grenade launcher. Still short as heck]]

ATT.Icon = Material("entities/gekolt_css_m4_h_148.png", "mips smooth")

ATT.SortOrder = 0.2
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_148", "nogrip", "pre_ubgl", "short_clamp", "akantbo"}

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


ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_148")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Precision Handguard"
ATT.CompactName = "Precision"
ATT.Description = [[Older design that's somehow more accurate than new ones. Makes you question the sanity of the devs.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_10.png", "mips smooth")

ATT.SortOrder = 6
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_10"}

ATT.SpreadMultSights = 0.5
ATT.SprintToFireTimeMult = 1.05

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_10")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Bulwark Handguard"
ATT.CompactName = "Bulwark"
ATT.Description = [[Short handguard fitted with a peculiar flash guard.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_doe.png", "mips smooth")

ATT.SortOrder = 0.05
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_doe", "short_clamp"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_h_doe")


----------------------------------------------------------------------------------
ATT.PrintName = "Clamped Rail (Angled)"
ATT.CompactName = "Rail"
ATT.Icon = Material("entities/gekolt_css_mount_clampb.png", "mips smooth")
ATT.Description = [[Extend your handguard even more.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/clamp_angled.mdl"

ATT.Category = {"clamp_css", "clamp_s_css"}
ATT.Max = 4

// Allows a custom sight position to be defined

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Scale = 1

ATT.Attachments = {
    {
        PrintName = "MOUNT Upper Left",
        Category = {"optic_css_s", "tac_css", "mountr_css"},
        Pos = Vector(-1.25, -0.9, -0.9),
        Ang = Angle(0, 0, -45),
        ExtraSightDistance = 10,
        Icon_Offset = Vector(1, 0, 0),
		KeepBaseIrons = true,		
    },
	
    {
        PrintName = "MOUNT Upper Right",
        Category = {"optic_css_s", "tac_css", "mountl_css"},
        Pos = Vector(-1.25, 0.9, -0.9),
        Ang = Angle(0, 0, 45),
        ExtraSightDistance = 10,
        Icon_Offset = Vector(-2, 0, 0),
		KeepBaseIrons = true,		
    },	
	
    {
        PrintName = "MOUNT Lower Left",
        Category = {"tac_css"},
        Pos = Vector(-1.25, -0.9, 0.9),
        Ang = Angle(0, 0, -135),
        Icon_Offset = Vector(1, 0, 0)			
    },	

    {
        PrintName = "MOUNT Lower Right",
        Category = {"tac_css"},
        Pos = Vector(-1.25, 0.9, 0.9),
        Ang = Angle(0, 0, 135),
        Icon_Offset = Vector(-2, 0, 0)			
    },		
}
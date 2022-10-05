ATT.PrintName = "Clamped Rail"
ATT.CompactName = "Rail"
ATT.Icon = Material("entities/gekolt_css_mount_clamp.png")
ATT.Description = [[Extend your handguard even more.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/clamp_long.mdl"

ATT.Category = {"clamp_css"}
ATT.Max = 4

// Allows a custom sight position to be defined

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Scale = 1

ATT.Attachments = {
    {
        PrintName = "MOUNT Left",
        Category = "mountr_css",
        Pos = Vector(-1,-1.5, 0),
        Ang = Angle(0, 0, -90),
        ExtraSightDistance = 15,
        Icon_Offset = Vector(1, 0, 0)			
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(-1,1.5, 0),
        Ang = Angle(0, 0, 90),
        ExtraSightDistance = 15,
        Icon_Offset = Vector(-2, 0, 0)			
    },	
	
    {
        PrintName = "MOUNT Top",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(-1,0, -1.6),
        Ang = Angle(0, 0, 0),
		ExtraSightDistance = 7
    },	

    {
        PrintName = "MOUNT Bottom",
        Category = {"tac_css"},
        Pos = Vector(-1,0, 1.6),
        Ang = Angle(0, 0, 180),
    },		
}

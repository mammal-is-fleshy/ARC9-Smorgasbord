ATT.PrintName = "Clamped Rail"
ATT.CompactName = "Rail"
ATT.Icon = Material("entities/gekolt_css_mount_clampb.png")
ATT.Description = [[Extend your handguard even more. This time with Foregrip Option]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/clamp_short.mdl"

ATT.Category = {"clamp_s_css"}
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
        ExtraSightDistance = 5,
        Icon_Offset = Vector(1, 0, 0)		
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(-1,1.5, 0),
        Ang = Angle(0, 0, 90),
        ExtraSightDistance = 5,
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
        Category = "grip_css",
        Pos = Vector(-2,0, 1.5),
        Ang = Angle(0, 0, 0),
    },		
}
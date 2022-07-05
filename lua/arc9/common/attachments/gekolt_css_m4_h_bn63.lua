ATT.PrintName = "Marksman Handguard"
ATT.CompactName = "Marksman"
ATT.Description = [[Extended guard with 4 extra rails.
Why couln't there be a regular extended RIS guard?]]

ATT.Icon = Material("")

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
        Ang = Angle(-90, 180, 0),
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
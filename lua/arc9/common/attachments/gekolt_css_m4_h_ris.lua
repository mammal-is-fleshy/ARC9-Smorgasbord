ATT.PrintName = "RIS Handguard"
ATT.CompactName = "RIS"
ATT.Description = [[Railed hanguard for extra mounted devices.]]

ATT.Icon = Material("")

ATT.SortOrder = 0.5
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_ris"}


ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.5,0.3, -4),
        Ang = Angle(-90, 180, 0),
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.5,0.3, -4),
        Ang = Angle(90, 0, 0),
    },	
	
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.35, -2),
        Ang = Angle(90, 0, -90),
    },	
}
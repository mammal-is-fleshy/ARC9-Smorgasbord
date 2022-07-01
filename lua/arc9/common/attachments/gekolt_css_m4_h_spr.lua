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
        Ang = Angle(-90, 180, 0),
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.5,0.2, -4),
        Ang = Angle(90, 0, 0),
    },	
	
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.3, -3.25),
        Ang = Angle(90, 0, -90),
    },		
}
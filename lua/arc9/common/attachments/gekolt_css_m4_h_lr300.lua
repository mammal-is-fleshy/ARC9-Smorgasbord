ATT.PrintName = "Targeter Handguard"
ATT.CompactName = "Targeter"
ATT.Description = [[Despite its name, it doesn't really help that much with targeting.
Fitted with three extra rails.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_lr300.png", "mips smooth")

ATT.SortOrder = 2
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_lr300"}

ATT.SpreadMultSights = 1.15
ATT.SpreadMultHipFire = 0.75
ATT.RecoilMult = 0.95


ATT.Attachments = {
    {
        PrintName = "MOUNT LEFT",
        Category = "mountr_css",
        Pos = Vector(-1.25,0.3, -8),
        Ang = Angle(-90, 180, 0),
    },
	
    {
        PrintName = "MOUNT Right",
        Category = "mountl_css",
        Pos = Vector(1.25,0.3, -8),
        Ang = Angle(90, 0, 0),
    },	

    {
        PrintName = "MOUNT Bottom",
        Category = {"tac_css"},
        Pos = Vector(0,1.6, -8.5),
        Ang = Angle(90, 0, 90),
		ExcludeElements = {"bottom_long"},		
    },		
}
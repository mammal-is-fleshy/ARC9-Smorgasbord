ATT.PrintName = "Targeter Handguard"
ATT.CompactName = "Targeter"
ATT.Description = [[Despite its name, it doesn't really help that much with targeting.]]

ATT.Icon = Material("")

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
}
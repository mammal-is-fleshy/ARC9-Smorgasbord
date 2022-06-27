ATT.PrintName = "Special-Purpose Rifle Handguard"
ATT.CompactName = "SPR"
ATT.Description = [[It's kinda neat, I guess.]]

ATT.Icon = Material("")

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
}
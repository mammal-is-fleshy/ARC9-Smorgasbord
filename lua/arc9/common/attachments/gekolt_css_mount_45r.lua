ATT.PrintName = "45 Degree Canted Mount (Right)"
ATT.CompactName = "45R"
ATT.Icon = Material("")
ATT.Description = [[Extra rail for extra attachments.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/mount_45r.mdl"

ATT.Category = {"mount_css", "mountr_css"}
ATT.Folder = "MOUNT"
ATT.Max = 4
ATT.InvAtt = "mount_45l"

// Allows a custom sight position to be defined

ATT.ModelOffset = Vector(0.25, 0, -0.25)
ATT.Scale = 1.25

ATT.Attachments = {
    {
        PrintName = "OPTIC",
        Category = {"optic_css_s", "tac_css"},
        Pos = Vector(0.3, 0.7, 0.35),
        Ang = Angle(0, 0, 45),
		KeepBaseIrons = true,
    },
}
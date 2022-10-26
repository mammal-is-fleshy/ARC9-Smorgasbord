ATT.PrintName = "45 Degree Canted Mount (Right)"
ATT.CompactName = "45L"
ATT.Icon = Material("")
ATT.Description = [[Extra rail for extra attachments.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/mount_45l.mdl"

ATT.Category = {"mount_css", "mountl_css"}
ATT.Folder = "MOUNT"
ATT.Max = 6

// Allows a custom sight position to be defined

ATT.ModelOffset = Vector(0, 0, -0)
ATT.Scale = 1.25

ATT.Attachments = {
    {
        PrintName = "OPTIC",
        Category = {"optic_css_s", "tac_css", "mountr_css"},
        Pos = Vector(0, -0.7, -0.55),
        Ang = Angle(0, 0, -45),
		KeepBaseIrons = true,
    },
}
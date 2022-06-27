ATT.PrintName = "45 Degree Canted Mount (Right)"
ATT.CompactName = "45L"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/mount_45l.mdl"

ATT.Category = {"mount_css", "mountl_css"}
ATT.Folder = "MOUNT"
ATT.Max = 4

// Allows a custom sight position to be defined

ATT.ModelOffset = Vector(0.25, 0, -0.25)
ATT.Scale = 1.25

ATT.Attachments = {
    {
        PrintName = "OPTIC",
        Category = "optic_css_s",
        Pos = Vector(-0.3, -0.7, -0.35),
        Ang = Angle(0, 0, -45),
		KeepBaseIrons = true
    },
}
ATT.PrintName = "45 Degree Canted Mount (Right)"
ATT.CompactName = "45L"
ATT.Icon = Material("")
ATT.Description = [[Extra rail for extra attachments.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/mount_45l.mdl"

ATT.Category = {"grip_css"}
ATT.Folder = "MOUNT"
ATT.Max = 4

// Allows a custom sight position to be defined

ATT.ModelOffset = Vector(-0.25, 0, -0.1)
ATT.ModelAngleOffset = Angle(0, 180, 0)
ATT.Scale = 1.25

ATT.Attachments = {
    {
        PrintName = "Foregrip",
        Category = {"grip_short_css"},
        Pos = Vector(-0.2, -0.8, 0.5),
        Ang = Angle(0, 0, 45),
		KeepBaseIrons = true,
        ExtraSightDistance = 7
    },
}
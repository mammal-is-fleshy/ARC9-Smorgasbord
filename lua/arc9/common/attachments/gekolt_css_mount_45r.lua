ATT.PrintName = "45 Degree Canted Mount (Right)"
ATT.CompactName = "45R"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/mount_45r.mdl"

ATT.Category = {"mount_css", "mountr_css"}
ATT.Folder = "MOUNT"
ATT.Max = 4
ATT.InvAtt = "mount_dual_45l"

// Allows a custom sight position to be defined

ATT.ModelOffset = Vector(0.25, 0, -0.25)
ATT.Scale = 1.25

ATT.Attachments = {
    {
        PrintName = "OPTIC",
        Category = "optic_css_s",
        Pos = Vector(0.3, 0.8, 0.5),
        Ang = Angle(0, 0, 45),
    },
}
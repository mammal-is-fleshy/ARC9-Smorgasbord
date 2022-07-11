ATT.PrintName = "Rail Extension"
ATT.CompactName = "Canted"
ATT.Icon = Material("")
ATT.Description = [[More space for your cursed weapon built.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/rail.mdl"

ATT.Category = {"mount_css"}
ATT.Folder = "MOUNT"
ATT.Max = 4
ATT.InvAtt = "mount_45l"

// Allows a custom sight position to be defined

ATT.ModelOffset = Vector(0.25, 0, -0.25)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Scale = 1

ATT.Attachments = {
    {
        PrintName = "OPTIC",
        Category = {"optic_css_s", "tac_css"},
        Pos = Vector(0.3, 0.7, 0.35),
        Ang = Angle(0, 0, 45),
		KeepBaseIrons = true,
    },
}
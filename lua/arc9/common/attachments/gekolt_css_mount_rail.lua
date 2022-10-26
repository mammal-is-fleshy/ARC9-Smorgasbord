ATT.PrintName = "Rail Extension"
ATT.CompactName = "Ext"
ATT.Icon = Material("")
ATT.Description = [[More space for your cursed weapon built.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/rail.mdl"

ATT.Category = {"mount_css", "mount_add_css"}
ATT.Folder = "MOUNT"
ATT.Max = 4
ATT.InvAtt = "mount_45l"

// Allows a custom sight position to be defined

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Scale = 1

ATT.Attachments = {
    {
        PrintName = "OPTIC",
        Category = {"optic_css", "tac_css"},
        Pos = Vector(-0.5, 0, -0.4),
        Ang = Angle(0, 0, 0),
		KeepBaseIrons = true,
    },
}
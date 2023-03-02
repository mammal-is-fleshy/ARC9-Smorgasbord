ATT.PrintName = "Heavy Foregrip"
ATT.CompactName = "HEAVY"
ATT.Description = [[Simple foregrip with an additional rail for more gadgets.]]

ATT.Icon = Material("entities/gekolt_css_fore_rail.png", "mips smooth")

ATT.Model = "models/weapons/geckololt_css/atts/fg_railed.mdl"

ATT.SortOrder = 1
ATT.Category = {"grip_css"}

ATT.RecoilPatternDriftMult = 0.65
ATT.RecoilAutoControlMult = 1.2

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, -0.5)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.SwayAdd = 0.2
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.SpeedMult = 0.95
ATT.RecoilMult = 0.875

ATT.Attachments = {
    {
        PrintName = "MOUNT Foregrip",
        Category = {"tac_css"},
        Pos = Vector(-2.5,0, 4),
        Ang = Angle(0, 180, 0),
        ExcludeElements = {"bottom_long"},
    },
}
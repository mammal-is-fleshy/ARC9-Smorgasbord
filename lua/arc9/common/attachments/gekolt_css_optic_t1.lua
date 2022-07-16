ATT.PrintName = "T1 Sight"
ATT.CompactName = "T1"
ATT.Icon = Material("")
ATT.Description = [[Mid-profile red dot sight]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/t1.mdl"

ATT.Category = {"optic_css","optic_css_s"}
ATT.Folder = "REFLEX"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 8, -0.75),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/t1.png", "mips smooth")
ATT.HoloSightSize = 700
ATT.HoloSightColorable = true

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, 0)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035
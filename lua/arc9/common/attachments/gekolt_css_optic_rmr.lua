ATT.PrintName = "RMR Sight"
ATT.CompactName = "RMR"
ATT.Icon = Material("")
ATT.Description = [[Small reflex sight designed for pistols and small arms]]
ATT.SortOrder = 0.1

ATT.Model = "models/weapons/geckololt_css/atts/rmr.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 9.5, -0.8),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/rmr.png", "mips smooth")
ATT.HoloSightSize = 500
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035
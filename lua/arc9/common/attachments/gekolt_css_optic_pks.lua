ATT.PrintName = "Romeo-7 Sight"
ATT.CompactName = "R-7"
ATT.Icon = Material("entities/gekolt_css_optic/pks.png", "mips smooth")
ATT.Description = [[Small relfex sight for backup use]]
ATT.SortOrder = 0.1

ATT.Model = "models/weapons/geckololt_css/atts/pks.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 10, -0.8),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/romeo.png", "mips smooth")
ATT.HoloSightSize = 550
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.05)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035
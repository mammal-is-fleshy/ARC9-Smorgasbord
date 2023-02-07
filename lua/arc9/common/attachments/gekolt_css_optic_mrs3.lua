ATT.PrintName = "MRS Sight C"
ATT.CompactName = "MRS C"
ATT.Icon = Material("entities/gekolt_css_optic/mrs.png", "mips smooth")
ATT.Description = [[The most basic reflex sight]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/mrs3.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 6, -1.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/mrs2.png", "mips smooth")
ATT.HoloSightSize = 1400
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035
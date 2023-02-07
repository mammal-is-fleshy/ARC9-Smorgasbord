ATT.PrintName = "Delta Sight"
ATT.CompactName = "Delta"
ATT.Icon = Material("entities/gekolt_css_optic/delta.png", "mips smooth")
ATT.Description = [[Small reflex sight designed as a backup. Peculiar reticle]]
ATT.SortOrder = 0.1

ATT.Model = "models/weapons/geckololt_css/atts/delta.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/uwu.png", "mips smooth")
ATT.HoloSightSize = 650
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035
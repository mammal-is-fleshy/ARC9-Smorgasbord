ATT.PrintName = "Holographic Sight"
ATT.CompactName = "Holo"
ATT.Icon = Material("entities/gekolt_css_optic/eo.png", "mips smooth")
ATT.Description = [[Boxy holographic sight with wide fov]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/holo.mdl"

ATT.Category = {"optic_css","optic_css_l","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/holo.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035
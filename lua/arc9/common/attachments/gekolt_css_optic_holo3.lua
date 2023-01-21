ATT.PrintName = "Holographic Sight B"
ATT.CompactName = "Holo B"
ATT.Icon = Material("entities/gekolt_css_optic/eo_s.png", "mips smooth")
ATT.Description = [[Smaller Boxy holographic sight with wide fov]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/holo3.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7.5, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/holo3.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0.5, 0, -0.1)
 
ATT.SwayAdd = 0.01
ATT.FreeAimRadiusMultSights = 0.225
ATT.SprintToFireTimeAdd = 0.0325
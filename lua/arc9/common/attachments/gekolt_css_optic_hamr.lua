ATT.PrintName = "HAMR Sight"
ATT.CompactName = "HAMR"
ATT.Icon = Material("entities/gekolt_css_optic/hamr.png", "mips smooth")
ATT.Description = [[Combat scope fitted with a backup reflex]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/hamr.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 8, -2.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
    {
        Pos = Vector(0, 7, -4),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ViewModelFOV = 60,
        Disassociate = true
    },
}

ATT.RTScopeFOVMax = 8
ATT.RTScopeFOVMin = 15
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 1

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/scope3_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true

ATT.ScopeScreenRatio = 0.7

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, -0.175)

ATT.SwayAdd = 0.075
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.14
ATT.SprintToFireTimeAdd = 0.08

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/acog_top.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true
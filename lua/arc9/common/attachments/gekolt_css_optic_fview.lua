ATT.PrintName = "Far View Scope"
ATT.CompactName = "FView"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.SortOrder = 6.1

ATT.Model = "models/weapons/geckololt_css/atts/farview.mdl"

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "SCOPE"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.015, 11.25, -1.6475),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeReticle = Material("arc9_css/scope10_border.png", "mips smooth")
ATT.RTScopeReticleScale = 0.8
ATT.RTScopeColorable = true

ATT.RTScopeFOVMax = 1.5
ATT.RTScopeFOVMin = 15
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 4

ATT.ScopeScreenRatio = 0.9
ATT.ScopeLength = 30

ATT.Scale = 1.1
ATT.ModelOffset = Vector(0, 0, -0.25)

ATT.SwayAdd = 0.1
ATT.FreeAimRadiusMultSights = 0.12
ATT.AimDownSightsTimeAdd = 0.18
ATT.SprintToFireTimeAdd = 0.15

ATT.Flare = true
ATT.FlareColor = Color(255, 255, 255)
ATT.FlareSize = 32
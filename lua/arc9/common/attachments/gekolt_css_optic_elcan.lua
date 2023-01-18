ATT.PrintName = "Elcan Scope"
ATT.CompactName = "Elcan"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/elcan.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.001, 7.75, -2.12),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/scope7_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.03
ATT.RTScopeColorable = true

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, -0.25)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05
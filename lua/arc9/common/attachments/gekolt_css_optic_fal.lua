ATT.PrintName = "Trilux Scope"
ATT.CompactName = "Trilux"
ATT.Icon = Material("")
ATT.Description = [[]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/trilux.mdl"

ATT.Category = "optic_css"
ATT.Folder = "SCOPE"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.022, 7.5, -1.52),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 5
ATT.RTScopeReticle = Material("arc9_css/scope_fal.png", "mips smooth")
ATT.RTScopeReticleScale = 0.95
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, -0.25)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05
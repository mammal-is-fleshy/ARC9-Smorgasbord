ATT.PrintName = "Mounted Scope"
ATT.CompactName = "Mounted"
ATT.Icon = Material("")
ATT.Description = [[h]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/m4_scope.mdl"

ATT.Category = "optic_css"
ATT.Folder = "MOUNT"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.5),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/scope_border.png", "mips smooth")
ATT.RTScopeReticleScale = 0.9
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, -0.25)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05
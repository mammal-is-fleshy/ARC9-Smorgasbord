ATT.PrintName = "Bravo-4 Sight"
ATT.CompactName = "B-4"
ATT.Icon = Material("entities/gekolt_css_optic/b4.png", "mips smooth")
ATT.Description = [[Variable mid-ranged scoped with a short rail mounted]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/sig.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.00325, 7.25, -1.285),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.RTScopeFOVMax = 5
ATT.RTScopeFOVMin = 12
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 2

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/scope5_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 10

ATT.ScopeScreenRatio = 0.7

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.175)

ATT.SwayAdd = 0.075
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.14
ATT.SprintToFireTimeAdd = 0.08



ATT.Attachments = {
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css", "optic_css_holo"},
        Pos = Vector(1,0, -2.4),
        Ang = Angle(0, 0, 0),
    },
}
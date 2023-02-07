ATT.PrintName = "S&D Medium Scope"
ATT.CompactName = "S&D M"
ATT.Icon = Material("entities/gekolt_css_optic/schmidt.png", "mips smooth")
ATT.Description = [[Medium range hunting scope]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/schd.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.001, 6.5, -1.56),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/scope6_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, -0.25)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05




ATT.Attachments = {
    {
        PrintName = "MOUNT Back",
        Category = {"tac_css_flat", "mount_css", "optic_css_s"},
        Pos = Vector(0,0, -2.15),
        Ang = Angle(0, 0, 0),
    },

    {
        PrintName = "MOUNT Front",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(-3.5,0, -2.15),
        Ang = Angle(0, 0, 0),
    },

}
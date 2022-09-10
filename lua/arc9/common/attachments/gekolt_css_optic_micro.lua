ATT.PrintName = "Micro Scope"
ATT.CompactName = "Micro"
ATT.Icon = Material("")
ATT.Description = [[2x magnifying scope with three mounted rails for even more attachments]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/micro2.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.005, 8.25, -1.87),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 12
ATT.RTScopeReticle = Material("arc9_css/scope8_border.png", "mips smooth")
ATT.RTScopeReticleScale = 0.8
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1.25
ATT.ModelOffset = Vector(-1, 0, -0.25)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05


ATT.Attachments = {
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css", "mount_css", "optic_css_holo"},
        Pos = Vector(-1,0, -2.7),
        Ang = Angle(0, 0, 0),
    },		
    {
        PrintName = "MOUNT LEFT",
        Category = {"mountr_css", "tac_css"},
        Pos = Vector(-1, -1.25, -1.5),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(1, 0, 0),		
    },
    {
        PrintName = "MOUNT Right",
        Category = {"mountl_css", "tac_css"},
        Pos = Vector(-1,1.25, -1.5),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(-2, 0, 0),
    },	
}
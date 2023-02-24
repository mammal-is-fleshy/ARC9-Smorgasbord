ATT.PrintName = "Magnus Scope"
ATT.CompactName = "Magnus"
ATT.Icon = Material("entities/gekolt_css_optic/magnus.png", "mips smooth")
ATT.Description = [[
Sniper rifle optic with the ability to be adjusted between lossg and medium range magnification options
You will fail to use it though because of its amazing reticle
]]
ATT.SortOrder = 6

ATT.Model = "models/weapons/geckololt_css/atts/magnus.mdl"

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.005, 12, -1.87),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 4
ATT.RTScopeReticle = Material("arc9_css/scope9_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.01
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, -0.25)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05
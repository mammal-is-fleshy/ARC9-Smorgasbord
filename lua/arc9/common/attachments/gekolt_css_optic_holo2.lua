ATT.PrintName = "Holo Prototype Sight"
ATT.CompactName = "H.Proto"
ATT.Icon = Material("")
ATT.Description = [[Holographic sight slapped with some "Tech" bollocks with thermal seeking sense
Grayscaled for reason not related to gameplay]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/holo2.mdl"

ATT.Category = {"optic_css","optic_css_m","optic_css_holo"}
ATT.Folder = "REFLEX"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.015, 6, -1.07),
        Ang = Angle(0, 0, 0),
        Magnification = 1.3,
        ViewModelFOV = 60
    }
}

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 4
ATT.RTScopeFOV = 10
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/holo2.png", "mips smooth")
ATT.RTScopeReticleScale = 0.95
ATT.RTScopeShadowIntensity = 1.5
ATT.RTScopeColorable = true
ATT.RTScopeNoShadow = true
ATT.RTScopeBlackBox = false
ATT.RTScopeBlackBoxShadow = false

ATT.RTScopeFLIR = true
ATT.RTScopeFLIRHighlightColor = Color(255, 30, 30)
ATT.RTScopeFLIRMonochrome = true
ATT.RTScopeFLIRBlend = 0.075
ATT.RTScopeFLIRCCHot = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0.001,
    ["$pp_colour_contrast"] = 1.25,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}
ATT.RTScopeFLIRCCCold = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0.25,
    ["$pp_colour_contrast"] = 0.25,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}
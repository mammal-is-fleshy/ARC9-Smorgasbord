ATT.PrintName = "Holographic Prototype Sight"
ATT.CompactName = "H.Proto"
ATT.Icon = Material("")
ATT.Description = [[Holographic sight slapped with some "Tech" bollocks with thermal seeking sense
Grayscaled for reason not related to gameplay]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/holo2.mdl"

ATT.Category = {"optic_css","optic_css_l","optic_css_holo"}
ATT.Folder = "REFLEX"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.015, 6, -1.07),
        Ang = Angle(0, 0, 0),
        Magnification = 1.3,
        ViewModelFOV = 60,
        InvertColors = true,
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
ATT.RTScopeFLIRSolid = false -- Solid color FLIR instead of like a shaded look
ATT.RTScopeFLIRMonochrome = true
ATT.RTScopeFLIRCCCold = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 11/255,
    ["$pp_colour_addg"] = 11/255,
    ["$pp_colour_addb"] = 11/255,
    ["$pp_colour_brightness"] = 0.07,
    ["$pp_colour_contrast"] = 2,
    ["$pp_colour_colour"] = 0.12,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}
ATT.RTScopeFLIRCCHot = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 0/255,
    ["$pp_colour_addg"] = 222/255,
    ["$pp_colour_addb"] = 255/255,
    ["$pp_colour_brightness"] = -0.6,
    ["$pp_colour_contrast"] = 0.5,
    ["$pp_colour_colour"] = 0.9,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}

ATT.RTScopeCustomPPFunc = function(swep)
    -- DrawMotionBlur(0.7, 0.85, 1/40)
    DrawBloom(0.31, 1.4, 1.15, 0, 0, 1, 1, 1, 1)
    DrawSharpen(4, 0.6)
end

ATT.RTScopeFLIRHotOnlyFunc = function(swep)
    DrawSharpen(4, 0.6)
    DrawSobel(0.001)
end

ATT.RTScopePostInvertFunc = function(swep)
    DrawBloom(0.61, 3, 2, 2, 0, 1, 1, 1, 1)
    DrawSharpen(4, 0.6)
end
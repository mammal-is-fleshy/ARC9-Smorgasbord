local ATT = {}

ATT = {}

ATT.PrintName = "ACOG"
ATT.CompactName = "ACOG"
ATT.Icon = Material("entities/gekolt_css_optic/acog.png", "mips smooth")
ATT.Description = [[Simple mid-ranged scope]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/acog.mdl"
ATT.ModelBodygroups = "00"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.005, 8, -1.095),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["acog_mount_rail"] then
        model:SetBodygroup(1,2)
    else
        model:SetBodygroup(1,0)
    end
end


ATT.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"acog_mount_rail"},

        Category = {"optic_css_s",},
        Pos = Vector(3.85, 0, -2.4),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -4,
		Scale = 0.8,
    },
}


ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/scope2_border.png", "mips smooth")
ATT.RTScopeReticleScale = 0.98
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "gekolt_css_optic_acog")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "ACOG B"
ATT.CompactName = "ACOG_B"
ATT.Icon = Material("entities/gekolt_css_optic/acog2.png", "mips smooth")
ATT.Description = [[Funky model with funky backup ironsight]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/acog2.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.0075, 6.5, -1.38),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },

    {
        Pos = Vector(0.0075, 8, -2.35),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        Disassociate = true
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/scope4_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.2)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "gekolt_css_optic_acog2")

----------------------------------------------------------------------------------

ATT = {}

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

ARC9.LoadAttachment(ATT, "gekolt_css_optic_bravo")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Far View Scope"
ATT.CompactName = "FView"
ATT.Icon = Material("entities/gekolt_css_optic/farv.png", "mips smooth")
ATT.Description = [[]]
ATT.SortOrder = 6.1

ATT.Model = "models/weapons/geckololt_css/atts/farview.mdl"
ATT.ModelBodygroups = "00"

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.063, 10, -1.95),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["acog_mount_rail"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end
end

ATT.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"acog_mount_rail"},

        Category = {"optic_css_s",},
        Pos = Vector(6, 0, -4),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -4,
		Scale = 0.8,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeReticle = Material("arc9_css/scope10_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true

ATT.RTScopeFOVMax = 1.5
ATT.RTScopeFOVMin = 12
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 4

ATT.ScopeScreenRatio = 0.9
ATT.ScopeLength = 30

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.1
ATT.FreeAimRadiusMultSights = 0.12
ATT.AimDownSightsTimeAdd = 0.18
ATT.SprintToFireTimeAdd = 0.15

ATT.Flare = true
ATT.FlareColor = Color(255, 255, 255)
ATT.FlareSize = 32

ARC9.LoadAttachment(ATT, "gekolt_css_optic_fview")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Sweeper Scope"
ATT.CompactName = "FView"
ATT.Icon = Material("entities/gekolt_css_optic/farv.png", "mips smooth")
ATT.Description = [[]]
ATT.SortOrder = 6.3

ATT.Model = "models/weapons/geckololt_css/atts/sweeper.mdl"
ATT.ModelBodygroups = "00"

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.009, 8, -1.48),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["acog_mount_rail"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end
end

ATT.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"acog_mount_rail"},

        Category = {"optic_css_s",},
        Pos = Vector(4.2, 0, -3.2),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -1,
		Scale = 0.8,
    },
}


ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeReticle = Material("arc9_css/scope10_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true

ATT.RTScopeFOVMax = 1.5
ATT.RTScopeFOVMin = 15
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 4

ATT.ScopeScreenRatio = 0.9
ATT.ScopeLength = 30

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.1
ATT.FreeAimRadiusMultSights = 0.12
ATT.AimDownSightsTimeAdd = 0.18
ATT.SprintToFireTimeAdd = 0.15

ATT.Flare = true
ATT.FlareColor = Color(255, 255, 255)
ATT.FlareSize = 32

ARC9.LoadAttachment(ATT, "gekolt_css_optic_sweeper")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Vampire Scope"
ATT.CompactName = "Vampire"
ATT.Icon = Material("entities/gekolt_css_optic/vampire.png", "mips smooth")
ATT.Description = [[Infrared thermal vision scope in a bulky chassis drapes everything in grayscale
Highlights targets in sort-of white]]
ATT.SortOrder = 101

ATT.Model = "models/weapons/geckololt_css/atts/vampire.mdl"

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.00, 10.5, -1.93),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/thermal_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 6

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1.25
ATT.ModelOffset = Vector(1, 0, -0.25)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ATT.RTScopeNightVision = true
ATT.RTScopeNightVisionMonochrome = true
ATT.RTScopeNightVisionNoPP = true

ATT.RTScopeFLIR = true
ATT.RTScopeFLIRSolid = false -- Solid color FLIR instead of like a shaded look
ATT.RTScopeFLIRRange = 30000
ATT.RTScopeFLIRMonochrome = true
ATT.RTScopeFLIRBlend = 0.1
ATT.RTScopeFLIRCCHot = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0.05,
    ["$pp_colour_contrast"] = 1.5,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}
ATT.RTScopeFLIRCCCold = {
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0.5,
    ["$pp_colour_contrast"] = 0.25,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}

local pattern = Material("pp/texturize/plain.png")

ATT.RTScopeMotionBlur = true

ARC9.LoadAttachment(ATT, "gekolt_css_optic_vampire")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Nightstalker Scope"
ATT.CompactName = "NStalker"
ATT.Icon = Material("entities/gekolt_css_optic/pvs4.png", "mips smooth")
ATT.Description = [[Heavy night vision scope with extremely limited visibility]]
ATT.SortOrder = 100

ATT.Model = "models/weapons/geckololt_css/atts/pvs4.mdl"

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.00, 8.5, -1.775),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/nv_border.png", "mips smooth")
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

ATT.RTScopeNightVision = true
ATT.RTScopeNightVisionMonochrome = false
ATT.RTScopeNightVisionCC = {
    ["$pp_colour_addr"] = -255,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = -255,
    ["$pp_colour_brightness"] = 0.01,
    ["$pp_colour_contrast"] = 1.1,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}
ATT.RTScopeNightVisionNoiseColor = Color(0, 255, 0)

ATT.RTScopeFLIR = true
ATT.RTScopeFLIRSolid = false -- Solid color FLIR instead of like a shaded look
ATT.RTScopeFLIRRange = 30000
ATT.RTScopeFLIRMonochrome = true
ATT.RTScopeFLIRBlend = 0.1
ATT.RTScopeFLIRNoPP = true
ATT.RTScopeFLIRCCHot = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = -0.25,
    ["$pp_colour_contrast"] = 1.5,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}
ATT.RTScopeFLIRCCCold = {
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0,
    ["$pp_colour_contrast"] = 0.35,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}

ATT.RTScopeMotionBlur = true

ARC9.LoadAttachment(ATT, "gekolt_css_optic_pvs4")

----------------------------------------------------------------------------------

--- REFLEX ---

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Delta Sight"
ATT.CompactName = "Delta"
ATT.Icon = Material("entities/gekolt_css_optic/delta.png", "mips smooth")
ATT.Description = [[Small reflex sight designed as a backup. Peculiar reticle]]
ATT.SortOrder = 0.1

ATT.Model = "models/weapons/geckololt_css/atts/delta.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/uwu.png", "mips smooth")
ATT.HoloSightSize = 650
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_delta")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Delta Sight B"
ATT.CompactName = "Delta B"
ATT.Icon = Material("entities/gekolt_css_optic/delta2.png", "mips smooth")
ATT.Description = [[Smaller reflex sight designed as a backup]]
ATT.SortOrder = 0.1

ATT.Model = "models/weapons/geckololt_css/atts/delta_mini.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/acog_top.png", "mips smooth")
ATT.HoloSightSize = 650
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_delta_mini")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Holographic Sight"
ATT.CompactName = "Holo"
ATT.Icon = Material("entities/gekolt_css_optic/eo.png", "mips smooth")
ATT.Description = [[Boxy holographic sight with wide fov]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/holo.mdl"

ATT.Category = {"optic_css","optic_css_l","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/holo.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_holo")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Holographic Sight Prototype"
ATT.CompactName = "H.Proto"
ATT.Icon = Material("entities/gekolt_css_optic/eo_e.png", "mips smooth")
ATT.Description = [[Holographic sight slapped with some "Tech" bollocks with thermal seeking sense
Grayscaled for reason not related to gameplay]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/holo2.mdl"

ATT.Category = {"optic_css","optic_css_l","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.0075, 6, -1.07),
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
ATT.RTScopeFLIRBlend = 0.1
ATT.RTScopeFLIRCCHot = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0.1,
    ["$pp_colour_contrast"] = 0.5,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}
ATT.RTScopeFLIRCCCold = {
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0.9,
    ["$pp_colour_contrast"] = 0.3,
    ["$pp_colour_colour"] = 1,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}

--- what the fuck are these? Darsu is this  yours?
ATT.RTScopeCustomPPFunc = function(swep)
    -- DrawMotionBlur(0.7, 0.85, 1 / 40)
    DrawBloom(0.31, 0.2, 1.5, 0, 0, 1, 1, 1, 1)
    DrawSharpen(1, 0.6)
end

ATT.RTScopeFLIRHotOnlyFunc = function(swep)
    DrawSharpen(4, 0.6)
    DrawSobel(0.001)
end

ATT.RTScopePostInvertFunc = function(swep)
    DrawBloom(0.6, 3, 2, 2, 0, 1, 1, 1, 1)
    DrawSharpen(1, 0.4)
end

ARC9.LoadAttachment(ATT, "gekolt_css_optic_holo2")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Holographic Sight B"
ATT.CompactName = "Holo B"
ATT.Icon = Material("entities/gekolt_css_optic/eo_s.png", "mips smooth")
ATT.Description = [[Smaller Boxy holographic sight with wide fov]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/holo3.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7.5, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/holo3.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0.5, 0, -0.1)

ATT.SwayAdd = 0.01
ATT.FreeAimRadiusMultSights = 0.225
ATT.SprintToFireTimeAdd = 0.0325

ARC9.LoadAttachment(ATT, "gekolt_css_optic_holo3")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "MRS Sight A"
ATT.CompactName = "MRS A"
ATT.Icon = Material("entities/gekolt_css_optic/mrs.png", "mips smooth")
ATT.Description = [[The most basic reflex sight]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/mrs.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 6, -1.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/mrs.png", "mips smooth")
ATT.HoloSightSize = 1200
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_mrs")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "MRS Sight B"
ATT.CompactName = "MRS B"
ATT.Icon = Material("entities/gekolt_css_optic/mrs.png", "mips smooth")
ATT.Description = [[The most basic reflex sight]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/mrs2.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 6, -1.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/mrs3.png", "mips smooth")
ATT.HoloSightSize = 750
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_mrs2")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "MRS Sight C"
ATT.CompactName = "MRS C"
ATT.Icon = Material("entities/gekolt_css_optic/mrs.png", "mips smooth")
ATT.Description = [[The most basic reflex sight]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/mrs3.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 6, -1.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/mrs2.png", "mips smooth")
ATT.HoloSightSize = 1400
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_mrs3")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "RMR Sight"
ATT.CompactName = "RMR"
ATT.Icon = Material("entities/gekolt_css_optic/rmr.png", "mips smooth")
ATT.Description = [[Small reflex sight designed for pistols and small arms]]
ATT.SortOrder = 0.1

ATT.Model = "models/weapons/geckololt_css/atts/rmr.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 10, -0.8),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/rmr.png", "mips smooth")
ATT.HoloSightSize = 500
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_rmr")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "OKP Sight"
ATT.CompactName = "OKP"
ATT.Icon = Material("entities/gekolt_css_optic/okp.png", "mips smooth")
ATT.Description = [[Reflex sight with chevron reticle]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/okp.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7, -0.9),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/okp.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_okp")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Romeo-7 Sight"
ATT.CompactName = "R-7"
ATT.Icon = Material("entities/gekolt_css_optic/pks.png", "mips smooth")
ATT.Description = [[Small relfex sight for backup use]]
ATT.SortOrder = 0.1

ATT.Model = "models/weapons/geckololt_css/atts/pks.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 10, -0.8),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/romeo.png", "mips smooth")
ATT.HoloSightSize = 550
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.05)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_pks")

----------------------------------------------------------------------------------
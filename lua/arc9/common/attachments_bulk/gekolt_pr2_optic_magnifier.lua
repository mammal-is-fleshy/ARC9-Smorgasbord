local ATT = {}

ATT = {}

ATT.PrintName = "Fritotech Holographic"
ATT.CompactName = "Fritotech"
ATT.Icon = Material("entities/gekolt_css_optic/eo.png", "mips smooth")
ATT.Description = [[Boxy unique iconic holographic sight]]
ATT.SortOrder = 1

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "MAGNIFIER"

ATT.Model = "models/weapons/geckololt_css/atts/magnifier_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0, -0.1)
ATT.ModelBodygroups = "000"

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pozkas_off"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 6, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        ViewModelFOV = 40,
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 5.5, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        IgnoreExtra = false,
        ActivateElements = {"pozkas_off"},
        Disassociate = true,
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/holo.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/mag_holo.png", "mips smooth")
ATT.RTScopeReticleScale = 0.75
ATT.RTScopeShadowIntensity = 2
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m1")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Fritotech Holographic Petito"
ATT.CompactName = "Frito-pequegno"
ATT.Icon = Material("entities/gekolt_css_optic/eo_s.png", "mips smooth")
ATT.Description = [[
Boxy unique iconic holographic sight
This unit is smaller and has a precise carrot pointing upwards]]
ATT.SortOrder = 2

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "MAGNIFIER"

ATT.Model = "models/weapons/geckololt_css/atts/magnifier_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0, -0.1)
ATT.ModelBodygroups = "001"

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pozkas_off"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 6.5, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        ViewModelFOV = 40,
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 5.75, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        IgnoreExtra = false,
        ActivateElements = {"pozkas_off"},
        Disassociate = true,
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/holo3.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/mag_holo2.png", "mips smooth")
ATT.RTScopeReticleScale = 0.8
ATT.RTScopeShadowIntensity = 2
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m2")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Stopwatch Reflex Sight"
ATT.CompactName = "Stopwatch"
ATT.Icon = Material("entities/gekolt_css_optic/okp.png", "mips smooth")
ATT.Description = [[Reflex sight with chevron reticle that looks like old fellow with one of those long straight down beards]]
ATT.SortOrder = 1
ATT.SortOrder = 3

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "MAGNIFIER"

ATT.Model = "models/weapons/geckololt_css/atts/magnifier_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0, -0.1)
ATT.ModelBodygroups = "002"

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pozkas_off"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 6.5, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        ViewModelFOV = 40,
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 5.75, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        IgnoreExtra = false,
        ActivateElements = {"pozkas_off"},
        Disassociate = true,
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/okp.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/mag_okp.png", "mips smooth")
ATT.RTScopeReticleScale = 0.75
ATT.RTScopeShadowIntensity = 2
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m3")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Aniracco Usual"
ATT.CompactName = "ANC Usual"
ATT.Icon = Material("entities/gekolt_css_optic/mrs.png", "mips smooth")
ATT.Description = [[
The most basic reflex sight
Cloned all around the world
This one was 62 yuan!]]
ATT.SortOrder = 4

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "MAGNIFIER"

ATT.Model = "models/weapons/geckololt_css/atts/magnifier_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0, -0.1)
ATT.ModelBodygroups = "003"

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pozkas_off"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 6.5, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        ViewModelFOV = 40,
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 5.75, -1.375),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        IgnoreExtra = false,
        ActivateElements = {"pozkas_off"},
        Disassociate = true,
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/mrs.png", "mips smooth")
ATT.HoloSightSize = 1000
ATT.HoloSightColorable = true

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/mag_mrs.png", "mips smooth")
ATT.RTScopeReticleScale = 0.8
ATT.RTScopeShadowIntensity = 2
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m4")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "5"
ATT.CompactName = "5"
--ATT.Icon = Material("entities/arc9_att_optic_g33.png", "mips smooth")
ATT.Description = [[Zooming.]]
ATT.SortOrder = 5

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "MAGNIFIER"
ATT.Ignore = true
ATT.Model = "models/weapons/geckololt_css/atts/magnifier_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0, -0.1)
ATT.ModelBodygroups = "004"

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pozkas_off"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 5.75, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40,
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 4, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        IgnoreExtra = false,
        ActivateElements = {"pozkas_off"},
        Disassociate = true,
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/reddot.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 15
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/mag_reddot.png", "mips smooth")
ATT.RTScopeReticleScale = 0.75
ATT.RTScopeShadowIntensity = 7
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m5")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "6"
ATT.CompactName = "6"
--ATT.Icon = Material("entities/arc9_att_optic_g33.png", "mips smooth")
ATT.Description = [[Zooming.]]
ATT.SortOrder = 1
ATT.Ignore = true

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "MAGNIFIER"

ATT.Model = "models/weapons/geckololt_css/atts/magnifier_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0, -0.1)
ATT.ModelBodygroups = "005"

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pozkas_off"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 5.75, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40,
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 5.75, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        IgnoreExtra = false,
        ActivateElements = {"pozkas_off"},
        Disassociate = true,
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/acog_top.png", "mips smooth")
ATT.HoloSightSize = 650
ATT.HoloSightColorable = true

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 15
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/acog_top.png", "mips smooth")
ATT.RTScopeReticleScale = 0.5
ATT.RTScopeShadowIntensity = 7
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m6")

----------------------------------------------------------------------------------





--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "7"
ATT.CompactName = "7"
--ATT.Icon = Material("entities/arc9_att_optic_g33.png", "mips smooth")
ATT.Description = [[Zooming.]]
ATT.SortOrder = 1
ATT.Ignore = true

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "MAGNIFIER"

ATT.Model = "models/weapons/geckololt_css/atts/magnifier_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0, -0.1)
ATT.ModelBodygroups = "006"

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["pozkas_off"] then
        model:SetBodygroup(1,1)
        model:SetBodygroup(2,6)
    else
        model:SetBodygroup(1,0)
        model:SetBodygroup(2,7)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 5.5, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40,
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 2, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        IgnoreExtra = false,
        ActivateElements = {"pozkas_off"},
        Disassociate = true,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 15
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/scope4_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 7
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m7")

----------------------------------------------------------------------------------
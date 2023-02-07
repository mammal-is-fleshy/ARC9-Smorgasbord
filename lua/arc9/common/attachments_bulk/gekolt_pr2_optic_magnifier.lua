local ATT = {}

ATT = {}

ATT.PrintName = "1"
ATT.CompactName = "1"
--ATT.Icon = Material("entities/arc9_att_optic_g33.png", "mips smooth")
ATT.Description = [[Zooming.]]
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
        Pos = Vector(0, 6.5, -1.25),
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
ATT.HoloSightReticle = Material("arc9_css/holo.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 15
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/mag_holo.png", "mips smooth")
ATT.RTScopeReticleScale = 0.75
ATT.RTScopeShadowIntensity = 7
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m1")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "2"
ATT.CompactName = "2"
--ATT.Icon = Material("entities/arc9_att_optic_g33.png", "mips smooth")
ATT.Description = [[Zooming.]]
ATT.SortOrder = 1

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
ATT.HoloSightReticle = Material("arc9_css/holo3.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 15
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/mag_holo2.png", "mips smooth")
ATT.RTScopeReticleScale = 0.75
ATT.RTScopeShadowIntensity = 7
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m2")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "3"
ATT.CompactName = "3"
--ATT.Icon = Material("entities/arc9_att_optic_g33.png", "mips smooth")
ATT.Description = [[Zooming.]]
ATT.SortOrder = 1

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
ATT.HoloSightReticle = Material("arc9_css/okp.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 15
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/mag_okp.png", "mips smooth")
ATT.RTScopeReticleScale = 0.75
ATT.RTScopeShadowIntensity = 7
ATT.RTScopeColorable = true
ATT.RTScopeNoPP = false

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.022

ARC9.LoadAttachment(ATT, "gekolt_pr2_optic_m3")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "4"
ATT.CompactName = "4"
--ATT.Icon = Material("entities/arc9_att_optic_g33.png", "mips smooth")
ATT.Description = [[Zooming.]]
ATT.SortOrder = 1

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
        Magnification = 1.5,
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
ATT.RTScopeFOV = 15
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("arc9_css/mag_mrs.png", "mips smooth")
ATT.RTScopeReticleScale = 0.75
ATT.RTScopeShadowIntensity = 7
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
ATT.SortOrder = 1

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "MAGNIFIER"

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
ATT.RTScopeSubmatIndex = 2
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
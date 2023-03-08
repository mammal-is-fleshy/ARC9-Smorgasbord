local ATT = {}

ATT = {}

ATT.PrintName = "Range Finder"
ATT.CompactName = "RA. DANGER"
ATT.Icon = Material("entities/gekolt_css_optic/range.png", "mips smooth")
ATT.Description = [[Range fiding gadget. As useless as it sounds]]
ATT.SortOrder = 1400

ATT.Model = "models/weapons/geckololt_css/atts/rangefider.mdl"
ATT.ModelBodygroups = "00"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.1, 0, 0)

ATT.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"scope_rail"},

        Category = {"optic_css_s", "tac_css"},
        Pos = Vector(-0.5, 0, -1.35),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -0.5,
		Scale = 1,
    },
}

ATT.Category = {"css_scope_extra", "tac_css_flat", "mount_css", "mountr_css","mountl_css"}
ATT.Folder = "GADGET"

if CLIENT then
    surface.CreateFont("smor_digi", {
        font = "DSEG7 Classic",
        size = 140,
        weight = 500,
        antialias = true,
    })
end


local textoffset = Vector(-0.55, 0, 0.275)	-- pos
local textbgcolor = Color(19, 48, 33, 58)
local textcolor = Color(255, 255, 0)
local text = ""
local nextcall = CurTime()

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["scope_rail"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end

	if !IsValid(swep:GetOwner()) or !swep:GetOwner():IsPlayer() then return end

    if CurTime() > nextcall then
		nextcall = CurTime() + 0.2

		local trace = util.TraceLine({
			start = swep:GetShootPos(),
			endpos = swep:GetShootPos() + (swep:GetShootDir():Forward() * 64000),
			mask = MASK_SHOT,
			filter = swep:GetOwner()
		})

		if trace.HitSky then
			text = "----"
		else
			text = string.format("%04d", math.ceil(trace.Fraction * 64000 * ARC9.HUToM))
		end
	end

	local pos = model:GetPos()
	pos = model:LocalToWorld(textoffset)

	local ang = model:GetAngles()
	ang:RotateAroundAxis(ang:Forward(), 90)
	ang:RotateAroundAxis(ang:Right(), 90)

	cam.Start3D2D(pos, ang, 0.0025)	-- scale
		draw.SimpleText("0000", "smor_digi", 0, 1, textbgcolor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText(text, "smor_digi", 0, 1, textcolor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    cam.End3D2D()
end

ARC9.LoadAttachment(ATT, "gekolt_css_scope_rangefider")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Radar"
ATT.CompactName = "LTE RADAR"
ATT.Icon = Material("entities/gekolt_css_optic/range.png", "mips smooth")
ATT.Description = [[Very slow radar unit]]
ATT.SortOrder = 1401

ATT.Model = "models/weapons/geckololt_css/atts/rangefider.mdl"
ATT.ModelBodygroups = "10"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.1, 0, 0)

ATT.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"scope_rail"},

        Category = {"optic_css_s"},
        Pos = Vector(-0.5, 0, -1.45),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -0.5,
		Scale = 1,
    },
}

ATT.Category = {"css_scope_extra", "tac_css_flat", "mount_css", "mountr_css","mountl_css"}
ATT.Folder = "GADGET"

ARC9.LoadAttachment(ATT, "gekolt_css_scope_radar")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "'Enhanced Optical Gunsight' ver. 99"
ATT.CompactName = "EOG '99"
ATT.Icon = Material("entities/gekolt_css_optic/acog.png", "mips smooth")
ATT.Description = [[
Powered mid-range scope with more dials and knobs than you remember
Comfortable for use at 50 meters
Supports mounting backup irons and external scopes
]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/acog.mdl"
ATT.ModelBodygroups = "000"

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
    if swep:GetElements()["acog_sight_on"] then
        model:SetBodygroup(1,1)
	elseif	swep:GetElements()["acog_mount_rail"] then
        model:SetBodygroup(1,2)
    else
        model:SetBodygroup(1,0)
    end

    if swep:GetElements()["acog_mount_rail2"] then
        model:SetBodygroup(2,1)
    else
        model:SetBodygroup(2,0)
    end    	
end


ATT.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"acog_mount_rail"},

        Category = {"optic_css_s", "optic_css_acog_iron", "css_scope_extra", "tac_css"},
        Pos = Vector(2.7, 0, -2),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -0.5,
		Scale = 1,
    },
	
	{
        PrintName = "Angled Optic",
        DefaultName = "None",
		InstalledElements = {"acog_mount_rail2"},

        Category = {"optic_css_s", "css_scope_extra", "tac_css"},
        Pos = Vector(-0.9, -0.85, -1.85),
        Ang = Angle(0, -45, 0),
        ExtraSightDistance = -0.5,
		Scale = 1,
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

ATT.PrintName = "Iron Sight"
ATT.CompactName = "BACKUP"
ATT.Icon = Material("entities/gekolt_css_optic/acog_irons.png", "mips smooth")
ATT.Description = [[Simple backup sight for your optic.]]
ATT.SortOrder = 4

ATT.Category = {"optic_css_acog_iron"}
ATT.ActivateElements = {"acog_sight_on"}

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 8.5, 0.25),
        Ang = Angle(0, 2.78, 0),
        Magnification = 1.25,
        ViewModelFOV = 40
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_optic_acog_iron")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "'Enhanced Optical Gunsight' ver. 2003"
ATT.CompactName = "EOG '03"
ATT.Icon = Material("entities/gekolt_css_optic/acog2.png", "mips smooth")
ATT.Description = [[
Powered mid-range scope with less knobs and a higher price tag than you remember
Comfortable for use at 2000 inches
The backup ironsights are built in! You cannot mount external sights ($$$)
]]
ATT.SortOrder = 1.1

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

ATT.PrintName = "Blanco 4C Optical Sight"
ATT.CompactName = "BLANCO4C"
ATT.Icon = Material("entities/gekolt_css_optic/b4.png", "mips smooth")
ATT.Description = [[
Variable mid-ranged scoped with a short rail mounted
Comfortable from 40 to 100 meters
Allows external sights via the rail
]]
ATT.SortOrder = 2

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
ATT.RTScopeReticleScale = 0.95
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
        Category = {"tac_css_flat", "mount_css", "optic_css_holo", "css_scope_extra"
		},
        Pos = Vector(1,0, -2.4),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_optic_bravo")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Trilux Scope"
ATT.CompactName = "Trilux"
ATT.Icon = Material("entities/gekolt_css_optic/fal.png", "mips smooth")
ATT.Description = [[
Cold War era scope with simple picture and high magnification
100 metre
]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/trilux.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.017, 7.5, -1.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 5
ATT.RTScopeReticle = Material("arc9_css/scope_fal.png", "mips smooth")
ATT.RTScopeReticleScale = 1.04
ATT.RTScopeColorable = true

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "gekolt_css_optic_fal")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Elaccco Optical Gun Sight Scope"
ATT.CompactName = "Elaccco"
ATT.Icon = Material("entities/gekolt_css_optic/elcan.png", "mips smooth")
ATT.Description = [[
Sight famous for being of machine gun
Nice 83 feet
]]
ATT.SortOrder = 2

ATT.Model = "models/weapons/geckololt_css/atts/elcan.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.001, 7.75, -1.695),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 15
ATT.RTScopeReticle = Material("arc9_css/scope7_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.03
ATT.RTScopeColorable = true

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "gekolt_css_optic_elcan")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Happy Meal Gunsight Combo"
ATT.CompactName = "Happy Meal"
ATT.Icon = Material("entities/gekolt_css_optic/hamr.png", "mips smooth")
ATT.Description = [[
Combat scope fitted with a backup reflex
Effective up close to around 159 feet
]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/hamr.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7, -1.63),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
    {
        Pos = Vector(0, 6.5, -3.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        ViewModelFOV = 60,
        Disassociate = true
    },
}

ATT.RTScopeFOVMax = 9
ATT.RTScopeFOVMin = 17
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 1

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/scope3_border.png", "mips smooth")
ATT.RTScopeReticleScale = 0.95
ATT.RTScopeColorable = true

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.075
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.14
ATT.SprintToFireTimeAdd = 0.08

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/acog_top.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ARC9.LoadAttachment(ATT, "gekolt_css_optic_hamr")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Far View Optical Gunscope"
ATT.CompactName = "FView"
ATT.Icon = Material("entities/gekolt_css_optic/farv.png", "mips smooth")
ATT.Description = [[
Called Far View for famously letting you view far
Effective anywhere you can see someone
]]
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

        Category = {"optic_css_s", "css_scope_extra", "tac_css"},
        Pos = Vector(4.9, 0, -3.3),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -1,
		Scale = 1,
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

ATT.PrintName = "Vampire Thermal Scope"
ATT.CompactName = "Vampire"
ATT.Icon = Material("entities/gekolt_css_optic/vampire.png", "mips smooth")
ATT.Description = [[
Thermal sniper sight that allows you to touch someone any time of day
Effective near 168 feet
]]
ATT.SortOrder = 8

ATT.Model = "models/weapons/geckololt_css/atts/sweeper.mdl"
ATT.ModelBodygroups = "00"

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7, -1.49),
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

        Category = {"optic_css_s", "css_scope_extra", "tac_css"},
        Pos = Vector(3.35, 0, -2.55),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -1,
		Scale = 1,
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/thermal_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 6

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.1)

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

ARC9.LoadAttachment(ATT, "gekolt_css_optic_sweeper")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "SARLEYWARLEY Medium Scope"
ATT.CompactName = "SARLEYWARLEY"
ATT.Icon = Material("entities/gekolt_css_optic/schmidt.png", "mips smooth")
ATT.Description = [[
Medium range hunting scope
Effective at the furthest range you can spit at someone]]
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
ATT.RTScopeFOV = 18
ATT.RTScopeReticle = Material("arc9_css/scope6_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, -0.2)

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

ARC9.LoadAttachment(ATT, "gekolt_css_optic_schd")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Micro Scope"
ATT.CompactName = "Micro Scope"
ATT.Icon = Material("entities/gekolt_css_optic/micro.png", "mips smooth")
ATT.Description = [[No not that microscope
2x magnifying scope with three mounted rails for even more attachments
Effective at the furthest range you can piss at]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/micro2.mdl"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7.75, -1.49),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 22
ATT.RTScopeReticle = Material("arc9_css/scope8_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.02
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1
ATT.ModelOffset = Vector(-1, 0, -0.1)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05


ATT.Attachments = {
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css", "mount_css", "optic_css_holo", "css_scope_extra"},
        Pos = Vector(-1,0, -2.3),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "MOUNT LEFT",
        Category = {"mountr_css", "tac_css", "css_scope_extra"},
        Pos = Vector(-1, -0.85, -1.375),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(1, 0, 0),
    },
    {
        PrintName = "MOUNT Right",
        Category = {"mountl_css", "tac_css", "css_scope_extra"},
        Pos = Vector(-1,0.85, -1.375),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(-2, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_optic_micro")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "NPRED Scope"
ATT.CompactName = "NPRED"
ATT.Icon = Material("entities/gekolt_css_optic/pvs4.png", "mips smooth")
ATT.Description = [[
Heavy night vision scope with extremely limited visibility
High magnfiication. Effective pretty far I guess
Hot stuff glows with it
]]
ATT.SortOrder = 100

ATT.Model = "models/weapons/geckololt_css/atts/pvs4.mdl"

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.00, 8.5, -1.495),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 5
ATT.RTScopeReticle = Material("arc9_css/nv_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1.05
ATT.ModelOffset = Vector(0, 0, -0.2)

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

ATT.PrintName = "Gammer Low-Profile Reflex Sight"
ATT.CompactName = "Gammer"
ATT.Icon = Material("entities/gekolt_css_optic/delta.png", "mips smooth")
ATT.Description = [[Small reflex sight designed as a backup. Peculiar reticle]]
ATT.SortOrder = -1.6

ATT.Model = "models/weapons/geckololt_css/atts/delta.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 10, -1.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        HoloSightReticle = Material("arc9_css/uwu.png", "mips smooth"),
    },
    {
        Pos = Vector(0, 10, -1.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60,
        HoloSightReticle = Material("arc9_css/boring/ReticleDot.png", "mips smooth")
    },
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

ATT.PrintName = "Gammer Lower-profiler"
ATT.CompactName = "Gammer LP-"
ATT.Icon = Material("entities/gekolt_css_optic/delta2.png", "mips smooth")
ATT.Description = [[Smaller reflex sight designed as a backup]]
ATT.SortOrder = -1.6

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

ATT.PrintName = "Fritotech Holographic"
ATT.CompactName = "Fritotech"
ATT.Icon = Material("entities/gekolt_css_optic/eo.png", "mips smooth")
ATT.Description = [[
Boxy unique iconic holographic sight]]
ATT.SortOrder = 2.0

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

ATT.PrintName = "Fritotech Prototype Hotmale Scope"
ATT.CompactName = "Frito-proto"
ATT.Icon = Material("entities/gekolt_css_optic/eo_e.png", "mips smooth")
ATT.Description = [[
Once holographic sight now slapped with some "Tech" bollocks
Now has obtained thermal seeking power
Grayscaled for reason not related to gameplay
R&D may or may not have been involved in its creation]]
ATT.SortOrder = 2.2

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

ATT.PrintName = "Fritotech Holographic Pequeñito"
ATT.CompactName = "Frito-pequeño"
ATT.Icon = Material("entities/gekolt_css_optic/eo_s.png", "mips smooth")
ATT.Description = [[
Boxy unique iconic holographic sight
This unit is smaller and has a precise carrot pointing upwards]]
ATT.SortOrder = 2.1

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

ATT.PrintName = "Aniracco Usual"
ATT.CompactName = "ANC Usual"
ATT.Icon = Material("entities/gekolt_css_optic/mrs.png", "mips smooth")
ATT.Description = [[
The most basic reflex sight
Cloned all around the world
This one was 62 yuan!]]
ATT.SortOrder = 1.1

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

ATT.PrintName = "Aniracco Sona"
ATT.CompactName = "ANC Sona"
ATT.Icon = Material("entities/gekolt_css_optic/mrs.png", "mips smooth")
ATT.Description = [[
The most basic reflex sight
Cloned all around the world
This one has an open top for enhanced reflexes! (???)
This one was 98 yuan!]]
ATT.SortOrder = 1.1

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

ATT.PrintName = "Aniracco Slommy"
ATT.CompactName = "ANC Slommy"
ATT.Icon = Material("entities/gekolt_css_optic/mrs.png", "mips smooth")
ATT.Description = [[
The most basic reflex sight
Cloned all around the world
This one has a custom reticle enabling precise and accurate gun shots and smells like salami!!
This one was 137 yuan!]]
ATT.SortOrder = 1.1

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

ATT.PrintName = "RCK Low-profile"
ATT.CompactName = "RCK LP"
ATT.Icon = Material("entities/gekolt_css_optic/rmr.png", "mips smooth")
ATT.Description = [[Small reflex sight designed for pistols and smallest arms]]
ATT.SortOrder = -1.45

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

ATT.PrintName = "Stopwatch Reflex Sight"
ATT.CompactName = "Stopwatch"
ATT.Icon = Material("entities/gekolt_css_optic/okp.png", "mips smooth")
ATT.Description = [[Reflex sight with chevron reticle that looks like old fellow with one of those long straight down beards]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/okp.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7.5, -0.9),
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

ATT.PrintName = "Tick Low-profile"
ATT.CompactName = "Tick LP"
ATT.Icon = Material("entities/gekolt_css_optic/t1.png", "mips smooth")
ATT.Description = [[Low-profile popular red dot sight]]
ATT.SortOrder = -1.4

ATT.Model = "models/weapons/geckololt_css/atts/t1.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 8, -0.65),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/t1.png", "mips smooth")
ATT.HoloSightSize = 800
ATT.HoloSightColorable = true

ATT.Scale = 1.1
ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_t1")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Teller Reflex Sight"
ATT.CompactName = "Teller"
ATT.Icon = Material("entities/gekolt_css_optic/aimpoint.png", "mips smooth")
ATT.Description = [[Cylindrical optics with lotter circles.]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/geckololt_css/atts/reddot.mdl"

ATT.Category = {"optic_css","optic_css_s","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 7, -1.375),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/reddot.png", "mips smooth")
ATT.HoloSightSize = 900
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "gekolt_css_optic_reddot")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Kilimanjaro Low-profile"
ATT.CompactName = "Kilimanjaro LP"
ATT.Icon = Material("entities/gekolt_css_optic/pks.png", "mips smooth")
ATT.Description = [[Small relfex sight for backup use]]
ATT.SortOrder = -1.5

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

ATT = {}

ATT.PrintName = "Temper Anti-Air & Air Powered Rangefinding Reflex Sight"
ATT.CompactName = "Temper AA&A"
ATT.Icon = Material("entities/gekolt_css_optic/ragnok.png", "mips smooth")
ATT.Description = [[Extremely wide holographic sight with a built in range finder for machine gunners and plane machine gunners and people that don't like planes and maybe even people that like planes]]
ATT.SortOrder = 5

ATT.Model = "models/weapons/geckololt_css/atts/ragnok.mdl"

ATT.Category = {"optic_css","optic_css_m","optic_css_holo"}
ATT.Folder = "REFLEX"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 9, -2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/ragnok.png", "mips smooth")
ATT.HoloSightSize = 2200
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

if CLIENT then
    surface.CreateFont("css_font_digi", {
        font = "Arial",
        size = 25,
        weight = 625,
        antialias = true,
        extended = true
    })
end

if CLIENT then

    ATT.HoloSightFunc = function(swep, pos, mdl)
        local col = Color(200, 200, 250, 150)
        local col_tp = Color(col.r, col.g, col.b, 1)
        local ang = mdl:GetAngles()
        ang:RotateAroundAxis(ang:Right(), 90)
        ang:RotateAroundAxis(ang:Up(), -90)
        cam.Start3D2D(pos - (ang:Right() * 800) - (ang:Forward() * 1024), ang, 8)
        surface.SetDrawColor(col_tp)
        surface.SetDrawColor(col)

        local top = "-"
        local d = 32000

        local tr = util.TraceLine({
            start = mdl:GetPos(),
            endpos = mdl:GetPos() + (mdl:GetAngles():Forward() * d),
            mask = MASK_SHOT,
            filter = swep:GetOwner()
        })

        if tr.HitSky then
            top = "OUT OF RANGE"
        else
            top = tostring(math.ceil(tr.Fraction * d * ARC9.HUToM)) .. "m"
        end

        surface.SetTextColor(col)
        surface.SetFont("css_font_digi")
        surface.SetTextPos(128 - (surface.GetTextSize(top) / 2), -5)
        surface.DrawText(top)

        cam.End3D2D()
    end
end

ARC9.LoadAttachment(ATT, "gekolt_css_optic_kemperxl")
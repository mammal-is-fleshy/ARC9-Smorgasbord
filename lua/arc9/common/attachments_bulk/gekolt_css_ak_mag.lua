local ATT = {}

ATT = {}

ATT.PrintName = [[545]]
ATT.CompactName = [[545]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_54"
end

ATT.SortOrder = 1
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_545"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag1")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[308]]
ATT.CompactName = [[308]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_25"
end

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_308"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[556]]
ATT.CompactName = [[556]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_56"
end

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_556"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[566]]
ATT.CompactName = [[566]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[
    Walter
]]

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_water"
end


ATT.Sights = {
    {
        Pos = Vector(0, 8, -5.2),
        Ang = Angle(0, 0, 0),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_566", "noguard", "nofg"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[762 Disk]]
ATT.CompactName = [[762 Disk]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[

]]


ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_dp"
end

ATT.ActivePosOverride = Vector(0, 6, -1.5)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.MovingPosOverride = Vector(0, 5.5, -1.5)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_disk", "noguard"}

ATT.Sights = {
    {
        Pos = Vector(0, 12, -5.24),
        Ang = Angle(0, 0, 0),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}


ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag5")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[919]]
ATT.CompactName = [[919]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[

]]

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_919"}

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_9mm"
end

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag6")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[919 Helica]]
ATT.CompactName = [[Helica]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[

]]

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_919x", "nofg"}

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_bizon"
end

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-13, -2, 3)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag7")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[762 Drum]]
ATT.CompactName = [[Drum]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[

]]

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_drum"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag8")
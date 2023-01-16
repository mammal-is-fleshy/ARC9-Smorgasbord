local ATT = {}

ATT = {}
--- never anglicise/latinise Russian again
ATT.PrintName = [[Atakovat-Rama]]
ATT.CompactName = [[Carbine]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_54"
end

ATT.ShootSound = "oneshotof_cs16/galil-1.wav"
//ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.SortOrder = 1
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_545"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag1")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Okhota-Rama]]
ATT.CompactName = [[Marksman]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.ClipSizeOverride = 15

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_25"
end

ATT.ShootSound = "oneshotof_cs16/sg552-1.wav"
//ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_308"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Erikoinen-Rama]]  -- this is finnish btw
ATT.CompactName = [[Assault]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_56"
end

ATT.ShootSound = "oneshotof_cs16/m4a1_unsil-1.wav"
//ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_556"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Podvod-Rama]]
ATT.CompactName = [[Dart]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[
    Walter
]]

ATT.ClipSizeOverride = 25

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_water"
end

ATT.ShootSound = "oneshotof_cs16/sg550-1.wav"
//ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"


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

ATT.PrintName = [[Kavaleriya-Rama]]
ATT.CompactName = [[LMG]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[

]]

ATT.ClipSizeOverride = 47


ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_dp"
end

ATT.TriggerDelay = true
ATT.TriggerDelayTime = 0.07
ATT.TriggerDownSound = "gekolt_css/weaponclick.wav"
//ATT.TriggerUpSound = "gekolt_css/sliderelease.wav"

ATT.ShootSound = "oneshotof_cs16/m249-1.wav"
//ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.ActivePosOverride = Vector(0, 6, -1.5)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.MovingPosOverride = Vector(0, 5.5, -1.5)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_disk", "noguard", "pre_muzzed"}

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

ATT.PrintName = [[Dobavoch-Rama]]
ATT.CompactName = [[Aux]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[

]]

ATT.ClipSizeOverride = 32

ATT.ShootSound = "oneshotof_cs16/mp5-1.wav"
//ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_919"}

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_9mm"
end

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag6")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Gelikoidal-Rama]]
ATT.CompactName = [[Hex]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[

]]

ATT.ClipSizeOverride = 64

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_919x", "nofg"}

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_bizon"
end

ATT.ShootSound = "oneshotof_cs16/ump45-1.wav"
//ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

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
---??? I should replace this with a shotgun mag
ATT.PrintName = [[762 Drum]]
ATT.CompactName = [[Drum]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[

]]

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_drum"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag8")
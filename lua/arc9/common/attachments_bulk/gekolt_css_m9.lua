local ATT = {}

ATT = {}

ATT.PrintName = [[Auto-Frame]]
ATT.CompactName = [[Auto]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[Semi-auto won't do much in this world of chaos
Unstable recoil
]]

ATT.SortOrder = 1
ATT.Category = "css_m9_frame"
ATT.ActivateElements = {"f_auto"}

ATT.Firemodes = { { Mode = -1, }	}

ATT.ClipSizeOverride = 32

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ex"
end

ATT.RPMMult = 950/800
ATT.RecoilMult = 1.25
ATT.RecoilSideMult = 4
ATT.RecoilRandomSideMult = 0.75/0.3

ARC9.LoadAttachment(ATT, "gekolt_css_m9_f1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Burst-Frame]]
ATT.CompactName = [[Burst]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[Encumbersome frontend device allowing for stable short burst in quick succession
Raised front sight is just only a style points, there is no 80s action movie revolving about a mechanical police reference
]]

ATT.SortOrder = 2
ATT.Category = "css_m9_frame"
ATT.ActivateElements = {"f_burst"}

ATT.Firemodes = { { Mode = 3, }	}

ATT.ClipSizeOverride = 20

ATT.RPMMult = 1.5
ATT.RecoilMult = 0.8
ATT.Sights = {
    {
        Pos = Vector(3.65, 0, 10),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}
ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ex"
end

ARC9.LoadAttachment(ATT, "gekolt_css_m9_f2")



----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Carbine-Frame]]
ATT.CompactName = [[Carbine]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[Pistols don't have to be short
Fully automatic carbine kit along with a old fashion snail magazine
Much more stable than those auto-frames
]]

ATT.SortOrder = 3
ATT.Category = "css_m9_frame"
ATT.ActivateElements = {"f_carbine", "akantbo"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_carbine"
end

ATT.RPMMult = 750/800
ATT.Firemodes = {	{ Mode = -1, }	}
ATT.ClipSizeOverride = 42

ATT.DamageMaxMult = 24/26
ATT.DamageMinMult = 12/16 
ATT.RecoilMult = 0.875
ATT.RecoilKickMult = 0.8/1
ATT.RecoilRandomSideMult = 0.2/0.3

ATT.SpeedMultSightsMult = 0.75
ATT.SpeedMultShootingMult = 0.85
ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-15, -2, 3.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"
ATT.Sights = {
    {
        Pos = Vector(-2, -5, -1.05),
        Ang = Angle(0, 0, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "gekolt_css_m9_f3")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Whisper-Frame]]
ATT.CompactName = [[SD]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[For quiet times and uneasy times
For infiltration with styles
]]
ATT.ClipSizeOverride = 8
ATT.SortOrder = 4
ATT.Category = "css_m9_frame"
ATT.ActivateElements = {"f_sd", "pre_muzzed"}

ATT.ShootSound = "gekolt_css/usp1.wav"

ATT.MuzzleParticleOverride = "muzzleflash_suppressed"

ATT.RPMMult = 750/800
ATT.RangeMaxMult = 0.75
ATT.RangeMinMult = 0.9

ATT.DamageMaxMult = 1.25
ATT.DamageMinMult = 0.75

ATT.RecoilMult = 1.05

ATT.Sights = {
    {
        Pos = Vector(3.85, 0, 12),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "gekolt_css_m9_f4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Stalker-Frame]]
ATT.CompactName = [[Welrod]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[Super compact manual action kit, the hammer doesn't even automatically reset
Damage magically increases to compensate
]]
ATT.ClipSizeOverride = 7
ATT.SortOrder = 5
ATT.Category = "css_m9_frame"
ATT.ActivateElements = {"f_welrod", "pre_muzzed", "akantbo"}
ATT.ShootSound = "gekolt_css/usp1.wav"
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.RPMMult = 60/800

ATT.DamageMaxMult = 54/26
ATT.DamageMinMult = 39/16 
ATT.SpreadMultSights = 0.15
ATT.SpreadMult = 0.15

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_sd"
end

ATT.Sights = {
    {
        Pos = Vector(3.85, 0, 12),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "gekolt_css_m9_f5")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Compact-Frame]]
ATT.CompactName = [[Compact]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[Shortened slide for certain types of officers
Magically increases damage in the name of videogame balance
]]
ATT.ClipSizeOverride = 8
ATT.SortOrder = 6
ATT.Category = "css_m9_frame"
ATT.ActivateElements = {"f_p38"}


ATT.RPMMult = 600/800

ATT.DamageMaxMult = 32/26
ATT.DamageMinMult = 21/16 

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-25, -2, -7.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_p38"
end

ARC9.LoadAttachment(ATT, "gekolt_css_m9_f6")


----------------------------------------------------------------------------------


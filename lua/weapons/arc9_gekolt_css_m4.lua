AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Primaries"

SWEP.PrintName = "CC4-R"
SWEP.TrueName = "M4A1"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "United States of America",
    ["Caliber"] = "5.56x45mm NATO",
}

SWEP.Credits = {
    Author = "Geckololt, 8Z",
    Contact = "SlogoKolt#6648",
    Assets = "Counter-Strike Source"
}

SWEP.Description = [[Standard infantry weapon that is also absurdly popular in civilian markets.
Has countless models and variations, some less stupid than others]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_m4a1.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_m4a1.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4, 3.5, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 3.5, -7),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 33 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 600 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 3000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 4 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2900 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 700

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    },
    {
        Mode = 1
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.4 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.2
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.1

SWEP.RecoilRandomUpMultRecoil = 1.1
SWEP.RecoilRandomSideMultRecoil = 1.12
SWEP.RecoilKickMultRecoil = 1.015

-------------------------- SPREAD

SWEP.Spread = 0.0015

SWEP.SpreadAddRecoil = 0.0006 -- Applied per unit of recoil.
SWEP.SpreadMultRecoil = 1.05
SWEP.RecoilModifierCap = 20

-------------------------- HANDLING

SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 1 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2

SWEP.FreeAimRadiusSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.31 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.31 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- BLIND FIRE

SWEP.CanBlindFire = true -- This weapon is capable of blind firing.
SWEP.BlindFireLHIK = true -- Hide the left hand while blind firing forward.

SWEP.BlindFireLeft = true
SWEP.BlindFireRight = true -- This weapon can blind fire towards the right. Generally keep this off.

SWEP.BlindFireOffset = Vector(0, 0, 32) -- The amount by which to offset the blind fire muzzle.
SWEP.BlindFirePos = Vector(-2, -2, 8)
SWEP.BlindFireAng = Angle(0, 0, -45)

SWEP.BlindFireRightOffset = Vector(0, 24, 0) -- The amount by which to offset the blind fire muzzle.
SWEP.BlindFireRightPos = Vector(-8, 10, -1)
SWEP.BlindFireRightAng = Angle(-45, 0, 0)

SWEP.BlindFireLeftOffset = Vector(0, 24, 0) -- The amount by which to offset the blind fire muzzle.
SWEP.BlindFireLeftPos = Vector(5, 5, 0)
SWEP.BlindFireLeftAng = Angle(60, 0, 0)

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 128
SWEP.BashRange = 64
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.5

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.05, 0, -0.25),
    Ang = Angle(0,0,-5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

SWEP.Crosshair = false

SWEP.SprintAng = Angle(30, -15, -10)
SWEP.SprintPos = Vector(3, 2, -0.5)

SWEP.SprintMidPoint = {
    Pos = Vector(-1, -5, -5),
    Ang = Angle(5, 20, 15)
}

SWEP.MovingPos = Vector(-0.1, 2.5, -0.25)
SWEP.MovingAng = Angle(0, -1, -2)

SWEP.BipodPos = Vector(-3.05, -2, -1)
SWEP.BipodAng = Angle(0, 0, -5)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, 1, -1.5)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.CustomizeAng = Angle(90, 5, 0)
SWEP.CustomizePos = Vector(10, 28, 3.5)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(10.5, -3.05, -4)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = false
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_4"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.UBGLIntegralReload = true -- The UBGL uses reload animations that are baked into the gun.
SWEP.DoFireAnimationUBGL = true
SWEP.NoShellEjectUBGL = true
SWEP.MuzzleEffectQCAUBGL = 1

-------------------------- SOUNDS

SWEP.ShootSound = "gekolt_css/m4a1_unsil-1.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "00000000000000000000"

SWEP.BulletBones = {
    [1] = "W_Belt14",
    [2] = "W_Belt13",
    [3] = "W_Belt12",
    [4] = "W_Belt11",
    [5] = "W_Belt10",
    [6] = "W_Belt9",
    [7] = "W_Belt8",
    [8] = "W_Belt7",
    [9] = "W_Belt6",
    [10] = "W_Belt5",
}


SWEP.Hook_TranslateAnimation = function(wep, data, anim)
    if wep:GetUBGL() and wep:HasElement("pre_ubgl") then  -- this is very very very wrong
            if anim == "idle" then  return "idle_ubgl" end
            if anim == "idle_empty" then  return "idle_ubgl" end
            if anim == "fire" then  return "fire_ubgl" end
            if anim == "fire_empty" then  return "fire_ubgl" end
            if anim == "fire_iron" then  return "fire_ubgl" end
            if anim == "fire_iron_empty" then  return "fire_ubgl" end
    end

    if wep.Attachments[10].Installed then
            if anim == "reload" then  return "reload_akimbo" end
            if anim == "reload_empty" then  return "reload_empty_akimbo" end
            if anim == "reload_acr" then  return "reload_akimbo" end
            if anim == "reload_empty_acr" then  return "reload_empty_akimbo" end
            if anim == "reload_proto" then  return "reload_akimbo" end
            if anim == "reload_empty_proto" then  return "reload_empty_akimbo" end
            if anim == "reload_a1" then  return "reload_akimbo" end
            if anim == "reload_empty_a1" then  return "reload_empty_akimbo" end
            if anim == "reload_smg" then  return "reload_akimbo" end
            if anim == "reload_empty_smg" then  return "reload_empty_akimbo" end
            if anim == "reload_ak" then  return "reload_akimbo" end
            if anim == "reload_empty_ak" then  return "reload_empty_akimbo" end
            if anim == "reload_empty_sd" then  return "reload_empty_akimbo" end
            if anim == "reload_perosa" then  return "reload_akimbo" end
            if anim == "reload_empty_perosa" then  return "reload_empty_akimbo" end
            if anim == "reload_gih" then  return "reload_akimbo" end
            if anim == "reload_empty_gih" then  return "reload_empty_akimbo" end
    end
end

SWEP.Animations = {
    ["firemode"] = {
        Source = "firemode",
    },
    ["enter_ubgl"] = {
        Source = "r2n",
        IKTimeLine = { { t = 0, lhik = 1, rhik = 1, }, { t = 0.8, lhik = 0, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, }},
        EventTable = {
            {s =  "gekolt_css/clay/c4_draw.wav" ,   t = 0 / 40},
        },
    },
    ["exit_ubgl"] = {
        Source = "n2r",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 1, }, { t = 0.8, lhik = 1, rhik = 1, }, { t = 1, lhik = 1, rhik = 1, }},
        EventTable = {
            {s =  "gekolt_css/clay/grenade_throw.wav" ,   t = 0 / 40},
        },
    },
    ["reload_ubgl"] = {
        Source = "nade_reload",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, }},
        EventTable = {
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 6 / 40},
            {s =  "gekolt_css/m3_insertshell.wav" ,   t = 50 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 80 / 40},
        },
    },
    ["idle_ubgl"] = {
        Source = "nade_idle",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, }},
    },
    ["fire_ubgl"] = {
        Source = {"nade_fire"},
        IKTimeLine = { { t = 0, lhik = 0, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, }},
    },

    ["fire"] = {
        Source = {"fire"},
    },
    ["fire_iron"] = {
        Source = {"fire_iron"},
    },
    ["reload"] = {
        Source = "wet",
        FireASAP = true,
        MinProgress = 0.83,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 52 / 40},
        },
    },
    ["reload_empty"] = {
        Source = "dry_3",
        FireASAP = true,
        MinProgress = 0.9,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 1, rhik = 1, },
        { t = 0.7, lhik = 1, rhik = 0, },{ t = 0.8, lhik = 1, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 48 / 40},
            {s =  "gekolt_css/m4a1_boltpull.wav" ,    t = 75 / 40},
        },
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s =  "gekolt_css_foley/draw_rif.wav" ,   t = 0 / 40},
        },
    },
    ["holster"] = {
        Source = "idle",
    },
    ["idle"] = {
        Source = "idle",
    },
    ["firemode"] = {
        Source = "firemode",
    },
    ["idle_empty"] = {
        Source = "idle",
    },

    ["fire_empty"] = {
        Source = {"fire"},
    },
    ["fire_empty_bolt"] = {
        Source = {"fire"},
        FireASAP = true,
        MinProgress = 0,
    },
    ["fire_iron_empty"] = {
        Source = {"fire"},
        FireASAP = true,
        MinProgress = 0,
    },
    ["fire_iron_empty_bolt"] = {
        Source = {"fire"},
        FireASAP = true,
        MinProgress = 0,
    },
    ["fire_bolt"] = {
        Mult = 0.8,
        Source = {"fire_bolt"},
        EventTable = {
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 26 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 30 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 40 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },{ t = 0.2, lhik = 1, rhik = 1, },
        { t = 0.5, lhik = 1, rhik = 0, }, { t = 0.7, lhik = 1, rhik = 0, }, { t = 0.9, lhik = 1, rhik = 1, },
        },
    },
    ["fire_iron_bolt"] = {
        Mult = 0.8,
        Source = {"fire_bolt"},
        EventTable = {
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 26 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 30 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 40 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },{ t = 0.2, lhik = 1, rhik = 1, },
        { t = 0.5, lhik = 1, rhik = 0, }, { t = 0.7, lhik = 1, rhik = 0, }, { t = 0.9, lhik = 1, rhik = 1, },
        },
    },
    ["reload_bolt"] = {
        Source = "wet_sniper",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },{ t = 0.2, lhik = 0, rhik = 1, },
        { t = 0.3, lhik = 0, rhik = 1, }, { t = 0.7, lhik = 0, rhik = 1, }, { t = 0.9, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.85,
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 65 / 40},
        },
    },
    ["reload_empty_bolt"] = {
        Source = "dry_sniper",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.2, lhik = 1, rhik = 0, },
        { t = 0.3, lhik = 0, rhik = 1, }, { t = 0.6, lhik = 0, rhik = 1, }, { t = 0.7, lhik = 0, rhik = 1, },
        { t = 0.85, lhik = 1, rhik = 0, }, { t = 0.9, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.9,
        EventTable = {
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 15 / 40},
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 40 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 95 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 130 / 40},
        },
    },

    ["reload_akimbo"] = {
        Source = "wet_akimbo",
        FireASAP = true,
        MinProgress = 0.83,
        IKTimeLine = { { t = 0, lhik = 1, rhik = 1, }, },
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 62 / 40},
        },
    },
    ["reload_empty_akimbo"] = {
        Source = "dry_akimbo",
        FireASAP = true,
        MinProgress = 0.9,
        IKTimeLine = { { t = 0, lhik = 1, rhik = 1, }, },
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 62 / 40},
            {s =  "gekolt_css/usp_sliderelease.wav" ,    t = 88 / 40},
        },
    },


    ["fire_empty_pump"] = {
        Source = {"fire"},
        IKTimeLine = { { t = 0, lhik = 1, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },},
    },
    ["fire_iron_empty_pump"] = {
        Source = {"fire"},
        IKTimeLine = { { t = 0, lhik = 1, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },},
    },
    ["fire_pump"] = {
        Source = {"fire_pump"},
        EventTable = {
            {s =  "gekolt_css/m3_pump.wav" ,   t = 10 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.01, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["fire_iron_pump"] = {
        Source = {"fire_pump"},
        EventTable = {
            {s =  "gekolt_css/m3_pump.wav" ,   t = 10 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.01, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_pump"] = {
        Source = "wet_pump",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.01, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.85,
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 42 / 40},
        },
    },
    ["reload_empty_pump"] = {
        Source = "dry_pump",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.01, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 0, rhik = 1, },{ t = 0.99, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        EventTable = {
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 50 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 75 / 40},
        },
        MinProgress = 0.925,
    },


    ["reload_lmg"] = {
        Source = "wet_120_lmg",
        MagSwapTime = 80 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 0, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.95,
        EventTable = {
            {s =  "gekolt_css/m249_coverup.wav" ,   t = 20 / 40},
            {s =  "gekolt_css/m249_boxout.wav" ,    t = 45 / 40},
            {s =  "gekolt_css/m249_boxin.wav" ,    t = 102 / 40},
            {s =  "gekolt_css/m249_chain.wav" ,    t = 135 / 40},
            {s =  "gekolt_css/m249_coverdown.wav" ,   t = 180 / 40},
            {s =  "gekolt_css/m4a1_magtap.wav" ,   t = 190 / 40},
        },
    },
    ["reload_empty_lmg"] = {
        Source = "dry_120_lmg",
        MagSwapTime = 75 / 40,
        EventTable = {
            {s =  "gekolt_css/galil_boltpull.wav" ,   t = 15 / 40},
            {s =  "gekolt_css/m249_boxout.wav" ,   t = 45 / 40},
            {s =  "gekolt_css/m249_coverup.wav" ,    t = 90 / 40},
            {s =  "gekolt_css/m249_boxin.wav" ,    t = 142 / 40},
            {s =  "gekolt_css/m249_chain.wav" ,    t = 175 / 40},
            {s =  "gekolt_css/m249_coverdown.wav" ,   t = 220 / 40},
            {s =  "gekolt_css/m4a1_magtap.wav" ,   t = 230 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.075, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 0, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.95,
    },

    ["reload_empty_proto"] = {
        Source = "dry_proto",
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 55 / 40},
            {s =  "gekolt_css/m4a1_boltpull.wav" ,    t = 78 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.925,
    },
    ["fire_proto"] = { Source = {"fire_proto"},
    },
    ["fire_iron_proto"] = { Source = {"fire_iron_proto"},
    },

    ["reload_empty_pdw"] = {
        Source = "dry_57",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.1, lhik = 0, rhik = 1, },
        { t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/p90_cliprelease.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/p90_clipout.wav" ,   t = 25 / 40},
            {s =  "gekolt_css/sg552_clipin.wav" ,    t = 60 / 40},
            {s =  "gekolt_css/sg552_boltpull.wav" ,    t = 88 / 40},
        },
        FireASAP = true,
        MinProgress = 0.9,
    },
    ["reload_pdw"] = {
        Source = "wet_57",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.1, lhik = 0, rhik = 1, },
        { t = 0.8, lhik = 0, rhik = 1, },{ t = 1, lhik = 0.95, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/p90_cliprelease.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/p90_clipout.wav" ,   t = 25 / 40},
            {s =  "gekolt_css/sg552_clipin.wav" ,    t = 60 / 40},
        },
        FireASAP = true,
        MinProgress = 0.95,
    },

    ["reload_empty_sg"] = {
        Source = "dry_sg",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.15, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/famas_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/famas_clipin.wav" ,    t = 62 / 40},
            {s =  "gekolt_css/famas_boltpull.wav" ,    t = 95 / 40},
        },
        FireASAP = true,
        MinProgress = 0.95,
    },
    ["reload_sg"] = {
        Source = "wet_sg",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.15, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/famas_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/famas_clipin.wav" ,    t = 62 / 40},
        },
        FireASAP = true,
        MinProgress = 0.9,
    },
    ["fire_sg"] = { Source = {"fire_proto"},
    },
    ["fire_iron_sg"] = { Source = {"fire_iron_proto"},
    },

    ["reload_empty_ak"] = {
        Source = {"dry_ak","dry_ak2"},
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 63 / 40},
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 90 / 40},
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 95 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.95,
    },
    ["reload_ak"] = {
        Source = "wet_ak",
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 58 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.9,
    },

    ["reload_empty_smg"] = {
        Source = "dry_smg",
        EventTable = {
            {s =  "gekolt_css/mp5_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/mp5_clipin.wav" ,    t = 48 / 40},
            {s =  "gekolt_css/usp_sliderelease.wav" ,    t = 75 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.9,
    },
    ["reload_smg"] = {
        Source = "wet_smg",
        EventTable = {
            {s =  "gekolt_css/mp5_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/mp5_clipin.wav" ,    t = 45 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.9,
    },
    ["reload_empty_sd"] = {
        Source = "dry_sd",
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 52 / 40},
            {s =  "gekolt_css/usp_sliderelease.wav" ,    t = 75 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.9,
    },

    ["idle_bow"] = { Source = "idle_bow", },
    ["idle_empty_bow"] = { Source = "idle_empty_bow", },
    ["fire_bow"] = { Source = "fire_bow", },
    ["reload_bow"] = {
        Source = "dry_bow",
        EventTable = {
        },
    },
    ["reload_empty_bow"] = {
        Source = "dry_bow",
        EventTable = {
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 5 / 40},
            {s =  "gekolt_css/g3sg1_clipin.wav" ,    t = 50 / 40},
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 80 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.02, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
    },


    ["reload_empty_a1"] = {
        Source = "dry_2",
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 48 / 40},
            {s =  "gekolt_css/m4a1_boltpull.wav" ,    t = 68 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.9,
    },
    ["reload_empty_acr"] = {
        Source = "dry_4",
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 52 / 40},
            {s =  "gekolt_css/m4a1_boltpull.wav" ,    t = 72 / 40},
        },
        FireASAP = true,
        MinProgress = 0.9,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
    },


    ["reload_gih"] = {
        Source = "wet_gih",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 62 / 40},
        },
        FireASAP = true,
        MinProgress = 0.9,
    },
    ["reload_empty_gih"] = {
        Source = "dry_gih",
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 62 / 40},
            {s =  "gekolt_css/m4a1_boltpull.wav" ,    t = 92 / 40},
        },
        FireASAP = true,
        MinProgress = 0.9,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },

    ["reload_perosa"] = {
        Source = "wet_perosa",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.9,
        EventTable = {
            {s =  "gekolt_css/mp5_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/mp5_clipin.wav" ,    t = 53 / 40},
        },
    },
    ["reload_empty_perosa"] = {
        Source = "dry_perosa",
        EventTable = {
            {s =  "gekolt_css/mp5_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/mp5_clipin.wav" ,    t = 62 / 40},
            {s =  "gekolt_css/m4a1_boltpull.wav" ,    t = 92 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        FireASAP = true,
        MinProgress = 0.9,
    },
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
    ["up_bolt"] = {
        Bodygroups = { {0, 6},{1, 2},{4, 5},{5, 4},{6, 7},{10,7}, },
        AttPosMods = { [5] = { Pos = Vector(0, 1.2, 14), }, [7] = { Pos = Vector(0, -2.4, 4.5), }, [11] = { Pos = Vector(0, 1, 10), } }
    },
    ["up_bow"] = {
        Bodygroups = { {0, 7},{4, 5},{5, 7},{6, 7},{10,7}, },
        AttPosMods = { [7] = { Pos = Vector(0, -3.25, 3), } }
    },
    ["up_lmg"] = {
        Bodygroups = { {0, 4},{4, 4},{5, 9} },
        AttPosMods = { [7] = { Pos = Vector(0, -2.677, 0.15), }, [11] = { Pos = Vector(0, 1, 9.5), } }
    },
    ["up_proto"] = {
        Bodygroups = { {0, 1},{4, 2},{5, 8} },
        AttPosMods = { [7] = { Pos = Vector(0, -3.9, 4.25), } }
    },
    ["up_a1"] = {
        Bodygroups = { {0, 11},{4, 3},{5, 8} },
        AttPosMods = { [7] = { Pos = Vector(0, -3.75, 4.25), } }
    },
    ["up_acr"] = {
        Bodygroups = { {0, 12},{4, 6},{5, 8} },
        AttPosMods = { [7] = { Pos = Vector(0, -3.75, 4.25), } }
    },
    ["up_ak"] = {
        Bodygroups = { {1, 1},{3, 1},{4, 5},{5, 1} },
        AttPosMods = { [11] = { Pos = Vector(0, 1, 9), } }
    },
    ["up_9mm"] = {
        Bodygroups = { {4, 1},{5, 11} },
    },
    ["up_sd"] = {
        Bodygroups = {
            {0, 2},{5, 3},{6, 7},{10,7}
        },
        AttPosMods = { [5] = { Pos = Vector(0, 1.2, 11.5), }, [9] = { Pos = Vector(0, -0.25, 15.75), }, }
    },
    ["up_gih"] = {
        Bodygroups = {
            {0, 8},{1, 2},{4, 5},{5, 6},{6, 7},{10,7}
        },
        AttPosMods = { [5] = { Pos = Vector(0, 1.2, 11.5),}, [7] = { Pos = Vector(0, -2.1, 4.5), }, [11] = { Pos = Vector(0, 1, 9.5), }  }
    },
    ["up_perosa"] = {
        Bodygroups = {
            {0, 13},{1, 2},{4, 5},{5, 10},{6, 7},{10,7}
        },
        AttPosMods = { [5] = { Pos = Vector(0, 1.2, 11.5),}, [7] = { Pos = Vector(0, -2.1, 4.5), }  }
    },
    ["up_pdw"] = {
        Bodygroups = {
            {0, 3},{4, 5},{5, 2},{6, 7},{10,7}
        },
        AttPosMods = { [7] = { Pos = Vector(0, -2.5, 1), }, [8] = { Pos = Vector(0, -0.375, 19.75), } }
    },
    ["up_sg"] = {
        Bodygroups = {
            {0, 5},{1, 2},{4, 5},{5, 8},{6, 7},{10,7}
        },
        AttPosMods = { [7] = { Pos = Vector(0, -3.75, 4.25), }, [8] = { Pos = Vector(0, -0.25, 25), } , [9] = { Pos = Vector(0, -0.25, 18.5), },[11] = { Pos = Vector(0, 1, 10), } }
    },
    ["up_pump"] = {
        Bodygroups = {
            {0, 9},{1, 2},{4, 5},{5, 5},{6, 7},{10,7}
        },
        AttPosMods = { [7] = { Pos = Vector(0, -1.5, 4.25), }, [9] = { Pos = Vector(0, -0.25, 12), }, }
    },

    ["guard_lmg"] = {
        Bodygroups = { {6, 5}, {10, 5} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.85, 11.9),}, [8] = { Pos = Vector(0, -0.25, 30), }, [9] = { Pos = Vector(0, -0.25, 23.5), }, }
    },
    ["guard_a1"] = {
        Bodygroups = { {6, 2}, {10, 1} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.7, 12.2),}, [8] = { Pos = Vector(0, -0.25, 28.75), }, [9] = { Pos = Vector(0, -0.25, 24.75), }, }
    },
    ["guard_drg"] = {
        Bodygroups = { {6, 13}, {10, 11} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.25, 11.9),}, [8] = { Pos = Vector(0, -0.25, 22), }, [9] = { Pos = Vector(0, -0.25, 19.55), }, }
    },
    ["guard_doe"] = {
        Bodygroups = { {6, 15}, {10, 13} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.2, 11.5),}, [8] = { Pos = Vector(0, -0.25, 15), } }
    },
    ["guard_608"] = {
        Bodygroups = { {6, 16}, {10, 2} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.2, 11.75),}, [8] = { Pos = Vector(0, -0.25, 22), } }
    },
    ["guard_acr"] = {
        Bodygroups = { {6, 11}, {10, 7} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.95, 12.2),}, [8] = { Pos = Vector(0, -0.25, 28.75), }, [9] = { Pos = Vector(0, -0.25, 23.75), }, }
    },
    ["guard_a2"] = {
        Bodygroups = { {6, 3}, {10, 1} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.75, 12.7),},[8] = { Pos = Vector(0, -0.25, 32), }, [9] = { Pos = Vector(0, -0.25, 24.75), }, }
    },
    ["guard_bn63"] = {
        Bodygroups = { {6, 17}, {10, 3} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.5, 12.7),},[8] = { Pos = Vector(0, -0.25, 32), }, [9] = { Pos = Vector(0, -0.25, 23.75), }, }
    },
    ["guard_10"] = {
        Bodygroups = { {6, 1}, {10, 1} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.05, 12.6),}, [8] = { Pos = Vector(0, -0.25, 31.4), }, [9] = { Pos = Vector(0, -0.25, 24.25), }, }
    },
    ["guard_148"] = {
        Bodygroups = { {6, 12} },
    },
    ["guard_adar"] = {
        Bodygroups = { {6, 4}, {10, 1} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.4, 14.5),}, [8] = { Pos = Vector(0, -0.25, 31.25), }, [9] = { Pos = Vector(0, -0.25, 24.1), }, }
    },
    ["guard_no"] = {
        Bodygroups = { {6, 6}, {10, 6} },
        AttPosMods = { [8] = { Pos = Vector(0, -0.25, 12.75), } }
    },
    ["guard_sten"] = {
        Bodygroups = { {6, 14}, {10, 12} },
        AttPosMods = { [8] = { Pos = Vector(0, -0.25, 19), } }
    },
    ["guard_lr300"] = {
        Bodygroups = { {6, 9}, {10, 9} },
        AttPosMods = { [8] = { Pos = Vector(0, -0.25, 23), } }
    },
    ["guard_ris"] = {
        Bodygroups = { {6, 10}, {10, 10} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.3, 12), },[8] = { Pos = Vector(0, -0.25, 21.2), }, [9] = { Pos = Vector(0, -0.25, 18.75), }, }
    },
    ["guard_spr"] = {
        Bodygroups = { {6, 8}, {10, 8} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.1, 13), },[8] = { Pos = Vector(0, -0.25, 22.5), }, [9] = { Pos = Vector(0, -0.25, 18.25), }, }
    },
    ["guard_t86"] = {
        Bodygroups = { {6, 18}, {10, 4} },
        AttPosMods = { [5] = { Pos = Vector(0, 1.25, 13.15), },[8] = { Pos = Vector(0, -0.25, 25.5), }, [9] = { Pos = Vector(0, -0.25, 19.5), }, }
    },
    ["s_a1"] = {
        Bodygroups = { {2, 1} },
    },
    ["s_bolt"] = {
        Bodygroups = { {2, 6} },
    },
    ["s_wire"] = {
        Bodygroups = { {2, 3} },
    },
    ["s_slide"] = {
        Bodygroups = { {2, 2} },
    },
    ["s_pdw"] = {
        Bodygroups = { {2, 4} },
    },
    ["s_no"] = {
        Bodygroups = { {2, 5} },
    },
    ["s_light"] = {
        Bodygroups = { {2, 8} },
    },
    ["s_swire"] = {
        Bodygroups = { {2, 9} },
    },
    ["s_608"] = {
        Bodygroups = { {2, 10} },
    },
    ["s_thomp"] = {
        Bodygroups = { {2, 12} },
    },
    ["s_607"] = {
        Bodygroups = { {2, 11} },
    },
    ["s_x79"] = {
        Bodygroups = { {2, 14} },
    },
    ["s_t91"] = {
        Bodygroups = { {2, 13} },
    },

    ["g_ske"] = {
        Bodygroups = { {7, 3} },
    },
    ["g_wood"] = {
        Bodygroups = { {7, 6} },
    },
    ["g_short"] = {
        Bodygroups = { {7, 5} },
    },
    ["g_tw"] = {
        Bodygroups = { {7, 7} },
    },
    ["g_hunt"] = {
        Bodygroups = { {7, 1},{2, 5} },
    },
    ["g_adar"] = {
        Bodygroups = { {7, 8},{2, 5} },
    },
    ["g_saw"] = {
        Bodygroups = { {7, 2},{2, 7} },
    },

    ["fg_saw"] = {
        Bodygroups = { {8, 1} },
    },
    ["akimbo"] = {
        Bodygroups = { {8, 2} },
    },
}

local lookup = {
    ["default"] = 1,
    ["gekolt_css_m4_u_lmg"] = 4,
    ["gekolt_css_m4_u_acr"] = 2,
    ["gekolt_css_m4_u_a1"] = 2,
    ["gekolt_css_m4_u_sg"] = 2,
    ["gekolt_css_m4_u_10"] = 3,
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model

    if wep:HasElement("optic_main") then
        model:SetBodygroup(5, 8)
        if not wep:HasElement("keep_rs") then
            model:SetBodygroup(10, 7)
        end

        local bg = lookup[wep.Attachments[1].Installed or "default"]
        if bg and ((bg ~= 2 and bg ~= 3) or not wep:HasElement("m16_on")) then
            model:SetBodygroup(3, bg)
        end
    end
end

SWEP.Attachments = {
    {	--1
        PrintName = "Receiver",
        DefaultName = "Standard Receiver",

        Category = "css_m4_up",
        Bone = "W_Main",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },

    {	--2
        PrintName = "Handguard",
        DefaultName = "Standard Handguard",

        ExcludeElements = {"noguard"},
        Category = "css_m4_handguard",
        Bone = "W_Main",
        Pos = Vector(0, -0.5, 10),
        Ang = Angle(0, 0, 0),
    },

    {	--3
        PrintName = "Stock",
        DefaultName = "Standard Stock",
        ExcludeElements = {"nostock"},

        DefaultIcon = Material("arc9/def_att_icons/stock_ak.png"),
        Category = "css_m4_stock",
        Bone = "W_Main",
        Pos = Vector(0, -0.75, -3),
        Ang = Angle(0, 0, 0),
    },

    {	--4
        PrintName = "Grip",
        DefaultName = "Standard Grip",

        DefaultIcon = Material("arc9/def_att_icons/grip_ar.png"),
        Category = "css_m4_g",
        Bone = "W_Main",
        Pos = Vector(0, 2.5, 0.5),
        Ang = Angle(0, 0, 0),
    },

    {	--5
        PrintName = "Foregrip",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/grip.png"),
        ExcludeElements = {"nogrip"},
        Category = {"grip_css", "css_m4_fg"},
        Bone = "W_Main",
        Pos = Vector(0, 1.6, 12),
        Ang = Angle(90, 0, -90),
        MergeSlots = {6, 11},
    },

    {   --6 permanent saw grip location, unaffected by the changes of the above attachment
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        ExcludeElements = {"nogrip"},
        Category = {"css_m4_fg"},
        Bone = "W_Main",
        Pos = Vector(0, 1.5, 12),
        Ang = Angle(90, 0, -90),
        -- MergeSlots = {11}
    },

    {	--7
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"no_irons", "no_optic", "optic_main"},  -- i forgot why i did this

        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
        ExcludeElements = {"fg_saw", "alt_optic"},
        Category = {"optic_css", "mount_css_m16"},
        Bone = "W_Main",
        Pos = Vector(0, -1.7, 3),
        Ang = Angle(90, 0, -90),
    },


    {	--8
        PrintName = "Muzzle",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, -0.25, 20),
        Ang = Angle(90, 0, -90),
    },

    {	--9
        PrintName = "Clamp",
        DefaultName = "None",

        ExcludeElements = {"short_clamp"},
        Category = {"clamp_css"},
        Bone = "W_Main",
        Pos = Vector(0, -0.25, 17.5),
        Ang = Angle(90, 0, -90),
    },

    {	--10
        Hidden = true,
        PrintName = "Off-Hand",
        DefaultName = "None",
        InstalledElements = {"akimbo"},

        ExcludeElements = {"akantbo"},
        Category = {"css_akimbo"},
        Bone = "Akimbo_Base",
        Pos = Vector(0, 0, 0),
        Ang = Angle(90, 0, -90),
    },

    {   --11 permanent ubgl, affected separately from the changes of the above attachment
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        ExcludeElements = {"nogrip"},
        Category = {"css_ubgl"},
        Bone = "W_Main",
        Pos = Vector(0, 1, 8.75),
        Ang = Angle(90, 0, -90),
    },
}
AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Primaries"

SWEP.PrintName = "Roteernte-95"
SWEP.TrueName = "M712 Schnellfeuer"

SWEP.Class = "Pistol Carbine"
SWEP.Trivia = {
    ["Country of Origin"] = "[Empire of] Germany",
    ["Caliber"] = "9×19mm Parabellum",
}

SWEP.Credits = {
    ["Additional Coding"] = [[TheOnly8Z#8888 (8Z)]],
    ["Sound"] = [[CturiX#6008 (CturiX)]],
    ["Assets"] = [[Day of Defeat: Source]],
    ["Contact"] = [[SlogoKolt#6648 or Mytton#5132]],
}

SWEP.Description = [[An old as time pistol given a carbine kit and absurdly fast auto sear.
Sold en masse to Chinese warlords in the 1930s, so you're a little late to the party.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_mauser.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_mauser.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4, 5, -5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-4, 4, -6),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 34 -- Damage done at point blank range
SWEP.DamageMin = 19 -- Damage done at maximum range

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.25,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1280 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 900

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
    {
        Mode = 1,
        RPMMult = 500 / 900,
        RecoilDissipationRateMult = 1.25,
    },
    {
        Mode = -1,
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.18 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.14 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 25 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5
SWEP.RecoilKickDamping = 60

SWEP.RecoilAddRecoil = 0.2
SWEP.RecoilMultRecoil = 1.15 -- Looks stupid but it means expoential recoil growth.

-------------------------- SPREAD

SWEP.Spread = 0.003

SWEP.SpreadAddRecoil = 0
SWEP.SpreadMultRecoil = 1.45
SWEP.RecoilModifierCap = 7

SWEP.SpreadAddHipFire = 0.001
SWEP.SpreadMultHipFire = 1.25

-------------------------- HANDLING

SWEP.FreeAimRadius = 8.5
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1.2

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2
SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.27
SWEP.SprintToFireTime = 0.3

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 0.8
SWEP.SpeedMultBlindFire = 0.9

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
    Pos = Vector(-3.025, 0, 1.35),
    Ang = Angle(0, 0, 5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(-10, 0, -25),
    },
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
}

SWEP.Crosshair = false

SWEP.SprintAng = Angle(10, -15, -10)
SWEP.SprintPos = Vector(0, 4, -1.5)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -5, -3),
    Ang = Angle(5, 20, 15)
}

SWEP.MovingPos = Vector(0, 2.5, -0.25)
SWEP.MovingAng = Angle(0, -2, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.CustomizeAng = Angle(90, -5, 0)
SWEP.CustomizePos = Vector(9, 32, 1.5)

SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(9, -3.025, -3.23)

SWEP.StandardPresets = {
    "[Aufplatzen]XQAAAQBOAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtHi34mc/l60jXsdOUtcu59M7a/hPaNYrhhfykp+A2SlrEvqSMD7zjswZsGJt8keCCoAA==",
    "[Karabiner]XQAAAQByAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtHi34mc/l60jXsdOUtONZ9M5jSiXpOat+FFRKsEb9a7OTQ5ymZX58rksRnFrKrAi7VmKdtMWJCVYgqzCUIAA==",
    "[Kantschapper]XQAAAQBOAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtHi34mc/l60jXsdOVgo7xPIvTT6T8JgaSwgu4f/pd6jqEKuYHilcoGOaYp0iPh8fb0AA==",
    "[Kundschafter]XQAAAQBPAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtHi34mc/l60jXsdOUtGsMR4ZY24Es3Yeo+kLt/KjAuyZ6+UuGckh6C+aIEXZHwzUBkUmo=",
}

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL -- Non TPIK
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = {"magmacow_smor/M712-1.ogg", "magmacow_smor/M712-2.ogg", "magmacow_smor/M712-3.ogg"}
SWEP.ShootSoundSilenced = "gekolt_css/9mm_sd.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.EjectDelay = 0

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "00000000"

SWEP.AttachmentElements = {
    ["f_edge"] = {
        Bodygroups = {{4, 2},{3, 1},{2, 3},{1, 1}},
        AttPosMods = { [3] = { Pos = Vector(0, 0.1, 8.3), }, [2] = { Pos = Vector(1.3, -0.75, -0.5), } }
    },

    ["f_sd"] = {
        Bodygroups = {{4, 2},{2, 3},{1, 3}},
    },

    ["f_brazil"] = {
        Bodygroups = {{4, 1},{2, 1},{1, 1}},
        AttPosMods = { [3] = { Pos = Vector(0, 0.1, 8.3), } }
    },

    ["f_carbine"] = {
        Bodygroups = {{5, 3},{4, 2},{3, 2},{2, 2},{1, 2}},
        AttPosMods = { [3] = { Pos = Vector(0, 0.1, 11.5), } }
    },
}

SWEP.Attachments = {
    {
        PrintName = "Frame",
        DefaultName = "Standard Frame",

        Category = "dod_mauser_frame",
        Bone = "W_Main",
        Pos = Vector(0, 2.5, -0.75),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"has_optic"},

        KeepBaseIrons = true,
        ExcludeElements = {"pre_optic"},
        Category = {"optic_css_s"},
        Bone = "W_Main",
        Pos = Vector(-1.3, -0.75, -0.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Muzzle",
        DefaultName = "None",

        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, 0.1, 17.1),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Off-Hand",
        Hidden = true,
        DefaultName = "None",
        InstalledElements = {"akimbo"},

        ExcludeElements = {"akantbo"},
        Category = {"css_akimbo"},
        Bone = "Akimbo_Base",
        Pos = Vector(0, 0, 0),
        Ang = Angle(90, 0, -90),
    },
}

SWEP.Hook_TranslateAnimation = function(wep, anim)

    if wep:HasElement("akimbo") then
            if anim == "reload" then  return "reload_akimbo" end
            if anim == "reload_empty" then  return "reload_empty_akimbo" end
            if anim == "reload_p38" then  return "reload_akimbo" end
            if anim == "reload_empty_p38" then  return "reload_empty_akimbo" end
            if anim == "reload_ex" then  return "reload_akimbo" end
            if anim == "reload_empty_ex" then  return "reload_empty_akimbo" end
    end
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("has_optic") then model:SetBodygroup(5,1) end
    if wep:HasElement("has_optic") and wep:HasElement("f_carbine") then model:SetBodygroup(4,3) end
    if wep:HasElement("has_optic") and wep:HasElement("f_carbine") then model:SetBodygroup(5,0) end

    if wep:HasElement("has_optic") and wep:HasElement("f_edge") then model:SetBodygroup(5,2) end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_emp",
    },
    ["draw"] = {
        Source = "draw", -- QC sequence source, can be {"table", "of", "strings"} or "string"
        --Time = 0.5, -- overrides the duration of the sequence
        Mult = 1, -- multiplies time
        EventTable = {
            {s =  "gekolt_css/elite_twirl.wav" ,   t = 0 / 40},
        },
    },
    ["draw_empty"] = {
        Source = "draw_emp", -- QC sequence source, can be {"table", "of", "strings"} or "string"
        --Time = 0.5, -- overrides the duration of the sequence
        Mult = 1, -- multiplies time
        EventTable = {
            {s =  "gekolt_css/elite_twirl.wav" ,   t = 0 / 40},
        },
    },
    ["holster"] = {
        Source = "idle",
        Time = 0
    },
    ["holster_empty"] = {
        Source = "idle_emp",
        Time = 0
    },
    ["fire"] = {
        Source = "fire",
    },
    ["fire_iron"] = {
        Source = "fire_iron",
    },
    ["fire_empty"] = {
        Source = "fire_emp",
    },
    ["fire_iron_empty"] = {
        Source = "fire_iron_emp",
    },

    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.85,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 43 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 50 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.85,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 43 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 50 / 40},
            {s =  "gekolt_dod/c96_boltback.wav" ,    t = 75 / 40},
            {s =  "gekolt_dod/c96_boltforward.wav" ,    t = 82 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },

    ["fire_iron_roni"] = {
        Source = "fire_iron_roni",
    },
    ["reload_roni"] = {
        Source = "wet_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.785,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 55 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 62 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 68 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.775, lhik = 0, rhik = 1, },{ t = 0.85, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_roni"] = {
        Source = "dry_roni",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.815,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 55 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 62 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 68 / 40},
            {s =  "gekolt_dod/c96_boltback.wav" ,    t = 92 / 40},
            {s =  "gekolt_dod/c96_boltforward.wav" ,    t = 102 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
    },

    ["fire_edge"] = {
        Source = "fire_edge",
    },
    ["fire_empty_edge"] = {
        Source = "fire_edge_emp",
    },

    ["reload_edge"] = {
        Source = "wet_edge",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.9,
        EventTable = {
            {s =  "cturix_contr/magout.wav" ,   t = 0 / 40},
            {s =  "cturix_contr/magin.wav" ,   t = 46 / 40},
            {s =  "cturix_contr/spin.wav" ,    t = 79 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_edge"] = {
        Source = "dry_edge",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.9,
        EventTable = {
            {s =  "cturix_contr/magout_empty.wav" ,   t = 0 / 40},
            {s =  "cturix_contr/magin_empty.wav" ,   t = 40 / 40},
            {s =  "cturix_contr/bolt_empty.wav" ,   t = 76 / 40},
            {s =  "cturix_contr/spin_empty.wav" ,    t = 110 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 0, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
}
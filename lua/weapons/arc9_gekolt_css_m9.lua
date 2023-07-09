AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Secondaries"

SWEP.PrintName = "Arditi Elite"
SWEP.TrueName = "Beretta 92G Elite II"

SWEP.Class = "Pistol"
SWEP.Trivia = {
    ["Country of Origin"] = "Italy",
    ["Caliber"] = "9x19mm",
}

SWEP.Credits = {
    ["Additional Coding1"] = [[TheOnly8Z#8888 (8Z)]],
    ["Sound2"] = [[cherresoda#6579 (rzen1th)]],
    ["Assets3"] = [[Counter-Strike Source]],
    ["Contact4"] = [[SlogoKolt#6648 or Mytton#5132]],
}

SWEP.Description = [[A turn-of-the-century update to a straightforward double-stack pistol.
Some aftermarket tinker options exist, though few of them deserve the "Elite" moniker.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_m9.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_m9.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 5, -5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-16, 3, -5),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 35
SWEP.DamageMin = 16

SWEP.RangeMin = 500
SWEP.RangeMax = 3000

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.75,
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
SWEP.ClipSize = 15 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 800

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
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.45 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.25 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 10
SWEP.RecoilResetTime = 0

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultRecoil = 1.15 -- Looks stupid but it means expoential recoil growth.

-------------------------- SPREAD

SWEP.Spread = 0.004

SWEP.SpreadAddRecoil = 0
SWEP.SpreadMultRecoil = 1.3
SWEP.RecoilModifierCap = 7

SWEP.SpreadAddHipFire = 0.0012
SWEP.SpreadMultHipFire = 1.3

-------------------------- HANDLING

SWEP.FreeAimRadius = 4 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 1.25

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.667
SWEP.SwayMultShooting = 1.5
SWEP.SwayMultSights = 0.5

SWEP.AimDownSightsTime = 0.2
SWEP.SprintToFireTime = 0.17

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 0.8

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
    Pos = Vector(-3.25, 0, 1.6),
    Ang = Angle(0, 0, 5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(-10, 60, -25),
    },
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
}

SWEP.Crosshair = false

SWEP.SprintAng = Angle(10, -15, -10)
SWEP.SprintPos = Vector(0, 2, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -5, -3),
    Ang = Angle(5, 20, 15)
}

SWEP.MovingPos = Vector(0, 1.75, 0.5)
SWEP.MovingAng = Angle(0, -2, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.CustomizeAng = Angle(90, -5, 0)
SWEP.CustomizePos = Vector(13, 32, 2)

SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(12, -3.25, -5.23)

SWEP.StandardPresets = {
}

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
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

SWEP.ShootSound = "gekolt_css/elite-1.wav"
SWEP.ShootSoundSilenced = "gekolt_css/9mm_sd.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.EjectDelay = 0

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "00000000"

SWEP.AttachmentElements = {
    ["f_auto"] = {
        Bodygroups = {{3, 1},{2, 3}},
        AttPosMods = { [3] = { Pos = Vector(0, 0, 7.65), } }
    },
    ["f_burst"] = {
        Bodygroups = {{3, 2},{1, 1},{2, 3},{0, 3}},
        AttPosMods = { [3] = { Pos = Vector(0, 0, 10.25), } }
    },
    ["f_carbine"] = {
        Bodygroups = {{3, 5},{1, 2},{2, 1},{4, 2}},
        AttPosMods = { [2] = { Pos = Vector(0, -1.3, -4.75), },  [3] = { Pos = Vector(0, 0, 9.25), } }
    },
    ["f_artillery"] = {
        Bodygroups = {{3, 6},{1, 2},{2, 1},{5, 2}},
        AttPosMods = { [3] = { Pos = Vector(0, 0, 15.75), } }
    },
    ["f_sd"] = {
        Bodygroups = {{3, 4},{1, 2}},
    },
    ["f_p38"] = {
        Bodygroups = {{3, 3},{1, 2}},
    },
    ["f_welrod"] = {
        Bodygroups = {{3, 4},{1, 3},{2, 2},{0, 1}},
    },

    ["g_1"] = { Bodygroups = {{6, 1}}, },
    ["s_1"] = { Bodygroups = {{5, 1}}, },

    ["akimbose"] = {
        SprintPosOverride = Vector(0, 2, -3),
        SprintAngOverride = Angle(0, 18, 0),
    },
}

SWEP.Attachments = {
    {
        PrintName = "Frame",
        DefaultName = "Standard Frame",

        Category = "css_m9_frame",
        Bone = "W_Main",
        Pos = Vector(0, 3, -0.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"has_optic"},

        ExcludeElements = {"pre_optic"},
        Category = {"optic_css_s"},
        Bone = "W_Main",
        Pos = Vector(0, -1.1, 2),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Muzzle",
        DefaultName = "None",

        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, 0, 6),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Off-Hand",
        DefaultName = "None",
        InstalledElements = {"akimbo"},
        Hidden = true,

        ExcludeElements = {"akantbo"},
        Category = {"css_akimbo"},
        Bone = "Akimbo_Base",
        Pos = Vector(0, 0, 0),
        Ang = Angle(90, 0, -90),
    },
}

SWEP.Hook_TranslateAnimation = function(wep, anim)

    -- att add _[attachment] + this replace animala with _akimbo   >   replace animala with _akimbo_[attachment]???   HOW DOES LOGIC WORK?

    if wep:HasElement("akimbo") then
            if anim == "reload" then  return "reload_akimbo" end
            if anim == "reload_empty" then  return "reload_empty_akimbo" end
            if anim == "reload_akimbo_p38" then  return "reload_akimbo" end
            if anim == "reload_empty_akimbo_p38" then  return "reload_empty_akimbo" end
            if anim == "reload_akimbo_ex" then  return "reload_akimbo" end
            if anim == "reload_empty_akimbo_ex" then  return "reload_empty_akimbo" end
    end
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("has_optic") then model:SetBodygroup(4,1) end
    if wep:HasElement("has_optic") and wep:HasElement("f_carbine") then model:SetBodygroup(4,3) end
    if wep:HasElement("has_optic") and wep:HasElement("f_artillery") then model:SetBodygroup(4,4) end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_emp",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s =  "gekolt_css_foley/draw_pist.wav" ,   t = 0 / 40},
        },
    },
    ["draw_empty"] = {
        Source = "draw_emp", -- QC sequence source, can be {"table", "of", "strings"} or "string"
        --Time = 0.5, -- overrides the duration of the sequence
        Mult = 1, -- multiplies time
        EventTable = {
            {s =  "gekolt_css/elite_twirl.wav" ,   t = 1 / 40},
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
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 43 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.85,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 28 / 40},
            {s =  "gekolt_css/p228_sliderelease.wav" ,    t = 57 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
    },


    ["reload_p38"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.8,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 43 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.5, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_p38"] = {
        Source = "dry_p38",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.8,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 28 / 40},
            {s =  "gekolt_css/p228_sliderelease.wav" ,    t = 55 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
    },


    -- Carbine --
    ["fire_carbine"] = {
        Source = "fire_carbine",
    },
    ["fire_empty_carbine"] = {
        Source = "fire_carbine_emp",
    },

    ["reload_carbine"] = {
        Source = "wet_carbine",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/m4a1_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/m4a1_clipin.wav" ,    t = 65 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_carbine"] = {
        Source = "dry_carbine",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.92,
        EventTable = {
            {s =  "gekolt_css/m4a1_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/m4a1_clipin.wav" ,    t = 65 / 40},
            {s =  "gekolt_css/usp_sliderelease.wav" ,    t = 110 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
    },

    -- Artillery --
    ["fire_artillery"] = {
        Source = "fire_carbine",
    },
    ["fire_empty_artillery"] = {
        Source = "fire_carbine_emp",
    },

    ["reload_artillery"] = {
        Source = "wet_carbine",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/m4a1_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/m4a1_clipin.wav" ,    t = 65 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_artillery"] = {
        Source = "dry_artillery",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.92,
        EventTable = {
            {s =  "gekolt_css/m4a1_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/m4a1_clipin.wav" ,    t = 65 / 40},
            {s =  "gekolt_css/p228_slidepull.wav" ,    t = 100 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
    },



    ["reload_ex"] = {
        Source = "wet_ex",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 45 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_ex"] = {
        Source = "dry_ex",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.86,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 40 / 40},
            {s =  "gekolt_css/p228_sliderelease.wav" ,    t = 73 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
    },

    ["reload_akimbo"] = {
        Source = "wet_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 45 / 40},
        },
        IKTimeLine = {{ t = 0, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },	},
    },
    ["reload_akimbo_p38"] = {
        Source = "wet_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 45 / 40},
        },
        IKTimeLine = {{ t = 0, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },	},
    },
    ["reload_empty_akimbo_p38"] = {
        Source = "dry_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.86,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 45 / 40},
            {s =  "gekolt_css/p228_sliderelease.wav" ,    t = 70 / 40},
            },
        IKTimeLine = {{ t = 0, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },	},
    },
    ["reload_empty_akimbo"] = {
        Source = "dry_akimbo",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.86,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 45 / 40},
            {s =  "gekolt_css/p228_sliderelease.wav" ,    t = 70 / 40},
            },
        IKTimeLine = {{ t = 0, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },	},
    },

    -- Welrod --



    ["reload_sd"] = {
        Source = "wet_sd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 43 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_sd"] = {
        Source = "dry_sd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.86,
        EjectAt = 73 / 40,
        EventTable = {
            {s =  "gekolt_css/fiveseven_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/fiveseven_clipin.wav" ,    t = 43 / 40},
            {s =  "gekolt_css/p228_sliderelease.wav" ,    t = 68 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
    },

    ["idle_empty_sd"] = {
        Source = "idle",
    },
    ["draw_empty_sd"] = {
        Source = "draw", -- QC sequence source, can be {"table", "of", "strings"} or "string"
        --Time = 0.5, -- overrides the duration of the sequence
        Mult = 1, -- multiplies time
        EventTable = {
            {s =  "gekolt_css/elite_twirl.wav" ,   t = 1 / 40},
        },
    },
    ["fire_sd"] = {
        Source = "fire_sd",
        EjectAt = 36 / 40,
        EventTable = {
            {s =  "gekolt_css/weaponclick.wav" ,    t = 16 / 40},
            {s =  "gekolt_css/p228_sliderelease.wav" ,    t = 30 / 40},
        },
    },
    ["fire_iron_sd"] = {
        Source = "fire_sd",
        EjectAt = 36 / 40,
        EventTable = {
            {s =  "gekolt_css/weaponclick.wav" ,    t = 16 / 40},
            {s =  "gekolt_css/p228_sliderelease.wav" ,    t = 30 / 40},
        },
    },
    ["fire_empty_sd"] = {
        Source = "fire_sd_emp",
        EventTable = {
            {s =  "gekolt_css/weaponclick.wav" ,    t = 16 / 40},
        },
    },
    ["fire_iron_empty_sd"] = {
        Source = "fire_sd_emp",
        EventTable = {
            {s =  "gekolt_css/weaponclick.wav" ,    t = 16 / 40},
        },
    },
}
AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Primaries"

SWEP.PrintName = "Toudranéant-30"  -- /tu-druh-nee-aun/
SWEP.TrueName = "M1 Garand"

SWEP.Class = "Marskman Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = [[[Dominion of] Canada]], -- me purposely spreading misinfomation --  I SAY SO
    ["Caliber"] = ".30-06 Springfield",
}

SWEP.Credits = {
    Contact = [[SlogoKolt#6648 or Mytton#5132]],
    Additional Coding = [[TheOnly8Z#8888 (8Z)]],
    Assets = "Day of Defeat: Source"
}

SWEP.Description = [[The first truly successful self-loading rifle; a watershed and forerunner among firearms
Experimental in nature, there are quite a few modifications available despite its status as a mass production weapon
It also goes ping.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_garand.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_garand.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(1, 3, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 3, -7),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 70 -- Damage done at point blank range
SWEP.DamageMin = 45 -- Damage done at maximum range

SWEP.RangeMin = 1500 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 10000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 12 -- Units of wood that can be penetrated by this gun.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.75,
    [HITGROUP_RIGHTARM] = 0.75,
    [HITGROUP_LEFTLEG] = 0.6,
    [HITGROUP_RIGHTLEG] = 0.6,
}
-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 3000 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 300

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
SWEP.RecoilUp = 0.6 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.15

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0

SWEP.RecoilKick = 2

SWEP.RecoilMultRecoil = 1.75 -- Looks stupid but it means expoential recoil growth.

-------------------------- SPREAD

SWEP.Spread = 0.0012

SWEP.SpreadAddRecoil = 0.003
SWEP.SpreadMultRecoil = 1.25
SWEP.RecoilModifierCap = 4

SWEP.SpreadAddHipFire = 0.015
SWEP.SpreadMultHipFire = 1.25

-------------------------- HANDLING

SWEP.FreeAimRadius = 12
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1.2

SWEP.SwayMultMidAir = 2
SWEP.SwayAddMove = 0.75
SWEP.SwayMultMove = 1
SWEP.SwayMultCrouch = 0.5
SWEP.SwayMultShooting = 2
SWEP.SwayMultSights = 0.33

SWEP.AimDownSightsTime = 0.35
SWEP.SprintToFireTime = 0.4

SWEP.SpeedMult = 0.85
SWEP.SpeedMultSights = 0.65
SWEP.SpeedMultShooting = 0.725
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 0.725
SWEP.SpeedMultBlindFire = 0.9

-------------------------- BLIND FIRE

SWEP.CanBlindFire = true -- This weapon is capable of blind firing.
SWEP.BlindFireLHIK = false -- Hide the left hand while blind firing forward.

SWEP.BlindFireLeft = true
SWEP.BlindFireRight = true -- This weapon can blind fire towards the right. Generally keep this off.

SWEP.BlindFireOffset = Vector(0, 0, 32) -- The amount by which to offset the blind fire muzzle.
SWEP.BlindFirePos = Vector(-2, -2, 8)
SWEP.BlindFireAng = Angle(0, 0, -45)

SWEP.BlindFireRightOffset = Vector(0, 24, 0) -- The amount by which to offset the blind fire muzzle.
SWEP.BlindFireRightPos = Vector(-5, 10, -1)
SWEP.BlindFireRightAng = Angle(-45, 0, 0)

SWEP.BlindFireLeftOffset = Vector(0, 24, 0) -- The amount by which to offset the blind fire muzzle.
SWEP.BlindFireLeftPos = Vector(2, 2, 0)
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
    Pos = Vector(-2, -2, 1.05),
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(-10, 0, -25),
    },
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
}

SWEP.BipodPos = Vector(-2, -2, 2)
SWEP.BipodAng = Angle(0, 0, 0)

SWEP.Crosshair = false
SWEP.NoShellEject = true

SWEP.SprintAng = Angle(30, -15, -10)
SWEP.SprintPos = Vector(2, 2, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(-1, -5, -3),
    Ang = Angle(5, 20, 15)
}

SWEP.MovingPos = Vector(0, 2.5, -0.25)
SWEP.MovingAng = Angle(0, -1.5, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(13, 32, 2)

SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(15, -2, -5.23)

SWEP.StandardPresets = {
	"[Vanguard]XQAAAQB3AAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtIBAiCMb9hyIHjymTVRcP6LIrBMmJT0uSb7WpKgmxf9cBP68XRG2MY25255451BWfH0SvCg4r6ov4iajA5AA==",
	"[YSL]XQAAAQByAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtIBAiCMb9hyIHjykg6ChSk889UMTy6Tpg7U43VPZ3gAeP5imKK24GFBOlRrSBYIqK+dwhDY4R94zNy",
	"[Sportive]XQAAAQByAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtIBAiCMb9hyIHjykir1xG0cDi0J/GRXHSKYTcgTTBh8m0Py8S6B6Vo9t+aH6V/jUYRU3Vq/G8ZvEgA",
	"[Grand Slam]XQAAAQCDAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtIBAiCMb9hyIHjylpAXDS9Ox33Re8sx/V5mQGNZxqxgD6K8REC1nEJmzG4KPG/V/gbnxENhmW5PtaWBijiKWnrVBiO",
	"[Scavenger]XQAAAQB0AAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtIBAiCMb9hyIHjylpatCOSZjefbaD5tGzbnIuZfmo0pCzFPZbUIYt6/BaVch1ABaBv4Z75y/Ky37eIYA==",
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
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellCorrectPos = Vector(0, 0, 0)
SWEP.ShellCorrectAng = Angle(0, 0, 90)
SWEP.ShellScale = 0.75
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "gekolt_dod/garand_shoot.wav"
SWEP.ShootSoundSilenced = "gekolt_css/tmp-1.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.EjectDelay = 0

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "0000000000"

SWEP.BulletBones = {
    [1] = "W_Ammo8",
    [2] = "W_Ammo7",
    [3] = "W_Ammo6",
    [4] = "W_Ammo5",
    [5] = "W_Ammo4",
    [6] = "W_Ammo3",
    [7] = "W_Ammo2",
    [8] = "W_Ammo1",
}

SWEP.AttachmentElements = {
    ["garand_slam"] = {
        Bodygroups = {{1, 2}},
        AttPosMods = { [3] = { Pos = Vector(0, 0.1, 20), }, [4] = { Pos = Vector(0, 1.15, 0.75), }, [5] = { Pos = Vector(-0.9, -0.55, 0.5), } }
    },

    ["garand_m14"] = {
        Bodygroups = {{1, 1}},
        AttPosMods = { [2] = { Pos = Vector(0,  -1.1, 5), }, [3] = { Pos = Vector(0, 0, 22.5), } }
    },

    ["garand_vanguard"] = {
        Bodygroups = {{1, 6}},
        AttPosMods = { [3] = { Pos = Vector(0, 0, 20.25), } }
    },

    ["garand_sks"] = {
        Bodygroups = {{1, 4}},
        AttPosMods = { [3] = { Pos = Vector(0, 0, 22.5), }, [5] = { Pos = Vector(-1, -0.55, 0.5), } }
    },

    ["garand_mini"] = {
        Bodygroups = {{1, 3}},
        AttPosMods = { [2] = { Pos = Vector(0,  -1.1, 5), }, [3] = { Pos = Vector(0, 0, 19.15), } }
    },

    ["rail_top"] = {Bodygroups = {{2, 1}},},
    ["rail_bot"] = {Bodygroups = {{3, 1}},},
    ["rail_side"] = {Bodygroups = {{5, 3}, {3, 0}},},
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep.Attachments[4].Installed and wep:HasElement("garand_slam") then model:SetBodygroup(3,2) end	--- shotgun under rail ---
    if wep.Attachments[5].Installed and wep:HasElement("garand_slam") then model:SetBodygroup(5,2) end	--- shotgun side rail ---
    if wep.Attachments[5].Installed and wep:HasElement("garand_sks") then model:SetBodygroup(5,4) end	--- sks side rail ---
    if wep:HasElement("rail_bot") and wep:HasElement("rail_side") then model:SetBodygroup(5,1) end	--- side rail ---
    if wep.Attachments[4].Installed and wep:HasElement("rail_side") and wep:HasElement("garand_slam") then model:SetBodygroup(5,2) end	--- shotgun under rail ---

    if wep.Attachments[2].Installed and wep:HasElement("garand_mini") then model:SetBodygroup(4,1) end	-- 'extended' top rail --
    if wep.Attachments[2].Installed and wep:HasElement("garand_m14") then model:SetBodygroup(4,1) end
end

SWEP.Attachments = {
    {
        PrintName = "Frame",
        DefaultName = "Standard Frame",

        Category = "dod_garand_frame",
        Bone = "W_Main",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"rail_top"},

        Category = {"optic_css", "optic_css_free"},
        Bone = "W_Main",
        Pos = Vector(0, -1.1, 9),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Muzzle",
        DefaultName = "None",

        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, 0, 28),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Foregrip",
        DefaultName = "None",
        InstalledElements = {"rail_bot"},

        ExcludeElements = {"nogrip"},
        Category = {"grip_css", "optic_css_free"},
        Bone = "W_Pump",
        Pos = Vector(0, 0.9, -3),
        Ang = Angle(90, 0, -90),
        MergeSlots = {6}
    },

    {
        PrintName = "MOUNT Right",
        Category = {"mountl_css", "optic_css_free"},
        InstalledElements = {"rail_side"},

        Bone = "W_Pump",
        Pos = Vector(-1.1, -0.4, -1.5),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 7,
    },

    {   -- permanent ubgl, unaffected by the changes of the above attachment
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        Category = {"css_ubgl"},
        RequireElements = {"ubgl_maghold"},
        Bone = "W_Main",
        Pos = Vector(0, 1.75, 7),
        Ang = Angle(90, 0, -90),
    },
}

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
            {s =  "gekolt_css_foley/draw_rif.wav" ,   t = 0 / 40},
        },
    },
    ["draw_empty"] = {
        Source = "draw_emp", -- QC sequence source, can be {"table", "of", "strings"} or "string"
        --Time = 0.5, -- overrides the duration of the sequence
        Mult = 1, -- multiplies time
        EventTable = {
            {s =  "gekolt_css/awp_deploy.wav" ,   t = 1 / 40},
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
        EjectAt = 0 / 40,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        EjectAt = 0 / 40,
    },
    ["fire_empty"] = {
        Source = "fire_gempty",
        EjectAt = 0 / 40,
        EventTable = {
            {s =  "gekolt_dod/garand_clipding.wav" ,   t = 1 / 40},
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_iron_gempty",
        EjectAt = 0 / 40,
        EventTable = {
            {s =  "gekolt_dod/garand_clipding.wav" ,   t = 1 / 40},
        },
    },

    -- Garand --

    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/m1carbine_boltback.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/garand_clipding.wav" ,   t = 16 / 40},
            {s =  "gekolt_dod/garand_clipin1.wav" ,   t = 55 / 40},
            {s =  "gekolt_dod/garand_clipin2.wav" ,    t = 60 / 40},
            {s =  "gekolt_dod/garand_boltforward.wav" ,    t = 78 / 40},
        },
        FireASAP = true,
        MagSwapTime = 40 / 40,
        MinProgress = 0.85,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.925,
        EventTable = {
            {s =  "gekolt_dod/garand_clipin1.wav" ,   t = 30 / 40},
            {s =  "gekolt_dod/garand_clipin2.wav" ,    t = 35 / 40},
            {s =  "gekolt_dod/garand_boltforward.wav" ,    t = 50 / 40},
        },
    },

    -- M14 --
    ["fire_empty_308"] = {
        Source = "fire_emp",
        EjectAt = 0 / 40,
    },
    ["fire_iron_empty_308"] = {
        Source = "fire_iron_emp",
        EjectAt = 0 / 40,
    },

    ["reload_308"] = {
        Source = "wet_308",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 14 / 40},
            {s =  "gekolt_dod/m1carbine_clipout.wav" ,   t = 16 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 55 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 65 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_308"] = {
        Source = "dry_308",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.86,
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 13 / 40},
            {s =  "gekolt_dod/m1carbine_clipout.wav" ,   t = 16 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 65 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 70 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,    t = 93 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
    },

    -- Mini --
    ["fire_empty_mini"] = {
        Source = "fire_emp",
        EjectAt = 0 / 40,
    },
    ["fire_iron_empty_mini"] = {
        Source = "fire_iron_emp",
        EjectAt = 0 / 40,
    },

    ["reload_mini"] = {
        Source = "wet_mini",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 13 / 40},
            {s =  "gekolt_dod/m1carbine_clipout.wav" ,   t = 16 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 55 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 62 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 0, },{ t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_mini"] = {
        Source = "dry_mini",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.86,
        EventTable = {
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 13 / 40},
            {s =  "gekolt_dod/m1carbine_clipout.wav" ,   t = 16 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 55 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 62 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,    t = 90 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 0, },{ t = 0.6, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 1, rhik = 0, }, { t = 0.8, lhik = 1, rhik = 0, }, { t = 0.95, lhik = 1, rhik = 1, },
        },
    },

    -- SLAM --

    ["fire_slam"] = {
        Source = "fire_slam",
        EjectAt = 12 / 40,
        EventTable = {
            {s =  "gekolt_css/m3_pump.wav" ,   t = 5 / 40},
        },
    },
    ["fire_iron_slam"] = {
        Source = "fire_slam",
        EjectAt = 12 / 40,
        EventTable = {
            {s =  "gekolt_css/m3_pump.wav" ,   t = 5 / 40},
        },
    },
    ["fire_empty_slam"] = {
        Source = "fire_emp",
        EjectAt = 0 / 40,
    },
    ["fire_iron_empty_slam"] = {
        Source = "fire_emp",
        EjectAt = 0 / 40,
    },

    ["reload_start_slam"] = {
        Source = "start_slam",
        RestoreAmmo = 1,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/1887_shell1.wav" ,   t = 5 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 1, rhik = 1, }, { t = 0.5, lhik = 0, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, }	},
    },
    ["reload_insert_slam"] = {
        Source = "load_slam",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/1887_shell1.wav" ,   t = 5 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 0, rhik = 0, }, { t = 1, lhik = 0, rhik = 0, },	},
    },
    ["reload_insert_slam_5"] = { ---- bodging time ----
        Source = "load_slam",
        RestoreAmmo = -4,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/1887_shell1.wav" ,   t = 5 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 0, rhik = 0, }, { t = 1, lhik = 0, rhik = 0, },	},
    },
    ["reload_finish_slam"] = {
        Source = "end_slam",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {

        },
        IKTimeLine = {	{ t = 0, lhik = 0, rhik = 1, }, { t = 0.85, lhik = 1, rhik = 1, }, { t = 1, lhik = 1, rhik = 1, }	},
    },
    ["reload_start_empty"] = {
        Source = "dry_slam",
        RestoreAmmo = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/1887_shell1.wav" ,   t = 12 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,    t = 50 / 40},
            {s =  "gekolt_dod/1887_shell1.wav" ,   t = 70 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 1, rhik = 1, }, { t = 0.1, lhik = 0, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, },	},
    },

    -- ROMANIA IS THE STRONGEST --

    ["fire_empty_sks"] = {
        Source = "fire_emp",
        EjectAt = 0 / 40,
    },
    ["fire_sks"] = {
        Source = "fire_lever",
        EjectAt = 23 / 40,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1, },{ t = 0.3, lhik = 1, rhik = 1, },{ t = 0.4, lhik = 0, rhik = 1, },
            { t = 0.7, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, }, { t = 1, lhik = 1, rhik = 1, }
        },
        EventTable = {
            {s =  "gekolt_dod/m1carbine_boltback.wav" ,   t = 20 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,    t = 30 / 40},
        },
    },
    ["fire_iron_sks"] = {
        Source = "fire_lever_iron",
        EjectAt = 23 / 40,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1, },{ t = 0.25, lhik = 1, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
            { t = 0.7, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, }, { t = 1, lhik = 1, rhik = 1, }
        },
        EventTable = {
            {s =  "gekolt_dod/m1carbine_boltback.wav" ,   t = 20 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,    t = 30 / 40},
        },
    },
    ["fire_iron_empty_sks"] = {
        Source = "fire_iron_emp",
        EjectAt = 0 / 40,
    },

    ["reload_start_sks"] = {
        Source = "start_strip_s",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/m1carbine_boltback.wav" ,   t = 5 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 1, rhik = 1, }, { t = 0.4, lhik = 0, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, }	},
    },
    ["reload_insert_5"] = {
        Source = "load_strip_f",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/k98_clipin.wav" ,   t = 5 / 40},
            {s =  "gekolt_dod/k98_clipin2.wav" ,   t = 20 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 0, rhik = 0, }, { t = 1, lhik = 0, rhik = 0, },	},
    },
    ["reload_insert_1"] = {
        Source = "load_strip_s",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/k98_singleshotreload.wav" ,   t = 5 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 0, rhik = 0, }, { t = 1, lhik = 0, rhik = 0, },	},
    },
    ["reload_finish_sks"] = {
        Source = "end_strip",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,   t = 10 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 0, rhik = 1, }, { t = 0.4, lhik = 0, rhik = 1, }, { t = 1, lhik = 1, rhik = 1, }	},
    },
    ["reload_start_empty_sks"] = {
        Source = "dry_strip",
        RestoreAmmo = 0,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        IKTimeLine = {	{ t = 0, lhik = 1, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, },	},
    },
}
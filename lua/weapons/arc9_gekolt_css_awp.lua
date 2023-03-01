AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Primaries"

SWEP.PrintName = "Aldric-38"
SWEP.TrueName = "AWP"

SWEP.Class = "Sniper Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "United Kingdom",
    ["Caliber"] = ".338 Lapua Magnum",
}

SWEP.Credits = {
    ["Additional Coding1"] = [[TheOnly8Z#8888 (8Z)]],
	["Sound2"] = [[cherresoda#6579 (rzen1th)]],
    ["Assets3"] = [[Counter-Strike Source]],
	["Contact4"] = [[SlogoKolt#6648 or Mytton#5132]],
}

SWEP.Description = [[Imposing magnum sniper rifle used by the police. Overpenetrates up close, so step back.
Its rarity and iconic status makes it all the more tempting to give it... unscrupulous tweaks.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_awp.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_awp.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 4, -7),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 55 -- Damage done at point blank range
SWEP.DamageMin = 120 -- Damage done at maximum range

SWEP.RangeMin = 100 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 2000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.75,
    [HITGROUP_RIGHTARM] = 0.75,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 3000 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 40

SWEP.Hook_Think = function(wep, data)	-- able to reload instantly without the awkward waits, shits ugly!!
	if wep:Clip1() == 0 then
		wep:SetNextPrimaryFire(1/300)
	end
end

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
        PrintName = "BOLT"
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0.7

SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 3 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = -0.7 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0

SWEP.RecoilKick = 2

SWEP.RecoilMultRecoil = 1.75

-------------------------- SPREAD

SWEP.Spread = 0.0005

SWEP.SpreadAddRecoil = 0.015
SWEP.RecoilModifierCap = 3

SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultHipFire = 1.5

-------------------------- HANDLING

SWEP.FreeAimRadius = 15
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1.2

SWEP.SwayMultMidAir = 2
SWEP.SwayAddMove = 2
SWEP.SwayMultMove = 1
SWEP.SwayMultCrouch = 0.4
SWEP.SwayMultShooting = 1.5

SWEP.SwayMultSights = 0.125

SWEP.AimDownSightsTime = 0.35
SWEP.SprintToFireTime = 0.5

SWEP.SpeedMult = 0.9
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 0.75
SWEP.SpeedMultBlindFire = 0.95

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
    Pos = Vector(-3.935, 0, -0.025),
    Ang = Angle(0, 0, -5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(-10, 0, -25),
    },
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
}

SWEP.SprintAng = Angle(45, -15, -5)
SWEP.SprintPos = Vector(5, 1.25, 0.25)

SWEP.BipodPos = Vector(-3.935, 0, -1)
SWEP.BipodAng = Angle(0, 0, -5)

SWEP.SprintMidPoint = {
    Pos = Vector(-1, -5, -5),
    Ang = Angle(5, 20, 15)
}

SWEP.MovingPos = Vector(-0.1, 2.5, -0.5)
SWEP.MovingAng = Angle(0, -3, -7)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 5, 0)
SWEP.CustomizePos = Vector(16.25, 32, 4)

SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(16.5, -3, -3.23)

SWEP.StandardPresets = {
	"[AE50]XQAAAQCUAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtHi34mcrblSJUHW94F1nERWcC6u1bB5cabzbkNO8/nth3i7Jo80rUF+pecd32WquJt0n3SBidtpp+yyfwcWzkziBA/WgA=",
	"[LC10]XQAAAQCVAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtHi34mcrblSJUHW1nsOMm2pcVyg67N+hfFdys3jNbBrRNKsAajt4RaoroF5cQY02muwF47dpzMkeJlQKvbDWlWmZfH4gA=",
	"[Howell]XQAAAQCVAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtHi34mcrblSJUHWwxx7WslW8oXGcOTaMP8pK1Z/AGxJhRVITENdxqdfW/67pxvzsryRHMioaTpxeG3B4RJz155iV1EOj+IAA==",
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

SWEP.MuzzleParticle = "muzzleflash_m82"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true

-------------------------- SOUNDS

SWEP.ShootSound = {"magmacow_smor/AWM-1.wav", "magmacow_smor/AWM-2.wav", "magmacow_smor/AWM-3.wav"}
SWEP.ShootSoundSilenced = "magmacow_smor/AWM-SIL.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "0000000000"

SWEP.AttachmentElements = {
    ["awp_f_howell"] = {
        Bodygroups = {{0, 2}},
        AttPosMods = { [4] = { Pos = Vector(0, 0.1, 22.5), }, [5] = { Pos = Vector(0, 3.25, 11.5), },	[6] = { Pos = Vector(1.15, 1.25, 13), },	[7] = { Pos = Vector(-1.35, 1.25, 13), } }
    },

    ["awp_s_smg"] = {Bodygroups = {{2, 1}},},
    ["awp_s_no"] = {Bodygroups = { {2, 2}},},
    ["awp_s_short"] = {Bodygroups = { {2, 3}},},

    ["rail_bot"] = {Bodygroups = {{3, 1}},},
    ["rail_side"] = {Bodygroups = { {4, 1}},},
    ["rail_top"] = {Bodygroups = { {5, 1}},},

    ["awp_f_smg"] = {
        Bodygroups = {{0, 1},{1, 1}},
        AttPosMods = { [3] = { Pos = Vector(0, -1, -1.5), }, [4] = { Pos = Vector(0, 0.1, 14.5), }, [5] = { Pos = Vector(0, 3.4, 9), },	[6] = { Pos = Vector(1.15, 1.25, 10), },	[7] = { Pos = Vector(-1.35, 1.25, 10), },	[9] = { Pos = Vector(0, 2.25, 6), } }
    },
    ["awp_f_sd"] = {
        Bodygroups = {{0, 4}},
    },
}


SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep.Attachments[3].Installed then model:SetBodygroup(1,3) end
    if wep.Attachments[3].Installed and wep:HasElement("awp_f_smg") then model:SetBodygroup(1,4) end

    if wep:HasElement("rail_bot") and wep:HasElement("awp_f_smg") then model:SetBodygroup(3,3) end
    if wep:HasElement("rail_side") and wep:HasElement("awp_f_smg") then model:SetBodygroup(4,3) end

    if wep:HasElement("rail_bot") and wep:HasElement("awp_f_howell") then model:SetBodygroup(3,2) end
    if wep:HasElement("rail_side") and wep:HasElement("awp_f_howell") then model:SetBodygroup(4,2) end
    if wep:HasElement("rail_top") and wep:HasElement("awp_f_howell") then model:SetBodygroup(5,2) end
end

SWEP.Attachments = {
    {
        PrintName = "Frame",
        DefaultName = "Bolt Action Frame",

        Category = "css_awp_frame",
        Bone = "W_Main",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Stock",
        DefaultName = "Polymer Stock",

        Category = "css_awp_stock",
        Bone = "W_Main",
        Pos = Vector(0, 2, -10),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optic",
        DefaultName = "None",

        Category = {"optic_css"},
        Bone = "W_Main",
        Pos = Vector(0, -1, 4),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Muzzle",
        DefaultName = "None",

        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, 0.1, 30),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Foregrip",
        DefaultName = "None",
        InstalledElements = {"rail_bot", "optic_css_free"},

        ExcludeElements = {"nogrip"},
        Category = {"grip_css", "optic_css_free"},
        Bone = "W_Main",
        Pos = Vector(0, 3.25, 12),
        Ang = Angle(90, 0, -90),
        MergeSlots = {9}
    },

    {
        PrintName = "MOUNT Left",
        Category = {"mountr_css", "optic_css_free"},
        InstalledElements = {"rail_side"},

        Bone = "W_Main",
        Pos = Vector(1.15, 1.25, 15),
        Ang = Angle(90, 0, 180),
        ExtraSightDistance = 10,
        Icon_Offset = Vector(1, 0, 0)
    },

    {
        PrintName = "MOUNT Right",
        Category = {"mountl_css", "optic_css_free"},
        InstalledElements = {"rail_side"},

        Bone = "W_Main",
        Pos = Vector(-1.35, 1.25, 15),
        Ang = Angle(90, 0, 0),
        ExtraSightDistance = 10,
        Icon_Offset = Vector(-2, 0, 0)
    },
    {
        PrintName = "Mount Top",
        DefaultName = "None",
        InstalledElements = {"rail_top"},

        ExcludeElements = {"notop"},
        Category = {"tac_css_flat", "mount_css", "optic_css_free"},
        Bone = "W_Main",
        Pos = Vector(0, -0.9, 13),
        Ang = Angle(90, 0, -90),
    },

    {   -- permanent ubgl, unaffected by the changes of the above attachment
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        Category = {"css_ubgl"},
        RequireElements = {"ubgl_maghold"},
        Bone = "W_Main",
        Pos = Vector(0, 2.25, 7.5),
        Ang = Angle(90, 0, -90),
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
     },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s =  "gekolt_css_foley/draw_rif2.wav" ,   t = 0 / 40},
        },
    },
    ["holster"] = {
        Source = "idle",
     },

    ["fire_cycle"] = {
        Source = "fire",
    },

    ["fire"] = {
        Source = "fire_full",
        EjectAt = 32 / 40,
        EventTable = {
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 26 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 30 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 40 / 40},
        },
        FireASAP = true,
        MinProgress = 0.8,
    },
    ["fire_iron"] = {
        Source = "fire_full",
        EjectAt = 32 / 40,
        MinProgress = 0.05,
        EventTable = {
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 26 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 30 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 40 / 40},
        },
    },
    ["fire_empty"] = {
        Source = "fire",
        MinProgress = 0.05,
    },
    ["fire_iron_empty"] = {
        Source = "fire",
        MinProgress = 0.05,
    },



    ["fire_smg"] = {
        Source = "fire_smg",
        MinProgress = 0.05,
        EjectAt = 1 / 40,
    },
    ["fire_empty_smg"] = {
        Source = "fire_smg",
        MinProgress = 0.05,
        EjectAt = 1 / 40,
    },
    ["fire_iron_smg"] = {
        Source = "fire_iron_smg",
        MinProgress = 0.05,
        EjectAt = 1 / 40,
    },

    ["fire_br"] = {
        Source = "fire_br",
        MinProgress = 0.05,
        Mult = 1,
        EjectAt = 1 / 40,
        EventTable = {
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 0 / 40},
        },
    },
    ["fire_iron_br"] = {
        Source = "fire_br_iron",
        MinProgress = 0.05,
        Mult = 1,
        EjectAt = 1 / 40,
        EventTable = {
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 0 / 40},
        },
    },
    ["fire_empty_br"] = {
        Source = "fire_br",
        MinProgress = 0.05,
        Mult = 1,
        EjectAt = 1 / 40,
        EventTable = {
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 0 / 40},
        },
    },



    -- AWP --

    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_css/awp_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/awp_clipin.wav" ,    t = 50 / 40},
        },
        FireASAP = true,
        MinProgress = 0.83,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.9,
        EjectAt = 120 / 40,
        EventTable = {
            {s =  "gekolt_css/awp_clipout.wav" ,   t = 20 / 40},
            {s =  "gekolt_css/awp_clipin.wav" ,    t = 60 / 40},
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 105 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 112 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 125 / 40},
        },
    },

    -- AX50 --

    ["fire_sd"] = {
        Source = "fire_full_sd",
        EjectAt = 17 / 40,
        EventTable = {
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 9 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 18 / 40},
        },
        FireASAP = true,
        MinProgress = 0.83,
    },
    ["fire_iron_sd"] = {
        Source = "fire_full_sd",
        EjectAt = 17 / 40,
        EventTable = {
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 9 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 18 / 40},
        },
        FireASAP = true,
        MinProgress = 0.83,
    },
    ["reload_sd"] = {
        Source = "wet_sd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_css/awp_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/awp_clipin.wav" ,    t = 48 / 40},
        },
        FireASAP = true,
        MinProgress = 0.83,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_sd"] = {
        Source = "dry_sd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.9,
        EjectAt = 80 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.55, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/awp_clipout.wav"	,	t = 10 / 40},
            {s =  "gekolt_css/awp_clipin.wav"	,	t = 48 / 40},
            {s =  "gekolt_css/awp_boltup.wav"	,	t = 72 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,	t = 79 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,	t = 82 / 40},
        },
    },

    -- BR --

    ["reload_br"] = {
        Source = "wet_br",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,	t = 10 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,	t = 58 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,	t = 62 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.15, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_br"] = {
        Source = "dry_br",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.86,
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,    t = 58 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 62 / 40},
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 100 / 40},
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 101 / 40},
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 109 / 40},
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 110 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.55, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 1, rhik = 1, },
        },
    },
    -- SMG --

    ["reload_smg"] = {
        Source = "wet_smg",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.85,
        EventTable = {
            {s =  "gekolt_css/mp5_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/mp5_clipin.wav" ,    t = 58 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.15, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
        },
    },
    ["reload_empty_smg"] = {
        Source = "dry_smg",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_css/mp5_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/mp5_clipin.wav" ,    t = 58 / 40},
            {s =  "gekolt_css/mp5_slide.wav" ,    t = 75 / 40},
            {s =  "gekolt_css/mp5_slideback.wav" ,    t = 85 / 40},
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
}
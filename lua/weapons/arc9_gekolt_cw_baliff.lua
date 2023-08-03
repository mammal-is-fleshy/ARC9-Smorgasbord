AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Secondaries"

SWEP.PrintName = "Paxica Wricht"
SWEP.TrueName = ".410 Jury"

SWEP.Class = "Revolver"
SWEP.Trivia = {
    ["Country of Origin"] = "Brazil",
    ["Caliber"] = ".410 Bore",
}

SWEP.Credits = {
    ["Sound2"] = [[Contract Wars]],
    ["Assets3"] = [[Contract Wars]],
    ["Contact4"] = [[SlogoKolt#6648 or Mytton#5132]],
}

SWEP.Description = [[Unfamiliar housing in unfamiliar tradition.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_baliff.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_baliff.mdl"
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

SWEP.Num = 9

SWEP.DamageMax = 14
SWEP.DamageMin = 8

SWEP.RangeMin = 500
SWEP.RangeMax = 3000

SWEP.Penetration = 3 -- Units of wood that can be penetrated by this gun.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.8,
    [HITGROUP_RIGHTARM] = 0.8,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1280 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5-- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 600

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
SWEP.RecoilSide = 0.4 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 10
SWEP.RecoilResetTime = 0

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.25

SWEP.RecoilMultRecoil = 1.15 -- Looks stupid but it means expoential recoil growth.

-------------------------- SPREAD

SWEP.Spread = 0.025

SWEP.SpreadAddRecoil = 0
SWEP.SpreadMultRecoil = 1.3
SWEP.RecoilModifierCap = 7

SWEP.SpreadAddHipFire = 0.0012
SWEP.SpreadMultHipFire = 1.75

-------------------------- HANDLING

SWEP.FreeAimRadius = 4 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 1.25

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.667
SWEP.SwayMultShooting = 1.5
SWEP.SwayMultSights = 0.5

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.17

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.7
SWEP.SpeedMultShooting = 0.8
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
    Pos = Vector(-2, -3, 0.25),
    Ang = Angle(0, 0, 5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(-10, 60, -25),
    },
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = true,
}

SWEP.Crosshair = false

SWEP.SprintAng = Angle(20, -15, -10)
SWEP.SprintPos = Vector(0, 2, -0.5)

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

SWEP.ShootSound = "gekolt_pr2/baliff_shoot.wav"
SWEP.ShootSoundSilenced = "gekolt_css/9mm_sd.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.EjectDelay = 0
SWEP.NoShellEject = true
SWEP.CaseEffectQCA = nil

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "0000000000000"

SWEP.AttachmentElements = {
    ["b_short"] = {
        Bodygroups = {{2, 2}},
    }, 
    ["b_big"] = {
        Bodygroups = {{0, 1},{1, 1},{2, 4}},
    }, 
	["b_xshort"] = {
        Bodygroups = {{2, 3}},
    },
    ["b_long"] = {
        Bodygroups = {{2, 1}},
    },
    ["has_optic"] = {
        Bodygroups = {{5, 1}},
    },
    ["rail_bottom"] = {
        Bodygroups = {{4, 1}},
    },
    ["akimbose"] = {
        SprintPosOverride = Vector(0, 2, -3),
        SprintAngOverride = Angle(0, 18, 0),
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"has_optic"},

        ExcludeElements = {"pre_optic"},
        Category = {"optic_css"},
        Bone = "W_Main",
        Pos = Vector(0, -4.75, 1.25),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Barrel",
        DefaultName = "Short",
		Hidden = false,
        Category = {"cw_baliff_barrel"},
        Bone = "W_Main",
        Pos = Vector(0, -2.4, 5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "MOUNT Bottom",
        Category = {"tac_css", "rail_bottom"},
        InstalledElements = {"rail_bottom"},
        Hidden = false,
		
        Bone = "W_Main",
        Pos = Vector(0, -0.8, 5.5),
        Ang = Angle(90, 0, 90),
        ExtraSightDistance = 10,
        Icon_Offset = Vector(1, 0, 0)
    },
    {
        PrintName = "Ammo Type",
        DefaultName = "Default Type",
        Category = {"css_ammo_sg"},
        ExcludeElements = {"not_sg"},

        Bone = "W_Main",
        Pos = Vector(0, -2.5, 1.5),
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

SWEP.ManualAction = true

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s =  "gekolt_css_foley/draw_pist.wav" ,   t = 0 / 40},
        },
    },
    ["holster"] = {
        Source = "idle",
        Time = 0
    },
    ["fire"] = {
        Source = "fire",
    },
    ["fire_iron"] = {
        Source = "ads_fire",
    }, 
	["enter_sights"] = {
        Source = "ads_in",
        Time = 50/40,
    },
    ["exit_sights"] = {
        Source = "ads_out",
        Time = 50/40,
    },
    ["idle_sights"] = {
        Source = "ads",
    },

    ["cycle"] = {
        Source = "pump",
        MinProgress = 20 / 40,
        EventTable = {{s =  "gekolt_pr2/baliff_cock.wav" ,   t = 4 / 40},},
    },
    ["cycle_sights"] = {
        Source = "ads_pump",
        MinProgress = 10 / 40,
        EventTable = {{s =  "gekolt_pr2/baliff_cock.wav" ,   t = 1 / 40},},
    },

    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.85,
        EventTable = {
            {s =  "gekolt_pr2/baliff_reload.ogg" ,   t = 0 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_big"] = {
        Source = "dry_big",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.75,
        EventTable = {
            {s =  "gekolt_pr2/baliff_reload2.ogg" ,   t = 0 / 40}, 
            },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    }, 
}

SWEP.Hook_Think = function(wep)
    if IsValid(wep) and wep.Arc9 then
		local vm = wep:GetOwner():GetViewModel()
		local delta = wep:GetSightDelta()

        local bipoded = wep:GetInBipod()
        wep.ADSBipodAnims = math.Approach(wep.ADSBipodAnims or 0, bipoded and 1 or 0, FrameTime() / 0.5)

        vm:SetPoseParameter("ads", Lerp( math.ease.InOutCubic(math.max(delta, wep.ADSBipodAnims)), 0, 1)) -- stole straight from urbna
    end
end
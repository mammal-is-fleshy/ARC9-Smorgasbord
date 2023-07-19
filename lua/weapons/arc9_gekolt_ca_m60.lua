AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Primaries"

SWEP.PrintName = "Zwyneber-60"
SWEP.TrueName = "M60"

SWEP.Class = "Machine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States of America",
    ["Caliber"] = "7.62x51mm",
}

SWEP.Credits = {
    ["Sound2"] = [[Project Reality 2, cherresoda#6579 (rzen1th)]],
    ["Assets3"] = [[Combat Arms]],
    ["Contact4"] = [[SlogoKolt#6648 or Mytton#5132]],
}

SWEP.Description = [[Heavy duty machine gun with great suppressing capacity.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_m60.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_m60.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-1, 2, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 2, -7),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 65 -- Damage done at point blank range
SWEP.DamageMin = 40 -- Damage done at maximum range

SWEP.DamageRand = 0

SWEP.RangeMin = 300 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 8 -- Units of wood that can be penetrated by this gun.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2329 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 80 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 650

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
SWEP.RecoilUp = 0.3 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.15 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.25
SWEP.RecoilRandomSide = 0.325

SWEP.RecoilDissipationRate = 20 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultRecoil = 1.075 -- Looks stupid but it means expoential recoil growth.

-------------------------- SPREAD

SWEP.Spread = 0.0014

SWEP.SpreadAddRecoil = 0
SWEP.SpreadMultRecoil = 1.22
SWEP.RecoilModifierCap = 14

SWEP.SpreadAddHipFire = 0.0012
SWEP.SpreadMultHipFire = 1.5

-------------------------- HANDLING

SWEP.FreeAimRadius = 12
SWEP.FreeAimRadiusSights = 0
SWEP.Sway = 1

SWEP.SwayMultMidAir = 2
SWEP.SwayAddMove = 0.5
SWEP.SwayMultMove = 1
SWEP.SwayMultCrouch = 0.5
SWEP.SwayMultShooting = 1.5
SWEP.SwayMultSights = 0.25

SWEP.SwayMultSights = 0.4

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.38

SWEP.SpeedMult = 0.75
SWEP.SpeedMultSights = 0.65
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 0.9

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
    Pos = Vector(-3.3, 0, 1.2),
    Ang = Angle(0,0,5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

SWEP.Crosshair = false

SWEP.BipodPos = Vector(-3.3, 5, -0.5)
SWEP.BipodAng = Angle(0, 0, 5)

SWEP.SprintAng = Angle(40, -15, -10)
SWEP.SprintPos = Vector(3, 6, -2)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0.5, 8, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, 7.5, -2)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(10, 32, 3)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(10.5, -2.55, -2.23)

SWEP.StandardPresets = {
}

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

-------------------------- SOUNDS

SWEP.ShootSound = "gekolt_pr2/m60_fire.ogg"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "01100000000100000000"

SWEP.TriggerDelay = true
SWEP.TriggerDelayTime = 0.07
SWEP.TriggerDownSound = "gekolt_css/weaponclick.wav"

SWEP.BulletBones = {
    [1] = "W_Belt1",
    [2] = "W_Belt2",
    [3] = "W_Belt3",
    [4] = "W_Belt4",
    [5] = "W_Belt5",
    [6] = "W_Belt6",
    [7] = "W_Belt7",
    [8] = "W_Belt8",
    [9] = "W_Belt9",
    [10] = "W_Belt10",
    [11] = "W_Belt11", 
	[12] = "W_Belt12",
    [13] = "W_Belt13",
	[14] = "W_Belt14",
    [15] = "W_Belt15",
	[16] = "W_Belt16",
    [17] = "W_Belt17",
	[18] = "W_Belt18",
	[19] = "W_Belt19",
}


SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
    },
    ["fire_iron"] = {
        Source = {"fire_iron"},
    },
    ["reload"] = {
        Source = "wet",
        MagSwapTime = 70 / 40,	
        FireASAP = true,
        MinProgress = 0.83,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.2, lhik = 1, rhik = 1, },
        { t = 0.3, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
        { t = 0.875, lhik = 0, rhik = 1, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/m249_coverup.wav" ,    t = 18 / 40},
            {s =  "gekolt_css/m249_boxout.wav" ,    t = 48 / 40},
            {s =  "gekolt_css/m249_boxin.wav" ,    t = 91 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,   t = 106 / 40},
            {s =  "gekolt_css/m249_chain.wav" ,    t = 108 / 40},
            {s =  "gekolt_css/m249_coverdown.wav" ,   t = 140 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 142 / 40},
        },
    }, 
	["reload_half"] = {
        Source = "wet_beltdef",
        MagSwapTime = 80 / 40,	
        FireASAP = true,
        MinProgress = 0.83,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.2, lhik = 1, rhik = 1, },
        { t = 0.3, lhik = 0, rhik = 1, },
        { t = 0.875, lhik = 0, rhik = 1, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/m249_coverup.wav" ,    t = 18 / 40},
            {s =  "gekolt_css/m249_boxout.wav" ,    t = 48 / 40},
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 70 / 40},
            {s =  "gekolt_css/m249_boxin.wav" ,    t = 97 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,   t = 112 / 40},
            {s =  "gekolt_css/m249_chain.wav" ,    t = 114 / 40},
            {s =  "gekolt_css/m249_coverdown.wav" ,   t = 146 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 148 / 40},
        },
    },
    ["reload_empty"] = {
        Source = "dry",
        MagSwapTime = 100 / 40,	
        FireASAP = true,
        MinProgress = 0.9,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.3, lhik = 1, rhik = 1, },
        { t = 0.4, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
        { t = 0.9, lhik = 0, rhik = 1, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 11 / 40},
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 18 / 40},
            {s =  "gekolt_css/m249_coverup.wav" ,    t = 42 / 40},
            {s =  "gekolt_css/m249_boxout.wav" ,    t = 72 / 40},
            {s =  "gekolt_css/m249_boxin.wav" ,    t = 115 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,   t = 140 / 40},
            {s =  "gekolt_css/m249_chain.wav" ,    t = 142 / 40},
            {s =  "gekolt_css/m249_coverdown.wav" ,   t = 168 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 170 / 40},
        },
    }, 


	["reload_belt"] = {
        Source = "wet_belt",
        MagSwapTime = 70 / 40,		
        FireASAP = true,
        MinProgress = 0.83,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.4, lhik = 1, rhik = 1, },
        { t = 0.5, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
        { t = 0.85, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/m249_coverup.wav" ,    t = 15 / 40},
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 45 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,   t = 85 / 40},
            {s =  "gekolt_css/m249_chain.wav" ,    t = 80 / 40},
            {s =  "gekolt_css/m249_coverdown.wav" ,   t = 113 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 115 / 40},
        },
    },
    ["reload_empty_belt"] = {
        Source = "dry_belt",
        MagSwapTime = 60 / 40,	
        FireASAP = true,
        MinProgress = 0.9,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.425, lhik = 1, rhik = 1, },
        { t = 0.525, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
        { t = 0.85, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 11 / 40},
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 18 / 40},
            {s =  "gekolt_css/m249_coverup.wav" ,    t = 42 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,   t = 78 / 40},
            {s =  "gekolt_css/m249_chain.wav" ,    t = 72 / 40},
            {s =  "gekolt_css/m249_coverdown.wav" ,   t = 110 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 112 / 40},
        },
    },


	["reload_para"] = {
        Source = "wet_42",
        MagSwapTime = 70 / 40,		
        FireASAP = true,
        MinProgress = 0.83,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,    t = 54 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 68 / 40},
        },
    },
    ["reload_empty_para"] = {
        Source = "dry_42",
        MagSwapTime = 60 / 40,	
        FireASAP = true,
        MinProgress = 0.9,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
        { t = 0.85, lhik = 0, rhik = 1, },{ t = 0.925, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,    t = 54 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 68 / 40},
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 97 / 40},
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 106 / 40},
        },
    },

	["reload_parax"] = {
        Source = "wet_42x",
		Mult = 1.1,
        MagSwapTime = 70 / 40,		
        FireASAP = true,
        MinProgress = 0.83,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,    t = 54 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 68 / 40},
        },
    },
    ["reload_empty_parax"] = {
        Source = "dry_42x",
		Mult = 1.1,
        MagSwapTime = 60 / 40,	
        FireASAP = true,
        MinProgress = 0.9,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
        { t = 0.85, lhik = 0, rhik = 1, },{ t = 0.925, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,    t = 54 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 68 / 40},
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 97 / 40},
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 106 / 40},
        },
    },

--------------------------------------------------------
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
}

-------------------------- ATTACHMENTS
SWEP.AttachmentElements = {
    ["rail_def"] = { Bodygroups = { {9, 1}, {7, 1} },},
    ["fg_def"] = { Bodygroups = { {10, 1} },},   

	["u_belt"] = { Bodygroups = { {1, 0}, {2, 0} },},
	["u_para"] = { Bodygroups = { {1, 2}, {2, 2}, {4, 2} }, AttPosMods = { [4] = { Pos = Vector(0, -0.825, -3.75), } }},
	["u_parax"] = { Bodygroups = { {1, 2}, {2, 3}, {4, 2} }, AttPosMods = { [4] = { Pos = Vector(0, -0.825, -3.75), } }},
	
	["hg_para"] = { Bodygroups = { {3, 1}, {6, 1}, {8, 2}, {11, 2} }, AttPosMods = { [5] = { Pos = Vector(0, -2.2, 19.5), } }},
}
SWEP.Bipod = true
SWEP.RecoilDissipationRateMultBipod = 2

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("rail_def") and wep:HasElement("u_para")	then model:SetBodygroup(9,2) end
	if wep:HasElement("rail_def") and wep:HasElement("u_parax")	then model:SetBodygroup(9,2) end

	if wep:HasElement("muzzle_hide") then model:SetBodygroup(11,0) end
	
	if !wep:HasElement("hg_para") then
	
    if wep:GetBipod() then
        model:SetBodygroup(8,0)
    elseif !wep:GetBipod() then
        model:SetBodygroup(8,1)
    end
	
	end
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
	if !wep:HasElement("has_rec") then
		if wep:Clip1() <= 10 and anim == "reload" then return "reload_half" end
	end
end


SWEP.Attachments = {
    {
        PrintName = "Receiver",
        DefaultName = "Standard Receiver",
        InstalledElements = {"has_rec"},

        Category = "ca_mg_up",
        Bone = "W_Main",
        Pos = Vector(0, 0, 0),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Handguard",
        DefaultName = "Standard Handguard",

        ExcludeElements = {"noguard"},
        Category = "ca_m60_handguard",
        Bone = "W_Main",
        Pos = Vector(0, -0.5, 15),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Foregrip",
        DefaultName = "None",
        InstalledElements = {"fg_def"},

        DefaultIcon = Material("arc9/def_att_icons/grip.png"),
        ExcludeElements = {"nofg"},
        Category = {"grip_css"},
        Bone = "W_Main",
        Pos = Vector(0, 1.75, 10),
        Ang = Angle(90, 0, -90),
        --MergeSlots = {7},
    },

    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"rail_def"},

        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
        Category = {"optic_css"},
        Bone = "W_Open",
        Pos = Vector(0, -1.2, -3.75),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Muzzle",
        DefaultName = "None",
        InstalledElements = {"muzzle_hide"},

        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, -2.2, 24.5),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Clamp",
        DefaultName = "None",
        Hidden = "True",

        ExcludeElements = {"short_clamp"},
        Category = {"clamp_css"},
        Bone = "W_Main",
        Pos = Vector(0, -0.25, 20),
        Ang = Angle(90, 0, -90),
    },

    {   --7 permanent ubgl, affected separately from the changes of the above attachment
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        ExcludeElements = {"nogrip", "u_disk", "u_919x", "u_566"},
        Category = {"css_ubgl"},
        Bone = "W_Main",
        Pos = Vector(0, 1, 12),
        Ang = Angle(90, 0, -90),
    },
}
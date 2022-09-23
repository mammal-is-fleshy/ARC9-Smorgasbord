AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - CSS"

SWEP.PrintName = "GR-30"
SWEP.TrueName = "M1 Garand"

SWEP.Class = "Marskman Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "United States of America",
    ["Caliber"] = ".30 Cal",
}

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "Day of Defeat + Counter-Strike Source"
}

SWEP.Description = [[Ancient gun.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_garand.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_garand.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(2, 8, -5),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.2
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 80 -- Damage done at point blank range
SWEP.DamageMin = 30 -- Damage done at maximum range

SWEP.DamageRand = 0.3 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 60 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 1500 -- In Hammer units, how far bullets can travel before dealing DamageMin.

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
SWEP.Recoil = 1.2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.7 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 

SWEP.RecoilKick = 3

-------------------------- SPREAD

SWEP.Spread = 0.003

SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 7 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0.75 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2

SWEP.FreeAimRadiusSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.9
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 0.75
SWEP.SpeedMultBlindFire = 0.95

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

SWEP.Crosshair = true

SWEP.SprintAng = Angle(30, -15, -10)
SWEP.SprintPos = Vector(2, 2, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, 0, -2)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(10, 32, 2)

SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_IDLE_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellCorrectPos = Vector(0, 0, 0)
SWEP.ShellCorrectAng = Angle(0, 0, 90)
SWEP.ShellScale = 0.5
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "gekolt_dod/garand_shoot.wav"
SWEP.ShootSoundSilenced = "gekolt_css/tmp-1.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.EjectDelay = 0

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "00000"

SWEP.AttachmentElements = {
    ["garand_slam"] = {
        Bodygroups = {{1, 2}},
        AttPosMods = { [3] = { Pos = Vector(0, 0.1, 22.5), }, [4] = { Pos = Vector(0, 1.15, 0.75), }, [5] = { Pos = Vector(0, 0.1, 18.35), } }			
	},

    ["garand_m14"] = {
        Bodygroups = {{1, 1}},
        Override_IronSights = {
			Pos = Vector(-4, 0, 5),
			Ang = Angle(0, 0, -5),
        },			
		AttPosMods = { [2] = { Pos = Vector(0,  -1.1, 5), }, [3] = { Pos = Vector(0, 0, 22.5), } }			
	},

    ["garand_mini"] = {
        Bodygroups = {{1, 3}},
        Override_IronSights = {
			Pos = Vector(-4, 0, 5),
			Ang = Angle(0, 0, -5),
        },			
		AttPosMods = { [2] = { Pos = Vector(0,  -1.1, 5), }, [3] = { Pos = Vector(0, 0, 19.15), } }			
	},	

    ["rail_top"] = {Bodygroups = {{2, 1}},},
	["rail_bot"] = {Bodygroups = {{3, 1}},},
}

SWEP.Hook_ModifyBodygroups = function(wep, data) 
    local model = data.model
    if wep.Attachments[4].Installed and wep:HasElement("garand_slam") then model:SetBodygroup(3,2) end	--- to future me: Rail ici s'il te plait ---
	
    if wep.Attachments[2].Installed and wep:HasElement("garand_mini") then model:SetBodygroup(4,1) end	
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
        Category = {"grip_css", "grip_css_free"}, 
        Bone = "W_Pump",
        Pos = Vector(0, 0.9, -3),
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
        Source = "draw", -- QC sequence source, can be {"table", "of", "strings"} or "string" 
		--Time = 0.5, -- overrides the duration of the sequence
        Mult = 1, -- multiplies time
        EventTable = {
            {s =  "gekolt_css/awp_deploy.wav" ,   t = 1 / 40},
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
    },	
    ["fire_iron"] = {
        Source = "fire_iron",	
    },		
    ["fire_empty"] = {
        Source = "fire_emp",
        EventTable = {
            {s =  "gekolt_dod/garand_clipding.wav" ,   t = 1 / 40},
        },		
    },	
    ["fire_iron_empty"] = {
        Source = "fire_iron_emp",
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
            {s =  "gekolt_dod/garand_clipin2.wav" ,    t = 60/ 40},
			{s =  "gekolt_dod/garand_boltforward.wav" ,    t = 78 / 40},
        },
		FireASAP = true,
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
    },	
    ["fire_iron_empty_380"] = {
        Source = "fire_iron_emp",	
    },			

    ["reload_308"] = {
        Source = "wet_308",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.83,
        EventTable = {
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
	
    -- SLAM --

    ["fire_slam"] = {
        Source = "fire_slam",	
        EventTable = {
            {s =  "gekolt_css/m3_pump.wav" ,   t = 5 / 40},
        },
    },	
    ["fire_iron_slam"] = {
        Source = "fire_slam",
        EventTable = {
            {s =  "gekolt_css/m3_pump.wav" ,   t = 5 / 40},
        },		
    },		
    ["fire_empty_slam"] = {
        Source = "fire_emp",	
    },	
    ["fire_iron_empty_slam"] = {
        Source = "fire_emp",	
    },	

    ["reload_start_slam"] = {
        Source = "start_slam",
        RestoreAmmo = 1,		
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_css/m3_insertshell.wav" ,   t = 5 / 40},	
        },	
		IKTimeLine = {	{ t = 0, lhik = 1, rhik = 1, }, { t = 0.5, lhik = 0, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, }	},			
    }, 
	["reload_insert_slam"] = {
        Source = "load_slam",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_css/m3_insertshell.wav" ,   t = 5 / 40},	
        },	
		IKTimeLine = {	{ t = 0, lhik = 0, rhik = 0, }, { t = 1, lhik = 0, rhik = 0, },	},			
    },
	["reload_finish_slam"] = {
        Source = "end_slam",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.85,
        EventTable = {
		
        },	
		IKTimeLine = {	{ t = 0, lhik = 0, rhik = 1, }, { t = 0.8, lhik = 1, rhik = 1, }, { t = 1, lhik = 1, rhik = 1, }	},			
    },	
    ["reload_start_empty"] = {
        Source = "dry_slam",
        RestoreAmmo = 2,			
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_css/m3_insertshell.wav" ,   t = 12 / 40},	
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,    t = 50 / 40},		
            {s =  "gekolt_css/m3_insertshell.wav" ,   t = 72 / 40},				
		},
		IKTimeLine = {		{ t = 0, lhik = 1, rhik = 1, }, { t = 0.1, lhik = 0, rhik = 1, }, { t = 1, lhik = 0, rhik = 1, },	},				
    },		
}
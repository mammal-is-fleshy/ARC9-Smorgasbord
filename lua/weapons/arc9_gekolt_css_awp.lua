AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - CSS"

SWEP.PrintName = "AMP-38"
SWEP.TrueName = "AWP"

SWEP.Class = "Sniper Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "United Kingdom",
    ["Caliber"] = ".338 Lapua Magnum",
}

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "Counter-Strike Source"
}

SWEP.Description = [[Long range gun used in any range but long.
[Limited] customisation.]]

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

SWEP.DamageMax = 60 -- Damage done at point blank range
SWEP.DamageMin = 160 -- Damage done at maximum range

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

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 50

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
SWEP.Recoil = 2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.7 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.7 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 0.75

-------------------------- SPREAD

SWEP.Spread = 0.003
SWEP.SpreadHipFire = 0.01
SWEP.SpreadSights = 0

SWEP.SpreadAddRecoil = 0 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 15 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 1 -- How much the gun sways.

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
    Pos = Vector(-4, 0, -0.25),
    Ang = Angle(0, 0, -5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(-10, 0, -25),
    },	
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
}

SWEP.SprintAng = Angle(30, -15, -10)
SWEP.SprintPos = Vector(2, 2, 0)

SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, 2, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 32, 2)

SWEP.CustomizeSnapshotFOV = 90
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

SWEP.MuzzleParticle = "muzzleflash_m82"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "gekolt_css/awp1.wav"
SWEP.ShootSoundSilenced = "weapons/tmp/tmp-1.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.EjectDelay = 0.1

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "00000"

SWEP.AttachmentElements = {

    ["awp_f_howell"] = {
        Bodygroups = {
            {0, 2}
        },
	},
	
    ["awp_s_smg"] = {
        Bodygroups = {
            {2, 1}
        },
	},

    ["awp_s_no"] = {
        Bodygroups = {
            {2, 2}
        },
	},
		

    ["awp_f_smg"] = {
        Bodygroups = {
            {0, 1},
            {1, 1}			
        },
        Override_IronSights = {
			Pos = Vector(-4, 0, 5),
			Ang = Angle(0, 0, -5),
        },			
	},	
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Frame",
        DefaultName = "Bolt Action Frame",

        Category = "css_awp_frame", 
        Bone = "W_Main",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),		
    },
    [2] = {
        PrintName = "Stock",
        DefaultName = "Polymer Stock",

        Category = "css_awp_stock", 
        Bone = "W_Main",
        Pos = Vector(0, 2, -10),
        Ang = Angle(0, 0, 0),		
    }	
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
     },
    ["draw"] = {
        Source = "draw", -- QC sequence source, can be {"table", "of", "strings"} or "string" 
		--Time = 0.5, -- overrides the duration of the sequence
        Mult = 1, -- multiplies time
        EventTable = {
            {s =  "gekolt_css/awp_deploy.wav" ,   t = 1 / 40},
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

    ["fire_smg"] = {
        Source = "fire_smg",
		MinProgress = 0.05,
    },	
    ["fire_empty_smg"] = {
        Source = "fire_smg",
		MinProgress = 0.05,
    },	
	
    ["fire_br"] = {
        Source = "fire_br",
		MinProgress = 0.05,
		Mult =1,
    },	
    ["fire_empty_br"] = {
        Source = "fire_br",
		MinProgress = 0.05,
		Mult =1,
    },		
	
	
	
    -- AWP --

    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        EventTable = {
            {s =  "gekolt_css/awp_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/awp_clipin.wav" ,    t = 50 / 40},
        },		
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        EventTable = {
            {s =  "gekolt_css/awp_clipout.wav" ,   t = 20 / 40},
            {s =  "gekolt_css/awp_clipin.wav" ,    t = 60 / 40},		
            {s =  "gekolt_css/awp_boltup.wav" ,   t = 105 / 40},
            {s =  "gekolt_css/awp_boltpull.wav" ,   t = 112 / 40},			
            {s =  "gekolt_css/awp_boltdown.wav" ,    t = 125 / 40},
        },	
    },

    -- BR --

    ["reload_br"] = {
        Source = "wet_br",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,    t = 58 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 62 / 40},			
        },	
    },
    ["reload_empty_br"] = {
        Source = "dry_br",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        EventTable = {
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/ak47_clipin1.wav" ,    t = 58 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 62 / 40},	
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 100 / 40},				
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 110 / 40},	
			},
    },	
    -- SMG --

    ["reload_smg"] = {
        Source = "wet_smg",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        EventTable = {
            {s =  "gekolt_css/mp5_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/mp5_clipin.wav" ,    t = 58 / 40},
        },	
    },
    ["reload_empty_smg"] = {
        Source = "dry_smg",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        EventTable = {
            {s =  "gekolt_css/mp5_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_css/mp5_clipin.wav" ,    t = 58 / 40},
            {s =  "gekolt_css/mp5_slide.wav" ,    t = 75 / 40},				
            {s =  "gekolt_css/mp5_slideback.wav" ,    t = 85 / 40},	
			},
    },		
}
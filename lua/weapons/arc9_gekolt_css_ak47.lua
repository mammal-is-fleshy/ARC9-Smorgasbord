AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"

SWEP.PrintName = "Avtoma-7"
SWEP.TrueName = "AK47"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = [[[Soviet] Russia]],
    ["Caliber"] = "7.62x39mm",
}

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "Counter-Strike Source"
}	

SWEP.Description = [[If it walks, keep using it.
If it's outdated but still functional, add junks to it]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_ak47.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_ak47.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-1, 2, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 2, -7),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 35 -- Damage done at point blank range
SWEP.DamageMin = 24 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 300 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 8 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2329 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

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
        Mode = -1,
        -- add other attachment modifiers
    },
    {
        Mode = 1
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.25

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.45 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.7 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.6

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true

SWEP.VisualRecoilUp = 0.01 -- Vertical tilt for visual recoil.
SWEP.VisualRecoilSide = 0.01 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 0.2 -- Roll tilt for visual recoil.

SWEP.VisualRecoilCenter = Vector(0, 4, 0) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilPunch = 0.1 -- How far back visual recoil moves the gun.

SWEP.VisualRecoilMult = 1

SWEP.VisualRecoilHipFire = false

-------------------------- SPREAD

SWEP.Spread = 0.004

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 1 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2

SWEP.FreeAimRadiusSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.33 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.35 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-2.55, 0, 0.7),
    Ang = Angle(0,0,-5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

SWEP.Crosshair = true

SWEP.SprintAng = Angle(25, -15, -10)
SWEP.SprintPos = Vector(3, 6, -1)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0.5, 5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, 4.5, -2)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(10, 32, 3)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(10.5, -2.55, -2.23) 

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

SWEP.ShootSound = "oneshotof_cs16/ak47-1.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "00000000000000000000"

SWEP.Animations = {
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
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 63 / 40},			
        },				
    }, 
	["reload_54"] = {
        Source = "wet54",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 63 / 40},			
        },				
    },
    ["reload_empty_54"] = {
        Source = "dry_54",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
		{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },			
		},	
        EventTable = {		
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 63 / 40},	
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 87 / 40},	
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 93 / 40},			
        },			
    },	
------------------ 56 ----------------------------------	
	["reload_56"] = {
        Source = "wet56",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "oneshotof_cs16/ump45_clipout.wav" ,   t = 18 / 40},
            {s =  "oneshotof_cs16/mp5_clipin.wav" ,    t = 63 / 40},			
        },				
    },
    ["reload_empty_56"] = {
        Source = "dry_56",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
		{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },			
		},	
        EventTable = {		
            {s =  "oneshotof_cs16/ump45_clipout.wav" ,   t = 18 / 40},
            {s =  "oneshotof_cs16/mp5_clipin.wav" ,    t = 61 / 40}, 
			{s =  "oneshotof_cs16/ump45_boltslap.wav" ,    t = 85 / 40},
        },			
    },	
------------------ 25 ----------------------------------	
	["reload_25"] = {
        Source = "wet25",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 63 / 40},			
        },				
    },
    ["reload_empty_25"] = {
        Source = "dry_25",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
		{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },		
		},	
        EventTable = {		
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 11 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 63 / 40},	
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 85 / 40},	
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 90 / 40},			
        },			
    },	
------------------ bizon --------------------------------	
	["reload_bizon"] = {
        Source = "wet_bizon",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/p90_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/p90_clipin.ogg" ,    t = 48 / 40},
            {s =  "gekolt_css/p90_clipin2.ogg" ,    t = 60 / 40},			
        },				
    },
    ["reload_empty_bizon"] = {
        Source = "dry_bizon",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
		{ t = 0.1, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
		{ t = 0.85, lhik = 0, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },			
		},	
        EventTable = {		
            {s =  "gekolt_css/p90_clipout.wav" ,   t = 15 / 40},
            {s =  "gekolt_css/p90_clipin.ogg" ,    t = 42 / 40},
            {s =  "gekolt_css/p90_clipin2.ogg" ,    t = 55 / 40},	
            {s =  "gekolt_css/p90_boltpull.wav" ,    t = 74 / 40},		
        },			
    },	
------------------ dp27 ----------------------------------	
	["reload_dp"] = {
        Source = "wet_dp",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 1, rhik = 1, },{ t = 0.7, lhik = 1, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/famas_clipout.wav" ,   t = 18 / 40},   
			{s =  "gekolt_css/m249_boxin.wav" ,   t = 72 / 40},
            {s =  "gekolt_css/m4a1_magtap.wav" ,    t = 105 / 40},	 			
        },				
    },
    ["reload_empty_dp"] = {
        Source = "dry_dp",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 1, rhik = 1, },{ t = 0.7, lhik = 1, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },		
		},	
        EventTable = {		
            {s =  "gekolt_css/famas_clipout.wav" ,   t = 18 / 40},   
			{s =  "gekolt_css/m249_boxin.wav" ,   t = 72 / 40},
            {s =  "gekolt_css/m4a1_magtap.wav" ,    t = 105 / 40},	 
			{s =  "gekolt_css/m249_boltpull.wav" ,    t = 125 / 40},			
        },			
    },	
------------------ water --------------------------------
	["reload_water"] = {
        Source = "wet_water",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 18 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 63 / 40},			
        },				
    },
    ["reload_empty_water"] = {
        Source = "dry_water",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
		{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },			
		},	
        EventTable = {		
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 63 / 40},	
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 87 / 40},	
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 93 / 40},			
        },			
    },	    
	["reload_empty"] = {
        Source = "dry",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },
		{ t = 0.85, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},	
        EventTable = {		
            {s =  "gekolt_css/ak47_clipout.wav" ,   t = 12 / 40},
            {s =  "gekolt_css/ak47_clipin2.wav" ,    t = 63 / 40},	
            {s =  "gekolt_css/ak47_boltpull1.wav" ,    t = 87 / 40},	
            {s =  "gekolt_css/ak47_boltpull2.wav" ,    t = 93 / 40},			
        },			
    },	
------------------ 9mm ---------------------------------
	["reload_9mm"] = {
        Source = "wet_9mm",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 1, },{ t = 0.7, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/mp5_clipout.wav" ,   t = 17 / 40},
            {s =  "gekolt_css/mp5_clipin.wav" ,    t = 50 / 40},			
        },				
    },
    ["reload_empty_9mm"] = {
        Source = "dry_9mm",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 0, rhik = 1, },{ t = 0.75, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },			
		},	
        EventTable = {		
            {s =  "gekolt_css/mp5_clipout.wav"	,   t = 17 / 40},
            {s =  "gekolt_css/mp5_clipin.wav"	,    t = 50 / 40},		
            {s =  "gekolt_css/mp5_slide.wav"	,    t = 72 / 40},	 
			{s =  "gekolt_css/mp5_slideback.wav"	,    t = 80 / 40},			
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
	["firemode"] = {
        Source = "firemode",
    },
    ["idle_empty"] = {
        Source = "idle",
    },	

    ["fire_empty"] = {
        Source = {"fire"},	
	},
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {		
	["s_fold1"] = { Bodygroups = { {4, 3} },},	
	["s_fold2"] = { Bodygroups = { {4, 4} },},	
	["s_fold3"] = { Bodygroups = { {4, 5} },},
	["s_slide"] = { Bodygroups = { {4, 10} },},
	["s_heavy"] = { Bodygroups = { {4, 6} },},
	["s_rpk"] = { Bodygroups = { {4, 9} },},	
	["s_poly1"] = { Bodygroups = { {4, 7} },},
	["s_poly2"] = { Bodygroups = { {4, 8} },},		
	["s_adaptor"] = { Bodygroups = { {4, 11} },},

	["hg_poly"] = { Bodygroups = { {3, 4} },},
	["hg_bizon"] = { Bodygroups = { {3, 9} },					AttPosMods = { [7] = { Pos = Vector(0, 0.075, 21), } }		},
	["hg_12"] = { Bodygroups = { {3, 12}, {1, 4}, {2, 2}, },	AttPosMods = { [6] = { Pos = Vector(0, 0.15 , 3.5), }, [5] = { Pos = Vector(0, 1.35, 16), }, [7] = { Pos = Vector(0.05, 0.05, 27), } }		},	
	["hg_sd"] = { Bodygroups = { {3, 2}, {2, 2} }, 				AttPosMods = { [5] = { Pos = Vector(0, 2.25, 18.5), } }		},	
	["hg_u"] = { Bodygroups = { {3, 1}, {2, 1} },				AttPosMods = { [7] = { Pos = Vector(0, 0.075, 20), } }		},
	["hg_rpk"] = { Bodygroups = { {3, 5} },						AttPosMods = { [7] = { Pos = Vector(0, 0.075, 35), } }		},
	["hg_hunt"] = { Bodygroups = { {3, 6}, {2, 1} },			AttPosMods = { [7] = { Pos = Vector(0, 0.075, 37.5), } }	},
	["hg_94"] = { Bodygroups = { {3, 8}, {2, 2}, {1, 2} },		AttPosMods = { [7] = { Pos = Vector(0, 0.2, 29.5), } }		},		
	["hg_rail"] = { Bodygroups = { {3, 3}, {2, 2}, {1, 1} },	AttPosMods = { [6] = { Pos = Vector(0, -0.35 , 5), }, [5] = { Pos = Vector(0, 2, 15), }, [7] = { Pos = Vector(0, 0.1, 27), } }		},	

	["g_poly"] = { Bodygroups = { {6, 1} },},		
	["g_ske"] = { Bodygroups = { {6, 2} },},	
	["g_rif"] = { Bodygroups = { {4, 1},{6, 3} },},		
	["g_rifp"] = { Bodygroups = { {4, 2},{6, 3} },},	

	["u_919"] = { Bodygroups = { {0, 8} },},		
	["u_919x"] = { Bodygroups = { {0, 6} },},	
	["u_308"] = { Bodygroups = { {0, 3} },},	
	["u_545"] = { Bodygroups = { {0, 1} },},	
	["u_556"] = { Bodygroups = { {0, 2} },}, 
	["u_drum"] = { Bodygroups = { {0, 4} },},
	["u_566"] = { Bodygroups = { {0, 7}, {1, 3}, {2, 2}, {3, 10}},	AttPosMods = { [7] = { Pos = Vector(0, 0.075, 29.5), } }		},	
	["u_disk"] = { Bodygroups = { {0, 5}, {2, 2},{3, 7}, {5, 0}},	AttPosMods = { [6] = { Pos = Vector(0, -1, 0.4), } }		},	

	["rail_def"] = { Bodygroups = { {5, 3} },},	
	["fg_def"] = { Bodygroups = { {8, 1} },},	
}

SWEP.Hook_ModifyBodygroups = function(wep, data) 
    local model = data.model
    if wep:HasElement("rail_def") and wep:HasElement("hg_12") 	then model:SetBodygroup(5,0) end   
	if wep:HasElement("rail_def") and wep:HasElement("hg_12") 	then model:SetBodygroup(1,0) end
	if wep:HasElement("rail_def") and wep:HasElement("hg_rail") then model:SetBodygroup(5,0) end
	if wep:HasElement("rail_def") and wep:HasElement("hg_rail") then model:SetBodygroup(1,0) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_poly") then model:SetBodygroup(5,2) end
	if wep:HasElement("rail_def") and wep:HasElement("hg_sd") 	then model:SetBodygroup(5,2) end
	if wep:HasElement("rail_def") and wep:HasElement("hg_94") 	then model:SetBodygroup(5,2) end
	if wep:HasElement("rail_def") and wep:HasElement("u_566") 	then model:SetBodygroup(5,2) end
	if wep:HasElement("rail_def") and wep:HasElement("u_566") 	then model:SetBodygroup(1,0) end
	if wep:HasElement("rail_def") and wep:HasElement("u_disk") 	then model:SetBodygroup(5,0) end
	if wep:HasElement("rail_def") and wep:HasElement("u_disk") 	then model:SetBodygroup(5,0) end

	if wep:HasElement("fg_def")	and wep:HasElement("hg_sd") 	then model:SetBodygroup(8,0) end
	if wep:HasElement("fg_def") and wep:HasElement("hg_rail") 	then model:SetBodygroup(8,0) end
	if wep:HasElement("fg_def") and wep:HasElement("hg_12") 	then model:SetBodygroup(8,0) end
end

SWEP.Attachments = {
    {
        PrintName = "Receiver",
        DefaultName = "Standard Receiver",

        Category = "css_ak_up", 
        Bone = "W_Main",
        Pos = Vector(0, 2, 7.5),
        Ang = Angle(90, 0, -90),		
    },	

    {
        PrintName = "Handguard",
        DefaultName = "Standard Handguard",

		ExcludeElements = {"noguard"},
        Category = "css_ak_handguard", 
        Bone = "W_Main",
        Pos = Vector(0, -0.5, 15),
        Ang = Angle(0, 0, 0),		
    },

    {
        PrintName = "Stock",
        DefaultName = "Standard Stock",
		ExcludeElements = {"nostock"},

        DefaultIcon = Material("arc9/def_att_icons/stock_ak.png"),		
        Category = "css_ak_stock", 
        Bone = "W_Main",
        Pos = Vector(0, 0.5, -5),
        Ang = Angle(0, 0, 0),		
    },

    {
        PrintName = "Grip",
        DefaultName = "Standard Grip",

        DefaultIcon = Material("arc9/def_att_icons/grip_ar.png"),	
		ExcludeElements = {"nogrip"},		
        Category = "css_ak_g", 
        Bone = "W_Main",
        Pos = Vector(0, 2.5, 0.5),
        Ang = Angle(0, 0, 0),		
    },

    {
        PrintName = "Foregrip",
        DefaultName = "None",
		InstalledElements = {"fg_def"}, 		

        DefaultIcon = Material("arc9/def_att_icons/grip.png"),	
		ExcludeElements = {"nofg"},
        Category = {"grip_css"}, 
        Bone = "W_Main",
        Pos = Vector(0, 2.6, 14),
        Ang = Angle(90, 0, -90),			
    },
	
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"rail_def"}, 

        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
        Category = {"optic_css"}, 
        Bone = "W_Bolt_Disk",
        Pos = Vector(0, -0.4, 0.8),
        Ang = Angle(90, 0, -90),			
    },

    {
        PrintName = "Muzzle",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
		ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"}, 
        Bone = "W_Main",
        Pos = Vector(0, 0.075, 27.5),
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
}
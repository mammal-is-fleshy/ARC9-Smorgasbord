AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"

SWEP.PrintName = "Kromusgen-18"
SWEP.TrueName = "M18"

SWEP.Class = "Anti-Tank Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = [[[Kingdom of] Sweden]],  -- me spreading misinfomation
    ["Caliber"] = "57×303mmR",
}

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "Medal of Honor: Airborne"
}	

SWEP.Description = [[Finnish people are just Swedes but more sane]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_m18.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_m18.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-7, 2, -7),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageType = DMG_BLAST + DMG_BULLET + DMG_AIRBOAT
SWEP.DamageMax = 800 -- Damage done at point blank range
SWEP.DamageMin = 300 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 300 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 8 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.AlwaysPhysBullet = true
SWEP.PhysBulletMuzzleVelocity = 2225 * 8.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 4 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
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
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.3 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.15
SWEP.RecoilRandomSide = 0.75

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true

SWEP.VisualRecoilUp = 0.01 -- Vertical tilt for visual recoil.
SWEP.VisualRecoilSide = 0.01 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 0.2 -- Roll tilt for visual recoil.

SWEP.VisualRecoilCenter = Vector(0, 4, 0) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilPunch = 0.5 -- How far back visual recoil moves the gun.

SWEP.VisualRecoilMult = 2

SWEP.VisualRecoilHipFire = true

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
    Pos = Vector(-2.05, 0, 0.27),
    Ang = Angle(0,0,5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

SWEP.Crosshair = true

SWEP.SprintAng = Angle(30, -15, -10)
SWEP.SprintPos = Vector(3, 4, -0.5)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2.5, 3, -2.25)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(10, 32, 3)
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
SWEP.AnimReload = false
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_4"
SWEP.MuzzleEffectQCA = 1
SWEP.CaseEffectQCA = nil

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.UBGLIntegralReload = true -- The UBGL uses reload animations that are baked into the gun.
SWEP.DoFireAnimationUBGL = true
SWEP.NoShellEjectUBGL = true
SWEP.MuzzleEffectQCAUBGL = 1

-------------------------- SOUNDS

SWEP.ShootSound = "gekolt_dod/1887_fire01.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"


SWEP.BulletBones = {
    [1] = "W_Mag_Rocket",
}


SWEP.DefaultBodygroups = "00000000000000000000"

SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
    },
    ["enter_ubgl"] = {
        Source = "idle",
        EventTable = { {s =  "arc9/firemode.wav" ,   t = 0 / 40}, },			
    },  
	["exit_ubgl"] = {
        Source = "idle",
        EventTable = { {s =  "arc9/firemode.wav" ,   t = 0 / 40}, },					
    },
	
    ["fire_xm"] = {
        Source = {"fire_xm"},
    },
    ["fire_iron_xm"] = {
        Source = {"fire_iron_xm"},
    },	
    ["fire_iron"] = {
        Source = {"fire"},
    },	
    ["fire_ubgl"] = {
        Source = {"fire"},
    },	
    ["fire_iron_ubgl"] = {
        Source = {"fire"},
    },	
	["reload_ubgl"] = {
        Source = "dry",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/p90_clipout.wav" ,   t = 13 / 40},
            {s =  "gekolt_css/ump45_clipout.wav" ,   t = 35 / 40},
            {s =  "gekolt_css/sg552_clipin.wav" ,    t = 75 / 40},			
        },			
    },  	
    ["reload"] = {
        Source = "dry",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/p90_clipout.wav" ,   t = 13 / 40},
            {s =  "gekolt_css/ump45_clipout.wav" ,   t = 35 / 40},
            {s =  "gekolt_css/sg552_clipin.wav" ,    t = 75 / 40},			
        },				
    }, 
    ["reload_empty"] = {
        Source = "dry",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },				
		},	
        EventTable = {		
            {s =  "gekolt_css/p90_clipout.wav" ,   t = 13 / 40},
            {s =  "gekolt_css/ump45_clipout.wav" ,   t = 35 / 40},
            {s =  "gekolt_css/sg552_clipin.wav" ,    t = 75 / 40},				
        },			
    },	
    ["reload_rpg"] = {
        Source = "dry_rpg",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/sg552_clipin.wav" ,    t = 30 / 40},		
            {s =  "gekolt_css/g3sg1_clipin.wav" ,    t = 60 / 40},				
        },				
    }, 
    ["reload_empty_rpg"] = {
        Source = "dry_rpg",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },				
		},	
        EventTable = {		
            {s =  "gekolt_css/sg552_clipin.wav" ,    t = 30 / 40},		
            {s =  "gekolt_css/g3sg1_clipin.wav" ,    t = 60 / 40},				
        },			
    },	
    ["reload_xm"] = {
        Source = "wet_xm",
		FireASAP = true,
		MinProgress = 0.83,
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
        EventTable = {		
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 15 / 40},
            {s =  "gekolt_css/g3sg1_clipin.wav" ,    t = 60 / 40},			
        },				
    }, 
    ["reload_empty_xm"] = {
        Source = "dry_xm",
		FireASAP = true,
		MinProgress = 0.9,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },				
		},	
        EventTable = {		
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 15 / 40},
            {s =  "gekolt_css/g3sg1_clipin.wav" ,    t = 60 / 40},		
            {s =  "gekolt_css/g3sg1_slide.wav" ,    t = 85 / 40},				
        },			
    },	
--------------------------------------------------------	
    ["draw"] = {
        Source = "draw",
        EventTable = {		
            {s =  "gekolt_css_foley/draw_rif2.wav" ,   t = 0 / 40},		
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
	["kit_xm70"] = { Bodygroups = { {3, 1}, {4, 3}, {5, 1}, {6, 2} },},
	["kit_rpg"] = { Bodygroups = { {0, 1}, {4, 2} },},	
	["kit_rpg2"] = { Bodygroups = { {0, 1}, {4, 1} },},
	["rail_def"] = { Bodygroups = { {1, 2}, {2, 1} },},
}

SWEP.Attachments = {
    {
        PrintName = "Kit",
        DefaultName = "Standard Kit",

        Category = "moah_m18_kit", 
        Bone = "W_Main",
        Pos = Vector(0, 2, 2),
        Ang = Angle(90, 0, -90),		
    },	

    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"rail_def"}, 

        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
        Category = {"optic_css"}, 
        Bone = "W_Main",
        Pos = Vector(2.2, -2.25, 5.5),
        Ang = Angle(90, 0, -90),			
    },
}
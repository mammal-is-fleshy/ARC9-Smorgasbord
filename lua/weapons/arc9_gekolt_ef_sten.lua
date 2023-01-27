AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"

SWEP.PrintName = "NAME NAME NAME" 
SWEP.TrueName = "STEN"

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "United Kingdom",
    ["Caliber"] = "9×19mm Parabellum",
}

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "Enemy Front"
}

SWEP.Description = [[lmao get a real carbine]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_sten.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_sten.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4, 5, -5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-14, 2, -6),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 34 -- Damage done at point blank range
SWEP.DamageMin = 19 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 700 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.25,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.95,
    [HITGROUP_RIGHTARM] = 0.95,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1280 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
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
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.85 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.5 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.25
SWEP.RecoilKickDamping = 60

-------------------------- SPREAD

SWEP.Spread = 0.0025

SWEP.SpreadAddRecoil = 0.0025 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 7.5 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 1.5 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2

SWEP.FreeAimRadiusSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.975
SWEP.SpeedMultSights = 0.785
SWEP.SpeedMultShooting = 0.9
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 0.85
SWEP.SpeedMultBlindFire = 0.9

-------------------------- BLIND FIRE

SWEP.CanBlindFire = true -- This weapon is capable of blind firing.
SWEP.BlindFireLHIK = true -- Hide the left hand while blind firing forward.

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
    Pos = Vector(-2.215, 2, 3),
    Ang = Angle(0, 0, 10),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(-10, 0, -25),
    },	
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
}

SWEP.Crosshair = true

SWEP.SprintAng = Angle(10, -15, -10)
SWEP.SprintPos = Vector(0, 4, -0.5)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -5, -3),
    Ang = Angle(5, 20, 15)
}

SWEP.MovingPos = Vector(0, 4.5, -0.25)
SWEP.MovingAng = Angle(0, -2, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, 4.5, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.CustomizeAng = Angle(90, -5, 0)
SWEP.CustomizePos = Vector(12, 32, 2)

SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(10, -2.215, -5.23)

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "revolver"
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

SWEP.ShootSound = "gekolt_dod/mp40_shoot-old1.ogg"
SWEP.ShootSoundSilenced = "gekolt_css/9mm_sd.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.EjectDelay = 0

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "000000000"

SWEP.BulletBones = {
    [1] = "W_Bullet1",
    [2] = "W_Bullet2",
    [3] = "W_Bullet3",
    [4] = "W_Bullet4",
    [5] = "W_Bullet5",
    [6] = "W_Bullet6",
    [7] = "W_Bullet7",
    [8] = "W_Bullet8",
}

SWEP.AttachmentElements = {
    --[[ ["f_mk1"] = {
        Bodygroups = {{0, 2},{2, 1},{3, 3}}, 
	}, ]]
    ["f_mk4"] = {
        Bodygroups = {{1, 1},{2, 2},{3, 4}},			
	},
    ["f_mk5"] = {
        Bodygroups = {{1, 2},{4, 2},{5, 1}},			
	},
    ["f_owen"] = {
        Bodygroups = {{0, 4},{1, 3},{2, 3},{3, 5},{6, 1}},			
	},
    ["f_sterling"] = {
        Bodygroups = {{0, 5},{1, 5},{2, 5},{3, 7},{5, 2}},			
	},
    ["f_3008"] = {
        Bodygroups = {{1, 4}},		
        AttPosMods = { [6] = { Pos = Vector(0, 0, 11.2), }}	
	},

	["s_mk2s"] = {
        Bodygroups = {{3, 2}},		
	},	
	["s_mk2"] = {
        Bodygroups = {{3, 1}},		
	},
	["s_wood"] = {
        Bodygroups = {{3, 6}},		
	},
	["s_mk1"] = {
        Bodygroups = {{3, 3}},		
	},

	["hg_wood"] = {
        Bodygroups = {{2, 4}},		
	},
	["hg_mk1"] = {
        Bodygroups = {{2, 1}},		
	},
	["hg_no"] = {
        Bodygroups = {{2, 5}},		
	},

	["b_mk1"] = {
        Bodygroups = {{0, 2}},		
	},
	["b_mk2"] = {
        Bodygroups = {{0, 3}},		
	},
	["b_mk3"] = {
        Bodygroups = {{0, 1}},		
	},
	
}

SWEP.Attachments = {
    {
        PrintName = "Frame",
        DefaultName = "Standard Frame",
		ExcludeElements = {"pre_frame"},

        Category = "ef_sten_frame", 
        Bone = "W_Main",
        Pos = Vector(0, 2.5, -0.75),
        Ang = Angle(90, 0, -90),
		Icon_Offset = Vector(-5, 0, 2.5)
    },  
	{
        PrintName = "Handguard",
        DefaultName = "Standard Handguard",
		ExcludeElements = {"pre_hg"},	

        Category = "ef_sten_hg", 
        Bone = "W_Main",
        Pos = Vector(0, 1.5, -0.75),
        Ang = Angle(90, 0, -90),	
    },	
	{
        PrintName = "Stock",
        DefaultName = "Standard Stock",
		ExcludeElements = {"pre_stock"},

        Category = "ef_sten_stock", 
        Bone = "W_Main",
        Pos = Vector(0, 2.5, -9),
        Ang = Angle(90, 0, -90),
    },
	{
        PrintName = "Barrel",
        DefaultName = "Standard Barrel",
		ExcludeElements = {"pre_barrel"},

        Category = "ef_sten_barrel", 
        Bone = "W_Main",
        Pos = Vector(0, 0, 7),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"has_optic"},		
	
        KeepBaseIrons = false,
		ExcludeElements = {"pre_optic"},
        Category = {"optic_css_s"}, 
        Bone = "W_Main",
        Pos = Vector(0, -1.4, -3),
        Ang = Angle(90, 0, -90),
        Scale = Vector(1.3, 1.3, 1.3)
    },	
    {
        PrintName = "Muzzle",
        DefaultName = "None",

		ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"}, 
        Bone = "W_Main",
        Pos = Vector(0, 0, 12.1),
        Ang = Angle(90, 0, -90),		
    },	
    
}

SWEP.Hook_TranslateAnimation = function(wep, anim) 

end

SWEP.Hook_ModifyBodygroups = function(wep, data)  
    local model = data.model
	if wep:HasElement("has_optic") and !wep:HasElement("f_mk5") then model:SetBodygroup(4,1) end	
    if wep:HasElement("has_optic") and wep:HasElement("f_mk5") then  model:SetBodygroup(5,0) end
    if wep:HasElement("has_optic") and wep:HasElement("f_sterling") then  model:SetBodygroup(5,0) end 
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
		MinProgress = 0.9,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 43 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 50 / 40},
        },	
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 0, },{ t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
    },	
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 43 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 50 / 40},				
            {s =  "gekolt_dod/c96_boltback.wav" ,    t = 75 / 40},	 
			{s =  "gekolt_dod/c96_boltforward.wav" ,    t = 82 / 40},	
			},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 0, },{ t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},				
    },
    
    ["reload_3008"] = {
        Source = "wet_ger",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
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
    ["reload_empty_3008"] = {
        Source = "dry_ger",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 43 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 50 / 40},				
            {s =  "gekolt_dod/c96_boltback.wav" ,    t = 75 / 40},	 
			{s =  "gekolt_dod/c96_boltforward.wav" ,    t = 82 / 40},	
			},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},				
    },
    
    ["reload_mk4"] = {
        Source = "wet_mk4",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
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
    ["reload_empty_mk4"] = {
        Source = "dry_mk4",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
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


    ["reload_sterling"] = {
        Source = "wet_sterling",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
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
    ["reload_empty_sterling"] = {
        Source = "dry_sterling",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 43 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 50 / 40},				
            {s =  "gekolt_dod/c96_boltback.wav" ,    t = 75 / 40},	 
			{s =  "gekolt_dod/c96_boltforward.wav" ,    t = 82 / 40},	
			},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.5, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},				
    },

    ["reload_mk1"] = {
        Source = "wet_mk1",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
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
    ["reload_empty_mk1"] = {
        Source = "dry_mk1",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 43 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 50 / 40},				
            {s =  "gekolt_dod/c96_boltback.wav" ,    t = 75 / 40},	 
			{s =  "gekolt_dod/c96_boltforward.wav" ,    t = 82 / 40},	
			},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.6, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 1, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},				
    },

    
    ["reload_owen"] = {
        Source = "wet_owen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 43 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 50 / 40},
        },	
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.1, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 0, rhik = 0, },{ t = 0.9, lhik = 0, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },	
		},			
    },	
    ["reload_empty_owen"] = {
        Source = "dry_owen",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
        EventTable = {
            {s =  "gekolt_dod/c96_clipout.wav" ,   t = 10 / 40},
            {s =  "gekolt_dod/c96_clipin1.wav" ,    t = 43 / 40},
            {s =  "gekolt_dod/c96_clipin2.wav" ,    t = 50 / 40},				
            {s =  "gekolt_dod/c96_boltback.wav" ,    t = 75 / 40},	 
			{s =  "gekolt_dod/c96_boltforward.wav" ,    t = 82 / 40},	
			},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.1, lhik = 0, rhik = 0, },{ t = 0.7, lhik = 0, rhik = 0, },{ t = 0.9, lhik = 0, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },	
		},		
    },

    ["reload_lmg"] = {
        Source = "wet_lmg",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
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
		MagSwapTime = 1.25
    },	
    ["reload_empty_lmg"] = {
        Source = "dry_lmg",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.9,
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
		MagSwapTime = 1.25
    },		
	
}
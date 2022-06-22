AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - CSS"

SWEP.PrintName = "CC4R"
SWEP.TrueName = "You literally have no reason to use any other weapon"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "United States of America",
    ["Caliber"] = "5.56x45mm NATO",
}

SWEP.Credits = {
	Author = "Geckololt",
	Contact = "SlogoKolt#6648",
    Assets = "Counter-Strike Source"
}

SWEP.Description = [["Extremely versatile gun."
[Excessive] customisation.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_m4a1.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_m4a1.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-7, 2, -7),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 33 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 9000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 6 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2900 * 12

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
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
SWEP.Recoil = 0.9

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.7 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.7 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1

-------------------------- SPREAD

SWEP.Spread = 0.002

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

SWEP.AimDownSightsTime = 0.31 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.31 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

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
    Pos = Vector(-3.05, 0, -0.25),
    Ang = Angle(0,0,-5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

SWEP.SprintAng = Angle(30, -15, -10)
SWEP.SprintPos = Vector(3, 0, -0.5)

SWEP.ActivePos = Vector(0, 3.5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, 1, -1.5)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(10, 32, 3)
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
SWEP.AnimReload = ACT_HL2MP_IDLE_SMG1
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_5"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "gekolt_css/ump45-1.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "00000000000000000000"

SWEP.BulletBones = {
    [1] = "W_Belt14",
    [2] = "W_Belt13",
    [3] = "W_Belt12",
    [4] = "W_Belt11",
    [5] = "W_Belt10",
    [6] = "W_Belt9",
    [7] = "W_Belt8",
    [8] = "W_Belt7",
    [9] = "W_Belt6",
    [10] = "W_Belt5",
}


SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
    },
    ["reload"] = {
        Source = "wet",
    },
    ["reload_empty"] = {
        Source = "dry_3",
    },	
    ["draw"] = {
        Source = "draw",
    },
    ["holster"] = {
        Source = "idle",
    },
    ["idle"] = {
        Source = "idle",
    },

    ["fire_bolt"] = {
        Source = {"fire_bolt"},
    },
    ["reload_bolt"] = {
        Source = "wet_sniper",
    },
    ["reload_empty_bolt"] = {
        Source = "dry_sniper",
    },	

    ["reload_lmg"] = {
        Source = "wet_120_lmg",
        MagSwapTime = 80/40,		
    },
    ["reload_empty_lmg"] = {
        Source = "dry_120_lmg",
        MagSwapTime = 75/40,		
    },	

    ["reload_empty_proto"] = {
        Source = "dry_proto",
    },	

    ["reload_empty_pdw"] = {
        Source = "dry_57",
    },	
    ["reload_pdw"] = {
        Source = "wet_57",
    },		
	
    ["reload_empty_sg"] = {
        Source = "dry_sg",
    },	
    ["reload_sg"] = {
        Source = "wet_sg",
    },		

    ["reload_empty_ak"] = {
        Source = "dry_ak",
    },	
    ["reload_ak"] = {
        Source = "wet_ak",
    },	

    ["reload_empty_smg"] = {
        Source = "dry_smg",
    },	

    ["reload_smg"] = {
        Source = "wet_smg",
    },		
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
    ["up_bolt"] = {
        Bodygroups = {
            {0, 6},{1, 2},{4, 5},{5, 4},{6, 7},
        },
	},
    ["up_lmg"] = {
        Bodygroups = {
            {0, 4},{4, 4},{5, 8}
        },
	},
    ["up_proto"] = {
        Bodygroups = {
            {0, 1},{4, 2},{5, 8}
        },
	},
    ["up_ak"] = {
        Bodygroups = {
            {1, 1},{3, 1},{4, 5},{5, 1}
        },
	},	
    ["up_9mm"] = {
        Bodygroups = {
            {4, 1}
        },
	},	
    ["up_sd"] = {
        Bodygroups = {
            {0, 2},{5, 3},{6, 7}
        },
	},		
    ["up_pdw"] = {
        Bodygroups = {
            {0, 3},{4, 5},{5, 2},{6, 7}
        },
	},	
    ["up_sg"] = {
        Bodygroups = {
            {0, 5},{1, 2},{4, 5},{5, 8},{6, 7}
        },
	},		
	
    ["guard_lmg"] = {
        Bodygroups = { {6, 5} },
	},	
    ["guard_a1"] = {
        Bodygroups = { {6, 2} },
	},	
    ["guard_a2"] = {
        Bodygroups = { {6, 3} },
	},	
    ["guard_10"] = {
        Bodygroups = { {6, 1} },
	},	
    ["guard_adar"] = {
        Bodygroups = { {6, 4} },
	},		
	
    ["s_a1"] = {
        Bodygroups = { {2, 1} },
	},	
    ["s_bolt"] = {
        Bodygroups = { {2, 6} },
	},	
    ["s_wire"] = {
        Bodygroups = { {2, 3} },
	},		
    ["s_slide"] = {
        Bodygroups = { {2, 2} },
	},
    ["s_pdw"] = {
        Bodygroups = { {2, 4} },
	},	
    ["s_no"] = {
        Bodygroups = { {2, 5} },
	},	
}

SWEP.Attachments = {
    {
        PrintName = "Receiver",
        DefaultName = "Standard Receiver",

        Category = "css_m4_up", 
        Bone = "W_Main",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),		
    },	

    {
        PrintName = "Handguard",
        DefaultName = "Standard Handguard",

		ExcludeElements = {"noguard"},
        Category = "css_m4_handguard", 
        Bone = "W_Main",
        Pos = Vector(0, -1, 10),
        Ang = Angle(0, 0, 0),		
    },		

    {
        PrintName = "Stock",
        DefaultName = "Standard Stock",

        Category = "css_m4_stock", 
        Bone = "W_Main",
        Pos = Vector(0, -0.75, -3),
        Ang = Angle(0, 0, 0),		
    },			
}
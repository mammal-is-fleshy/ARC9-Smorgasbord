AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - CSS"

SWEP.PrintName = "Gun"
SWEP.TrueName = "M79"

SWEP.Class = "Grenade Launcher"
SWEP.Trivia = {
    ["Country of Origin"] = [[United States of America]],
    ["Caliber"] = "40×46mm grenade",
}

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "Firearm: Source 2"
}

SWEP.Description = [[It goes floop and grenade goes out.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_m79.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_m79.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(2, 8, -5),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.2
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 100 -- Damage done at point blank range
SWEP.DamageMin = 100 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 10000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 0 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactDecal = "Scorch"

SWEP.SuppressSmokeTrail = false

SWEP.ExplosionDamage = 95
SWEP.ExplosionRadius = 256
SWEP.ExplosionEffect = "Explosion"

SWEP.PhysBulletModel = "models/Items/AR2_Grenade.mdl"

SWEP.RicochetChance = 0

SWEP.HookC_DrawBullet = function(swep, bullet)
    if swep:GetValue("SuppressSmokeTrail") then return end
    if bullet.Imaginary then return end

    local emitter = ParticleEmitter(bullet.Pos)
    if !IsValid(emitter) then return end
    local smoke = emitter:Add("particle/particle_smokegrenade", bullet.Pos)
    smoke:SetVelocity(VectorRand() * 25)
    smoke:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)))
    smoke:SetDieTime(math.Rand(0.25, 0.5))
    smoke:SetStartAlpha(255)
    smoke:SetEndAlpha(0)
    smoke:SetStartSize(0)
    smoke:SetEndSize(50)
    smoke:SetRoll(math.Rand(-180, 180))
    smoke:SetRollDelta(math.Rand(-0.2, 0.2))
    smoke:SetColor(20, 20, 20)
    smoke:SetAirResistance(5)
    smoke:SetPos(bullet.Pos)
    smoke:SetLighting(false)
    emitter:Finish()
end

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.85,
    [HITGROUP_RIGHTARM] = 0.85,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.AlwaysPhysBullet = true
SWEP.PhysBulletMuzzleVelocity = 5000
SWEP.PhysBulletDrag = 3
SWEP.FancyBullets = true

-------------------------- MAGAZINE

SWEP.Ammo = "smg1_grenade" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
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
SWEP.RecoilUp = 1.2 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.9 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.25
SWEP.RecoilRandomSide = 0.125

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 

SWEP.RecoilKick = 1.5

-------------------------- SPREAD

SWEP.Spread = 0.003

SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0.75 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2

SWEP.FreeAimRadiusSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

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
SWEP.TracerColor = Color(255, 255, 255) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.
SWEP.TracerSize = 0

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.94, -1, 0.971),
    Ang = Angle(0, 0, -5),
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

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellCorrectPos = Vector(0, 0, 0)
SWEP.ShellCorrectAng = Angle(0, 0, 90)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true

-------------------------- SOUNDS

SWEP.ShootSound = "gekolt_fas2/m79_fire1.wav"
SWEP.ShootSoundSilenced = "gekolt_css/tmp-1.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.EjectDelay = 0

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {
    ["f_mts"] = {
        Bodygroups = {{1, 2},{2, 2},{3, 2},{4, 1},{6, 2},{7, 2}},		
	},
    ["f_mtss"] = {
        Bodygroups = {{1, 3},{2, 1},{3, 2},{4, 1},{6, 2},{7, 2},},				
	},
    ["f_pirate"] = {
        Bodygroups = {{1, 1},{2, 1},{3, 2},{6, 2},{7, 2},},				
	},
	["f_alofs"] = {
        Bodygroups = {{3, 1},{5, 1},{6, 1},{7, 1}},				
	},	

    ["garand_mini"] = {
        Bodygroups = {{1, 3}},			
		AttPosMods = { [2] = { Pos = Vector(0,  -1.1, 5), }, [3] = { Pos = Vector(0, 0, 19.15), } }			
	},	
}

SWEP.Attachments = {
    {
        PrintName = "Frame",
        DefaultName = "Standard Frame",

        Category = "fas2_m79_frame", 
        Bone = "W_Main",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),		
    },
    {
        PrintName = "Ammo",
        DefaultName = "40mm",

        Category = "fas2_m79_ammo", 
        Bone = "W_Main",
        Pos = Vector(0, 0, 2),
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
		Time = 0
    },	
    ["fire"] = {
        Source = "fire",	
        EjectAt = 1/40,		
    },	
    ["fire_iron"] = {
        Source = "fire",
        EjectAt = 1/40,			
    },			
    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 3 / 40},
            {s =  "gekolt_fas2/m79_remove.wav" ,   t = 11 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 49 / 40}, 
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 50/ 40},
			{s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 58 / 40},			
			{s =  "gekolt_fas2/m79_close.wav" ,    t = 83 / 40},
        },
		FireASAP = true,
        MagSwapTime = 40/40,		
		MinProgress = 0.85,		
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },	
		},			
    },
	
    ["cycle"] = {
        Source = "pump",
        EjectAt = 18/40,
        MinProgress = 40 / 40,
        EventTable = {
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 13 / 40},		
			{s =  "gekolt_fas2/m79_close.wav" ,    t = 27 / 40},
        },
    },	

    ["reload_pirate"] = {
        Source = "dry_pirate",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		FireASAP = true,
		MinProgress = 0.83,
        EventTable = {	
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 12 / 40},
            {s =  "gekolt_fas2/m79_remove.wav" ,   t = 30 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 65/ 40}, 
			{s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 70 / 40},					
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 64/ 40},		
			{s =  "gekolt_fas2/m79_close.wav" ,    t = 86 / 40},			
        },	
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },	
		},			
    },	
}
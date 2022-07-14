AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC-9 - CSS"

SWEP.PrintName = "Claymore on a Stick"

SWEP.Class = "Melee"

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "Firearms: Source"
}

SWEP.Description = [[The japanese has attack once again]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_bamboo.mdl"
SWEP.WorldModel = "models/weapons/w_eq_knife_ct.mdl"

SWEP.Slot = 0

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_bamboo.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10, 15, -10),
    Ang = Angle(0, 0, 180),
    Scale = 1
}

SWEP.DefaultBodygroups = "00"

-------------------------- FIREMODES

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Throw"
        -- add other attachment modifiers
    },
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

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1

-------------------------- ENTITY LAUNCHING

SWEP.ShootEnt = "gekolt_css_m4_claymore_bamboo" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 25000
SWEP.ShootEntityData = {} -- Extra data that can be given to a projectile. Sets SENT.WeaponDataLink with this table.

-------------------------- HANDLING

SWEP.FreeAimRadius = 0

SWEP.SprintToFireTime = 0.15 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

SWEP.ShootWhileSprint = true

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 70
SWEP.BashLungeRange = 0
SWEP.BashRange = 64
SWEP.PreBashTime = 0.275
SWEP.PostBashTime = 0.3

-------------------------- MAGAZINE

SWEP.Ammo = "slam" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.SprintAng = Angle(0, -20, 0)
SWEP.SprintPos = Vector(0, -2, 0)

SWEP.ViewModelFOVBase = 90
SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16, 32, 4)
SWEP.CustomizeSnapshotFOV = 110

SWEP.CrouchPos = Vector(0, -3, -1)
SWEP.CrouchAng = Angle(0, 0, 0)
-------------------------- HoldTypes

SWEP.HoldType = "knife"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_MELEE_ATTACK2
SWEP.AnimReload = ACT_IDLE_MELEE
SWEP.AnimDraw = false

-------------------------- SOUNDS
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.275 -- Time until weapon fires.

// theres no grenade base yet
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },	
    ["draw"] = {
        Source = "draw",
        EventTable = {		
            {s =  "gekolt_css/clay/c4_draw.wav" ,   t = 1 / 40},
            {s =  "gekolt_css/clay/pinpull.wav" ,   t = 15 / 40},			
        },			
    },
    ["draw_empty"] = {
        Source = "idle_empty",	
    },	
    ["reload"] = {
        Source = "draw",
        EventTable = {		
            {s =  "gekolt_css/clay/c4_draw.wav" ,   t = 1 / 40},
            {s =  "gekolt_css/clay/pinpull.wav" ,   t = 15 / 40},			
        },			
    },	
    ["trigger"] = {
        Source = {"prep"},
    }, 
    ["trigger_empty"] = {
        Source = {"idle_empty"},
    }, 	
	["fire"] = {
        Source = {"throw"},
        EventTable = {		
            {s =  "gekolt_css/clay/grenade_throw.wav" ,   t = 1 / 40},		
        },			
    },
    ["holster"] = {
        Source = "idle",
    },	
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}
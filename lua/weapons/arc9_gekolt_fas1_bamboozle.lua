AddCSLuaFile()

SWEP.Base = "arc9_base_nade"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"

SWEP.PrintName = "Claymore on a Stick"

SWEP.Class = "Explosive"
SWEP.Trivia = {
    ["Country of Origin"] = "Scotland", -- trolleg
    ["Caliber"] = "3.2mm steel balls",
}

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "Firearms: Source"
}

SWEP.Description = [[THE JAPANESES ARE ATTACKING AGAIN.

Crude anti-tank-personnel-whateverinfrontofyou device from the peak of the highlands.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_bamboo.mdl"
SWEP.WorldModel = "models/weapons/w_eq_knife_ct.mdl"

SWEP.Slot = 0

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_bamboo.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10, 10, -20),
    Ang = Angle(0, 0, 180),
    Scale = 1
}

SWEP.DefaultBodygroups = "00"
SWEP.BottomlessClip = true
SWEP.ClipSize = 3
SWEP.ChamberSize = 0
SWEP.SupplyLimit = 1
SWEP.Crosshair = true

-------------------------- ENTITY LAUNCHING

SWEP.ShootEnt = "gekolt_css_m4_claymore_bamboo" -- Set to an entity to launch it out of this weapon.

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowSpeed = 1

SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 2500 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 5000 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 2500 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 0.5 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = false -- Grenade tumbles when thrown.

SWEP.PhysBulletMuzzleVelocity = 1000 * 40

-------------------------- FIREMODES

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Throw"
        -- add other attachment modifiers
    },
}
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

SWEP.BlindFireLeft = false

SWEP.BlindFireOffset = Vector(0, 0, 32) -- The amount by which to offset the blind fire muzzle.
SWEP.BlindFirePos = Vector(-2, -5, 5)
SWEP.BlindFireAng = Angle(0, 10, -20)


// theres no grenade base yet  --- before 22/11/08
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_primed"] = {
        Source = "idle_prep"
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
		FireASAP = true,
		MinProgress = 0.35,	
        EventTable = {		
            {s =  "gekolt_css/clay/c4_draw.wav" ,   t = 1 / 40},
            {s =  "gekolt_css/clay/pinpull.wav" ,   t = 15 / 40},			
        },			
    },
    ["throw"] = {
        Source = "throw",
        EventTable = {		
            {s =  "gekolt_css/clay/grenade_throw.wav" ,   t = 1 / 40},		
        },			
    },
    ["draw_empty"] = {
        Source = "idle_empty",	
    },
    ["pullpin"] = {
        Source = {"prep"},
		FireASAP = true,
		MinProgress = 0.4,			
    }, 	
    ["holster"] = {
        Source = "idle",
    },
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}
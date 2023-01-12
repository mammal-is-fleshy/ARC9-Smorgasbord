AddCSLuaFile()

SWEP.Base = "arc9_base_nade"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - CSS"

SWEP.PrintName = "Grenade Bundle"

SWEP.Class = "Explosive"
SWEP.Trivia = {
}

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "Counter Strike: Source"
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Throwable"
        -- add other attachment modifiers
    },
}

SWEP.Description = [[Six bundled grenade is better than one lonely grenade.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_grenade_bundle.mdl"
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
SWEP.BottomlessClip = false
SWEP.ClipSize = 3
SWEP.ChamberSize = 0
SWEP.SupplyLimit = 1
SWEP.Crosshair = true

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "gekolt_css_grenade_bundle"
SWEP.Ammo = "grenade"

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = 5 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 1000 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 2000 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 250 -- Force that the grenade will be thrown with when right clicked.
SWEP.ShootEntInheritPlayerVelocity = true

SWEP.ThrowChargeTime = 1 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = true -- Grenade tumbles when thrown.
SWEP.Disposable = true 

-------------------------- HANDLING
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.
-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 90
SWEP.ActivePos = Vector(0, -1, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(3, -2, -5)
SWEP.SprintAng = Angle(30, 0, -20)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(0, -1, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 20, 3)

SWEP.CustomizeSnapshotPos = Vector(0, 20, 0)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

SWEP.ShootPosOffset = Vector(1, 1, 0)

-------------------------- HoldTypes

SWEP.HoldType = "slam"
SWEP.HoldTypeSprint = "slam"
SWEP.HoldTypeHolstered = "slam"
SWEP.HoldTypeSights = "slam"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false


SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_primed"] = {
        Source = "prep_idle"
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {		
            {s =  "gekolt_css/clay/c4_draw.wav" ,   t = 1 / 40},		
        },		
    },
    ["holster"] = {
        Source = "idle",
    },
    ["pullpin"] = {
        Source = "prep",
        MinProgress = 0.666,
        FireASAP = true,
        EventTable = {
            {s =  "gekolt_css/clay/pinpull.wav" ,   t = 15 / 40},	
        },
    },
    ["throw"] = {
        Source = "throw",
        EventTable = {
            {s =  "gekolt_css/clay/grenade_throw.wav" ,   t = 1 / 40},		
        },
        MinProgress = 0.4
    },
}
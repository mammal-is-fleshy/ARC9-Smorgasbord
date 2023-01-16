AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"

SWEP.PrintName = "Hammer and Sickle"

SWEP.Class = "Melee"
SWEP.Trivia = {
    ["Country of Origin"] = "Insert Generic Union/Commune Here",
    ["Caliber"] = "Wood and Steel",
}

SWEP.Credits = {
    Author = "Geckololt",
    Contact = "SlogoKolt#6648",
    Assets = "CoD: Black Ops"
}

SWEP.Description = [[Fuck communism, this mod was made by syndicalism gang.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_hns.mdl"
SWEP.WorldModel = "models/weapons/w_eq_knife_ct.mdl"

SWEP.Slot = 0

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_hns.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10, 15, -10),
    Ang = Angle(0, 0, 180),
    Scale = 1
}

SWEP.DefaultBodygroups = "00"

SWEP.CanBlindFire = false
-------------------------- MAGAZINE

SWEP.Ammo = "" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = -1 -- Self-explanatory.
SWEP.SupplyLimit = 0 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.

-------------------------- FIREMODES

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "MELEE"
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
SWEP.PrimaryBash = true

SWEP.BashDamage = 70
SWEP.BashLungeRange = 0
SWEP.BashRange = 64
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.25

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

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["holster"] = {
        Source = "idle",
    },

    ["block"] = {
        Source = "block",
    },
    ["bash"] = {
        Source = {"slash", "slash2", "slash3", "bash1", "bash2", "bash3"}
    },
	
--[[    ["impact"] = {
     Source = {"slash_hit", "slash2_hit", "slash3_hit", "bash1", "bash2", "bash3"}
    },	]]

}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}
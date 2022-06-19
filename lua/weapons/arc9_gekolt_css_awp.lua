SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC-9"
SWEP.AdminOnly = false
SWEP.PrintName = "AMP-38"
SWEP.TrueName = "long gun with one hit kill\"citation needed\" damage"

SWEP.Class = "Sniper Rifle"

SWEP.Trivia = {
    Calibre = ".338 Lapua",
}


SWEP.Credits = {
	Author = "Geckololt",
	Contact = "SlogoKolt#6648",
	}

SWEP.Description = [[Long range gun used in any range but long.
[Limited] customisation.]]
-- Multi-line strings are possible with the double square brackets.]]

SWEP.UseHands = true -- Same as weapon_base

SWEP.ViewModel = "models/weapons/geckololt_css/c_awp.mdl"
SWEP.WorldModel = "models/weapons/geckololt_css/c_awp.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-7.5, 4, -7.5),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}


-------------------------- SAVING

SWEP.SaveBase = nil -- set to a weapon class to make this weapon share saves with it.

-------------------------- DEFAULT ELEMENTS

-- Using MirrorVMWM will use viewmodel parameters for the world model.

SWEP.DefaultBodygroups = "00000"

SWEP.DefaultWMBodygroups = ""

SWEP.DefaultSkin = 0

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 60 -- Damage done at point blank range
SWEP.DamageMin = 160 -- Damage done at maximum range

SWEP.DamageRand = 0.3 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 60 --#64 is the player height
SWEP.RangeMax = 1200 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Num = 1 -- Number of bullets to shoot
-- Bear in mind: Damage is divided by Num

SWEP.Penetration = 12 -- Units of wood that can be penetrated by this gun.

SWEP.RicochetAngleMax = 45 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.
SWEP.RicochetChance = 0.5 -- If the angle is right, what is the chance that a ricochet can occur?

SWEP.DamageType = DMG_BULLET -- The damage type of the gun.
-- DMG_BLAST will create explosive effects and create AOE damage.
-- DMG_BURN will ignite the target.
-- DMG_AIRBOAT will damage Combine Hunter-Choppers.

SWEP.ArmorPiercing = 1 -- Between 0-1. A proportion of damage that is done as direct damage, ignoring protection.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.75,
    [HITGROUP_RIGHTARM] = 0.75,
}

-------------------------- ENTITY LAUNCHING

SWEP.ShootEntity = nil -- Set to an entity to launch it out of this weapon.
SWEP.EntityMuzzleVelocity = 10000
SWEP.ShootEntityData = {} -- Extra data that can be given to a projectile. Sets SENT.WeaponDataLink with this table.

-------------------------- PHYS BULLET BALLISTICS

-- These settings override the player's physical bullet options.
SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false

SWEP.PhysBulletMuzzleVelocity = 150000 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU ~= 1 inch.
SWEP.PhysBulletDrag = 1 -- Drag multiplier
SWEP.PhysBulletGravity = 1 -- Gravity multiplier
SWEP.PhysBulletDontInheritPlayerVelocity = false -- Set to true to disable "Browning Effect"

SWEP.FancyBullets = false -- set to true to allow for multicolor mags and crap
-- Each bullet runs HookP_ModifyBullet, within which modifications can be made

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerFinalMag = 0 -- The last X bullets in a magazine are all tracers
SWEP.TracerEffect = "ARC9_tracer" -- The effect to use for hitscan tracers
SWEP.TracerColor = Color(255, 255, 255) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.
SWEP.TracerSize = 1

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- for now

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 6 -- Self-explanatory.
SWEP.SupplyLimit = 3
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ForceDefaultClip = nil -- Set to force a default amount of ammo this gun can have. Otherwise, this is controlled by console variables.

SWEP.AmmoPerShot = 1 -- Ammo to use per shot
SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo
SWEP.BottomlessClip = false -- Weapon never has to reload

SWEP.ShotgunReload = false -- Weapon reloads like shotgun. Uses insert_1, insert_2, etc animations instead.
SWEP.HybridReload = false -- Enable on top of Shotgun Reload. If the weapon is completely empty, use the normal reload animation.
-- Use SWEP.Hook_TranslateAnimation in order to do custom animation stuff.

SWEP.ManualActionChamber = 1 -- How many shots we go between needing to cycle again.
SWEP.ManualAction = false -- Pump/bolt action. Play the "cycle" animation after firing, when the trigger is released.
SWEP.ManualActionNoLastCycle = true -- Do not cycle on the last shot.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.CanFireUnderwater = false -- This weapon can shoot while underwater.

SWEP.Disposable = false -- When all ammo is expended, this gun will remove itself from the inventory.

SWEP.AutoReload = false -- When the gun is drawn, it will automatically reload.

SWEP.TriggerDelay = 0 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.

SWEP.DropMagazineModel = nil -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {} -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.25

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
        -- add other attachment modifiers
    }
}

SWEP.AutoBurst = false -- Hold fire to keep firing bursts
SWEP.PostBurstDelay = 0
SWEP.RunAwayBurst = false -- Burst will keep firing until all of the burst has been expended.

SWEP.Akimbo = false

-- Use this hook to modify features of a firemode.
-- SWEP.HookP_ModifyFiremode = function(self, firemode) return firemode end

-------------------------- RECOIL

SWEP.RecoilSeed = nil -- Leave blank to use weapon class name as recoil seed.
-- Should be a number.
SWEP.RecoilPatternDrift = 15 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = nil -- Use to set specific values for predictible recoil. If it runs out, it'll just use Recoil Seed.
-- SWEP.RecoilLookupTable = {
--     {
--          dir = 15
--     }
-- }
SWEP.RecoilLookupTableOverrun = nil -- Repeatedly take values from this table if we run out in the main table

-- General recoil multiplier
SWEP.Recoil = 1.2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1.25 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.85 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true

SWEP.VisualRecoilUp = 0.15 -- Vertical tilt for visual recoil.
SWEP.VisualRecoilSide = 0.1 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 1 -- Roll tilt for visual recoil.

SWEP.VisualRecoilCenter = Vector(0, 2, 2) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilPunch = 1 -- How far back visual recoil moves the gun.

SWEP.VisualRecoilMultSights = 0.25 -- Visual recoil multiplier while in sights.

SWEP.RecoilKick = 0.5 -- Camera recoil

-------------------------- SPREAD

SWEP.Spread = 0

SWEP.UsePelletSpread = false -- Multiple bullets fired at once clump up, like for a shotgun. Spread affects which direction they get fired, not their spread relative to one another.
SWEP.PelletSpread = 0.2

SWEP.PelletSpreadPattern = {} -- Use to give shotguns custom spread patterns. If Pellet Spread is off, each pellet will be subject to spread. Otherwise, the entire pattern shifts, and each pellet is randomly offset by pellet spread amount.

-- SWEP.PelletSpreadPattern = {
--     {
--         x = -1,
--         y = -1
--     },
--     {
--         x = -1,
--         y = 1
--     }
-- }

SWEP.PelletSpreadPatternOverrun = nil
-- {Angle(1, 1, 0), Angle(1, 0, 0) ..}
-- list of how far each pellet should veer
-- if only one pellet then it'll use the first index
-- if two then the first two
-- in case of overrun pellets will start looping, preferably with the second one, so use that for the loopables

SWEP.SpreadAddMove = 0 -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = 0 -- Applied when not sighted.
SWEP.SpreadAddSighted = 0 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = 0 -- Applied when blind firing.
SWEP.SpreadAddCrouch = 0 -- Applied when crouching.

SWEP.SpreadAddRecoil = 0 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0.1 -- How much the gun sways.

SWEP.FreeAimRadiusMultSights = 0.25

SWEP.SwayMultSights = 0.5

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

SWEP.ReloadTime = 1
SWEP.DeployTime = 1
SWEP.CycleTime = 1
SWEP.FixTime = 1
SWEP.OverheatTime = 1

SWEP.ShootWhileSprint = false

SWEP.Speed = 1

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.9
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 64
SWEP.PreBashTime = 0.5
SWEP.PostBashTime = 0.5

-------------------------- MALFUNCTIONS

SWEP.Overheat = false -- Weapon will jam when it overheats, playing the "overheat" animation.
SWEP.HeatCapacity = 50 -- rounds that can be fired non-stop before the gun jams, playing the "fix" animation
SWEP.HeatDissipation = 10 -- rounds' worth of heat lost per second
SWEP.HeatLockout = true -- overheating means you cannot fire until heat has been fully depleted
SWEP.HeatDelayTime = 0.5 -- Amount of time that passes before heat begins to dissipate.
SWEP.HeatFix = false -- when the "overheat" animation is played, all heat is restored.

-- If Malfunction is enabled, the gun has a random chance to be jammed
-- after the gun is jammed, it won't fire unless reload is pressed, which plays the "fix" animation
-- if no "fix" or "cycle" animations exist, the weapon will reload instead
-- When the trigger is pressed, the gun will try to play the "jamfire" animation. Otherwise, it will try "dryfire". Otherwise, it will do nothing.
SWEP.Malfunction = false
SWEP.MalfunctionJam = true -- After a malfunction happens, the gun will dryfire until reload is pressed. If unset, instead plays animation right after.
SWEP.MalfunctionTakeRound = true -- When malfunctioning, a bullet is consumed.
SWEP.MalfunctionWait = 0.25 -- The amount of time to wait before playing malfunction animation (or can reload)
SWEP.MalfunctionMeanShotsToFail = 1000 -- The mean number of shots between malfunctions, will be autocalculated if nil

-------------------------- HOOKS

-- SWEP.Hook_Draw = function(self, vm) end # Called when the weapon is drawn. Call functions here to modify the viewmodel, such as drawing RT screens onto the gun.
-- SWEP.Hook_HUDPaint = function(self) end
-- SWEP.Hook_RTScopeReticle = function(self, {rtsize = num, rtmat = Material})
-- SWEP.Hook_ModifyRecoilDir = function(self, dir) return dir end # direction of recoil in degrees, 0 = up
-- SWEP.HookP_ModifyFiremode = function(self, firemode) return firemode end
-- SWEP.HookP_ModifyBullet = function(self, bullet) return end # bullet = phys bullet table, modify in place, does not accept return
-- SWEP.HookP_BlockFire = function(self) return block end # return true to block firing
-- SWEP.Hook_ModifyBodygroups = function(self, data) return end # data = {model = Model, elements = {"table" = true, "of" = true, "elements" = true}}

-------------------------- BLIND FIRE

SWEP.CanBlindFire = true -- This weapon is capable of blind firing.
SWEP.BlindFireOffset = Vector(0, 0, 16) -- The amount by which to offset the blind fire muzzle.
SWEP.BlindFirePos = Vector(1, -2, 0)
SWEP.BlindFireAng = Angle(0, 15, 0)
SWEP.BlindFireBoneMods = {
    ["ValveBiped.Bip01_R_UpperArm"] = {
        ang = Angle(25, -50, 0),
        pos = Vector(0, 0, 0)
    },
    ["ValveBiped.Bip01_R_Hand"] = {
        ang = Angle(-50, 0, 0),
        pos = Vector(0, 0, 0)
    }
}

-------------------------- NPC

SWEP.NotForNPCs = false -- Won't be given to NPCs.
SWEP.NPCWeight = 100 -- How likely it is for an NPC to get this weapon as opposed to other weapons.

-------------------------- BIPOD

SWEP.Bipod = false -- This weapon comes with a bipod.
-- When bipod is deployed, the gun does not experience recoil.

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSoundFirst = nil
SWEP.ShootSound = "gekolt_css/aug-1.wav"
SWEP.ShootSoundSilenced = ""
SWEP.ShootSoundSilencedFirst = ""
SWEP.ShootSoundIndoor = nil
SWEP.ShootSoundIndoorFirst = nil
SWEP.ShootSoundSilencedIndoor = nil
SWEP.ShootSoundSilencedIndoorFirst = nil
SWEP.ShootSoundLooping = nil

-------------------------- EFFECTS

SWEP.NoFlash = false -- Disable light flash

SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellMaterial = nil

SWEP.EjectDelay = 0

SWEP.ShellPitch = 100 -- for shell sounds
SWEP.ShellSounds = ArcCW.ShellSoundsTable

SWEP.ShellCorrectPos = Vector(0, 0, 0)
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellTime = 0.5 -- Extra time these shells stay on the ground for.

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
---SWEP.CamQCA = 3
SWEP.ProceduralViewQCA = 1.

-------------------------- VISUALS

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}
SWEP.CaseBones = {}
-- Unlike BulletBones, these bones are determined by the missing bullet amount when reloading
SWEP.StripperClipBones = {}

-- The same as the bone versions but works via bodygroups.
-- Bodygroups work the same as in attachmentelements.
-- [0] = {ind = 0, bg = 1}
SWEP.BulletBGs = {}
SWEP.CaseBGs = {}
SWEP.StripperClipBGs = {}

SWEP.PoseParameters = {} -- Poseparameters to manage. ["parameter"] = starting value.
-- Use animations to switch between different pose parameters.
-- When an animation is being played that switches between pose parameters, those parameters are all set to 0 for the animation.
-- There are also different default pose parameters:
-- firemode (Changes based on Fire Mode. Don't use this if you have animated firemode switching.)
-- sights (Changes based on sight delta)
-- sprint (Changes based on sprint delta)
-- empty (Changes based on whether a bullet is loaded)
-- ammo (Changes based on the ammo in the clip)

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-4, 0, -0.25),
    Ang = Angle(0, 0, -5),
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-1, 15, -4),
    Ang = Angle(0, 0, -35),
}

SWEP.HasSights = true

-- Alternative "resting" position
SWEP.ActivePos = Vector(0, 5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

-- Position when sprinting or holstered
SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-4.633, 36.881, 0)

-- Overrides HolsterPos/Ang but only for sprinting
SWEP.SprintAng = Angle(30, -20, -10)
SWEP.SprintPos = Vector(5, 5, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(4, 2, -4),
    Ang = Angle(0, 5, -15)
}

-- Position for customizing
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 32, 4)

SWEP.InBipodPos = Vector(-8, 0, -4)
SWEP.InBipodMult = Vector(2, 1, 1)

-------------------------- HoldTypes

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "smg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = nil

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {

    ["awp_f_howell"] = {
        Bodygroups = {
            {0, 2}
        },
	},

    ["awp_f_smg"] = {
        Bodygroups = {
            {0, 1}
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
	},
	

    ["fire_cycle"] = {
        Source = "fire",
    },
	
    ["fire"] = {
        Source = "fire_full",
		MinProgress = 0.05,
    },	

    ["fire_empty"] = {
        Source = "fire",
		MinProgress = 0.05,
    },		

    ["fire_smg"] = {
        Source = "fire_smg",
		MinProgress = 0.05,
    },	
	
    ["fire_br"] = {
        Source = "fire_br",
		MinProgress = 0.05,
		Mult =1.25,
    },		
	
    -- AWP --

    ["reload"] = {
        Source = "wet",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
    },
    ["reload_empty"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        SoundTable = {
        },
    },

    -- BR --

    ["reload_br"] = {
        Source = "wet_br",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        SoundTable = {
        },
    },
    ["reload_empty_br"] = {
        Source = "dry_br",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        SoundTable = {
        },
    },	
    -- SMG --

    ["reload_smg"] = {
        Source = "wet_smg",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 1.5,
        SoundTable = {
        },
    },
    ["reload_empty_smg"] = {
        Source = "dry_smg",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 2,
        SoundTable = {
        },
    },		
}
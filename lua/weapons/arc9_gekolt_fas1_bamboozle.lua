AddCSLuaFile()

SWEP.Base = "arc9_base_nade"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Auxilliaries"

SWEP.PrintName = "Claymore on a Stick"

SWEP.Class = "Explosive"
SWEP.Trivia = {
    ["Country of Origin"] = "Scotland", -- trolleg
    ["Caliber"] = "3.2mm steel balls",
}

SWEP.Credits = {
    ["Additional Coding1"] = [[TheOnly8Z#8888 (8Z)]],
    ["Assets2"] = [[Firearm: Source]],
	["Contact3"] = [[SlogoKolt#6648 or Mytton#5132]],
}

SWEP.Description = [[THE JAPANESES ARE ATTACKING AGAIN.

Crude anti-tank-personnel-whateverinfrontofyou device from the peak of the highlands.
Using it as a spear is not recommended]]

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
SWEP.ClipSize = 1
SWEP.ChamberSize = 0
SWEP.SupplyLimit = 2
SWEP.Crosshair = false

-------------------------- ENTITY LAUNCHING
SWEP.Ammo = "slam"

SWEP.ShootEnt = "gekolt_css_m4_claymore_bamboo" -- Set to an entity to launch it out of this weapon.

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowSpeed = 0.5

SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 200 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 3000 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 2500 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 0.8 -- How long it takes to charge the grenade to its maximum throw force.

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
SWEP.BashWhileSprint = true

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 70
SWEP.BashLungeRange = 0
SWEP.BashRange = 128
SWEP.PreBashTime = 0.15
SWEP.PostBashTime = 0.95

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.SprintAng = Angle(0, -15, 0)
SWEP.SprintPos = Vector(0, -2, -2)

SWEP.ViewModelFOVBase = 90
SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, -25, 13)
SWEP.CustomizePos = Vector(9, 32, 4)
SWEP.CustomizeSnapshotFOV = 110

SWEP.CrouchPos = Vector(0, -3, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeRotateAnchor = Vector(10.5, -10, -4)
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


-- theres no grenade base yet  --- before 22/11/08
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
        Time = 0
    },
    ["bash"] = {
        Source = {"melee"}
    },	
    ["impact"] = {
        Source = {"melee_discharge"},
        EventTable = {
            {s =  "gekolt_css/clay/c4_draw.wav" ,   t = 21 / 40},
            {s =  "gekolt_css/clay/pinpull.wav" ,   t = 35 / 40},
        },		
    },	
}

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}

SWEP.Hook_BashHit = function(wep, data)
    local pos = data.tr.HitPos
    local eff = EffectData()
    eff:SetOrigin(pos)
    if bit.band(util.PointContents(pos), CONTENTS_WATER) == CONTENTS_WATER then
        util.Effect( "WaterSurfaceExplosion", eff )
        wep:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
    else
        util.Effect( "Explosion", eff)
        wep:EmitSound("phx/kaboom.wav", 125, 100, 1, CHAN_AUTO)
    end
    wep:TakeAmmo()
--	wep:SetNextPrimaryFire(300)
	
    util.BlastDamage(wep, wep:GetOwner(), pos, 256, 200)
    if wep:GetProcessedValue("Disposable") and !wep:HasAmmoInClip() and !IsValid(wep:GetDetonatorEntity()) and SERVER then
        wep:Remove()
	end	
end

hook.Add("EntityTakeDamage", "arc9_gekolt_bamboozle", function(ent, dmg)
    if IsValid(dmg:GetInflictor()) and (dmg:GetInflictor():GetClass() == "arc9_gekolt_fas1_bamboozle" or dmg:GetInflictor():GetClass() == "gekolt_css_m4_claymore_bamboo") and ent == dmg:GetInflictor():GetOwner() then
        if dmg:GetInflictor():IsWeapon() then
            dmg:ScaleDamage(0.4)
            ent:SetVelocity(ent:EyeAngles():Forward() * -200)
        else
            dmg:ScaleDamage(2) -- trolleg?
            ent:SetVelocity((ent:GetPos() - dmg:GetInflictor():GetPos()):GetNormalized() * 1000)
        end
    end
end)
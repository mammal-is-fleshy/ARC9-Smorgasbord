AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"

SWEP.PrintName = "TDR-90"
SWEP.TrueName = "M79"
SWEP.SubCategory = "Auxilliaries"

SWEP.Class = "Grenade Launcher"
SWEP.Trivia = {
    ["Country of Origin"] = [[United States of America]],
    ["Caliber"] = "40×46mm grenade",
}

SWEP.Credits = {
    ["Additional Coding1"] = [[TheOnly8Z#8888 (8Z)]],
    ["Sound2"] = [[CturiX#6008 (CturiX)]],
    ["Assets3"] = [[Firearm: Source 2]],
    ["Contact4"] = [[SlogoKolt#6648 or Mytton#5132]],
}

SWEP.Description = [[Single shot explosive lobing device
Miniature barage if you can get enough shot.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_m79.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_m79.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(1, 3, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 3, -7),
    TPIKAng = Angle(-5, 0, 180),
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
SWEP.Recoil = 1.5

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
SWEP.SpeedMultShooting = 0.6
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

SWEP.Crosshair = false

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
SWEP.CustomizePos = Vector(12, 32, 2)

SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(12, -1.94, -5.23)

SWEP.StandardPresets = {
    "[Alofs]XQAAAQBMAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtId02K9Y7vtGORfF89F77zpxWUuYjChqvqkszNWIKeWTwnVXL7WY3i+lFtF0BdUgA=",
    "[MTS]XQAAAQBcAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtId02K9Y7vtGORfRzHumk2PrrmHLR82aBs4r3XJnjc0uBDY6V/i0hZpNQOpBIAkwdUxgNv3s4G",
    "[Tracker]XQAAAQDHAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtId02K9Y7vtGORfRzHumk2Prr36+Ze54qUc3NtKYSXpd5qjHSIwyJ4822EtDLEz9iWFOfuEkkSTZ1X1YgCiz/loYjA7ZnEpSirFPDlepJu437J4++hIFVUAA==",
    "[Pirate]XQAAAQBaAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtId02K9Y7vtGOR9u3YdKqcY2LFms+COwVACvA9h+FgV99ccehKhsbgufg2fdxysYgX+boA",
    "[MTS-P]XQAAAQBqAAAAAAAAAAA9iIIiM7tuo1AtT2XPdgkKkZtId02K9Y7vtGORfc9BS2vczPZ5yNEGb723pGNzvKeBpDObMcodMjnGHc9iiAKmOyqt27h2cCYGK4kA",
}

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.MuzzleEffectQCA = 1

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/geckololt_css/shell_40mm.mdl"
SWEP.ShellSounds = {"cturix_m79/nadeshell-1.wav", "cturix_m79/nadeshell-2.wav", "cturix_m79/nadeshell-3.wav", "cturix_m79/nadeshell-4.wav", "cturix_m79/nadeshell-5.wav", "cturix_m79/nadeshell-6.wav", "cturix_m79/nadeshell-7.wav", "cturix_m79/nadeshell-8.wav", "cturix_m79/nadeshell-9.wav", "cturix_m79/nadeshell-10.wav"}
SWEP.ShellCorrectPos = Vector(0, 0, 0)
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true
SWEP.ShellSmoke = false
SWEP.EjectDelay = 0

-------------------------- SOUNDS

SWEP.ShootSound = {"cturix_m79/fire_grenade1.wav", "cturix_m79/fire_grenade2.wav", "cturix_m79/fire_grenade3.wav", "cturix_m79/fire_grenade4.wav", "cturix_m79/fire_grenade5.wav", "cturix_m79/fire_grenade6.wav"}
SWEP.ShootSoundSilenced = "gekolt_css/tmp-1.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.DefaultBodygroups = "000000000000000"

SWEP.AttachmentElements = {
    ["f_mts"] = {
        Bodygroups = {{1, 2},{2, 2},{3, 2},{4, 1},{6, 2},{7, 2}},
        AttPosMods = { [4] = { Pos = Vector(0, 0.4, 5.5), }, [3] = { Pos = Vector(0, -3.275, -1), } }
    },
    ["f_mtss"] = {
        Bodygroups = {{1, 3},{2, 1},{3, 2},{4, 1},{6, 2},{7, 2},},
        AttPosMods = { [3] = { Pos = Vector(0, -3.275, -1), } }
    },
    ["f_pirate"] = {
        Bodygroups = {{1, 1},{2, 1},{3, 2},{6, 2},{7, 2},},
        AttPosMods = { [3] = { Pos = Vector(0, -3.4, -1.5), } }
    },
    ["f_alofs"] = {
        Bodygroups = {{3, 1},{5, 1},{6, 1},{7, 1}},
        AttPosMods = { [4] = { Pos = Vector(0, 1.6, 3.6), } }
    },
    ["a_12g"] = {
        Bodygroups = {{4, 2}},
    },
    ["a_308"] = {
        Bodygroups = {{4, 3}},
    },

    ["rail_top"] = {
        Bodygroups = {{8, 1},{7, 1}},
    },
    ["rail_bot"] = {
        Bodygroups = {{3, 3}},
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("a_12g") and wep:HasElement("f_alofs") then model:SetBodygroup(5,2) end	--- shotgun bodge ---
    if wep:HasElement("a_308") then model:SetBodygroup(4,3) end	--- revolver bodge ---

    if wep:HasElement("rail_top") and wep:HasElement("f_pirate") then model:SetBodygroup(8, 2) end	--- railing pirate ---
    if wep:HasElement("rail_top") and wep:HasElement("f_pirate") then model:SetBodygroup(7, 2) end	--- railing pirate2 ---
    if wep:HasElement("rail_top") and wep:HasElement("f_mts") then model:SetBodygroup(8, 0) end	--- railing mts ---
    if wep:HasElement("rail_top") and wep:HasElement("f_mts") then model:SetBodygroup(7, 2) end	--- railing mts2 ---
    if wep:HasElement("rail_top") and wep:HasElement("f_mtss") then model:SetBodygroup(8, 0) end	--- railing mtss ---
    if wep:HasElement("rail_top") and wep:HasElement("f_mtss") then model:SetBodygroup(7, 2) end	--- railing mtss2 ---

    if wep:HasElement("rail_bot") and wep:HasElement("f_alofs") then model:SetBodygroup(3,4) end	--- railing alofs ---
    if wep:HasElement("rail_bot") and wep:HasElement("f_mts") then model:SetBodygroup(3,5) end	--- railing mts ---
end

SWEP.Hook_TranslateAnimation = function(wep, anim)

    if wep:HasElement("rail_bot") and wep:HasElement("f_mts") then
		if anim == "reload" then return "reload_grip_mts" end
    end

end

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
        ExcludeElements = {"pre_ammo"},

        Category = "fas2_m79_ammo",
        Bone = "W_Main",
        Pos = Vector(0, 0, -4),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"rail_top"},

        Category = {"optic_css", "optic_css_free"},
        Bone = "W_Break",
        Pos = Vector(0, -3.4, -0.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Foregrip",
        DefaultName = "None",
        InstalledElements = {"rail_bot"},

        ExcludeElements = {"nogrip"},
        Category = {"grip_css"},
        Bone = "W_Break",
        Pos = Vector(0, 0.75, 3.6),
        Ang = Angle(90, 0, -90),
    },
}

SWEP.BulletBones = {
    [1] = "W_Bullet_Spare2",
    [2] = "W_Bullet_Spare",
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        Mult = 1,
        EventTable = {
            {s =  "gekolt_css_foley/draw_smg.wav" ,   t = 0 / 40},
        },
    },
    ["holster"] = {
        Source = "idle",
        Time = 0
    },
    ["fire"] = {
        Source = "fire",
    },
    ["fire_rev"] = {
        Source = "fire_rev",
    },
    ["fire_iron"] = {
        Source = "fire",
    },
    ["reload"] = {
        Source = "dry",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 3 / 40},
            {s =  "gekolt_fas2/nadeshell_release.wav" ,   t = 11 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 49 / 40},
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 50 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 58 / 40},
            {s =  "gekolt_fas2/m79_close.wav" ,    t = 83 / 40},
        },
        FireASAP = true,
        MinProgress = 0.85,
        EjectAt = 20 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
    ["reload_mts"] = {
        Source = "dry_mts",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 3 / 40},
            {s =  "gekolt_fas2/m79_remove.wav" ,   t = 11 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 49 / 40},
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 50 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 58 / 40},
            {s =  "gekolt_fas2/m79_close.wav" ,    t = 83 / 40},
        },
        FireASAP = true,
        MinProgress = 0.85,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 0, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },

    ["reload_pirate"] = {
        Source = "dry_pirate",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EjectAt = 35 / 40,
        EventTable = {
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 12 / 40},
            {s =  "gekolt_fas2/m79_remove.wav" ,   t = 30 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 65 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 70 / 40},
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 64 / 40},
            {s =  "gekolt_fas2/m79_close.wav" ,    t = 86 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },
    ["reload_rev"] = {
        Source = "dry_rev",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.83,
        EventTable = {
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 12 / 40},
            {s =  "gekolt_fas2/m79_remove.wav" ,   t = 30 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 65 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 70 / 40},
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 64 / 40},
            {s =  "gekolt_fas2/m79_close.wav" ,    t = 86 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.2, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
    },




    -- Agony --
    ["cycle"] = {
        Source = "pump",
        EjectAt = 17 / 40,
        FireASAP = true,
        MinProgress = 25 / 40,
        EventTable = {
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 13 / 40},
            {s =  "gekolt_fas2/m79_remove.wav" ,   t = 15 / 40},
            {s =  "gekolt_fas2/m79_close.wav" ,    t = 27 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,   t = 32 / 40},

        },
        IKTimeLine = {	{ t = 0, lhik = 1, rhik = 1, }, { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, }, { t = 1, lhik = 1, rhik = 1, }	},
    },
    ["reload_start"] = {
        Source = "alofs_start",
        RestoreAmmo = 1,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/m1carbine_boltback.wav" ,   t = 20 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 24 / 40},
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 25 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 33 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,   t = 44 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 1, rhik = 1, }, { t = 0.2, lhik = 0, rhik = 0, }, { t = 1, lhik = 0, rhik = 0, }	},
    },
    ["reload_insert"] = {
        Source = "alofs_load",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_dod/m1carbine_boltback.wav" ,   t = 8 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 12 / 40},
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 13 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 21 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,   t = 32 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 0, rhik = 0, }, { t = 1, lhik = 0, rhik = 0, },	},
    },
    ["reload_finish"] = {
        Source = "alofs_end",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {

        },
        IKTimeLine = {	{ t = 0, lhik = 0, rhik = 0, }, { t = 0.5, lhik = 1, rhik = 1, }, { t = 1, lhik = 1, rhik = 1, }	},
    },
    ["reload_start_empty"] = {
        Source = "alofs_dry",
        RestoreAmmo = 1,
        EjectAt = 15 / 40,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 3 / 40},
            {s =  "gekolt_dod/m1carbine_boltback.wav" ,   t = 9 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 49 / 40},
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 50 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 58 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,   t = 88 / 40},
            {s =  "gekolt_fas2/m79_close.wav" ,    t = 83 / 40},
        },
        IKTimeLine = {	{ t = 0, lhik = 1, rhik = 1, }, { t = 0.1, lhik = 0, rhik = 0, }, { t = 1, lhik = 0, rhik = 0, },	},
    },


    -- MTS GRIP --
    ["reload_grip_mts"] = {
        Source = "dry_mts",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        EventTable = {
            {s =  "gekolt_fas2/m79_open.wav" ,   t = 3 / 40},
            {s =  "gekolt_fas2/m79_remove.wav" ,   t = 11 / 40},
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 49 / 40},
            {s =  "gekolt_fas2/m79_insert.wav" ,    t = 50 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 58 / 40},
            {s =  "gekolt_fas2/m79_close.wav" ,    t = 83 / 40},
        },
        FireASAP = true,
        MinProgress = 0.85,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },		
    },	
}
AddCSLuaFile()

SWEP.Base = "arc9_base_nade"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Auxilliaries"

SWEP.PrintName = "Grenade Bundle"

SWEP.Class = "Explosive"
SWEP.Trivia = {
}

SWEP.Credits = {
    ["Additional Coding1"] = [[TheOnly8Z#8888 (8Z)]],
    ["Assets2"] = [[Counter-Strike Source]],
    ["Contact3"] = [[SlogoKolt#6648 or Mytton#5132]],
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Cluster",
        ShootEnt = "gekolt_css_grenade_bundle",
    },
    {
        Mode = 1,
        PrintName = "Condensed",
        ShootEnt = "gekolt_css_grenade_bundle_cds",
    },
}

SWEP.Description = [[Bundle up to 7 grenades together so your explosions are never lonely.
Toggle between powerful cluster grenades or large condensed explosion.

A sober person would throw it...]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_grenade_bundle.mdl"
SWEP.WorldModel = "models/weapons/geckololt_css/c_grenade_bundle.mdl"
SWEP.Slot = 0

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_grenade_bundle.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(11, 12, 0),
    Ang = Angle(0, 90, 90),
    Scale = 1
}

SWEP.NoTPIK = true

SWEP.DefaultBodygroups = "00"
SWEP.BottomlessClip = true
SWEP.ClipSize = 0
SWEP.ChamberSize = 0
SWEP.SupplyLimit = 7
SWEP.Crosshair = false

SWEP.PartialLoad = true -- fleshy, set this to false to disable the "spend up to 7" logic
SWEP.AmmoPerShot = 1 -- might want to set this to 7 if you do

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "gekolt_css_grenade_bundle"
SWEP.Ammo = "grenade"

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = 7 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 300 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 1500 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 250 -- Force that the grenade will be thrown with when right clicked.
SWEP.ShootEntInheritPlayerVelocity = true

SWEP.ThrowChargeTime = 2 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = true -- Grenade tumbles when thrown.
SWEP.Disposable = true

-------------------------- HANDLING
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.
-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 90
SWEP.ActivePos = Vector(0, 0, 0)
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

SWEP.CustomizeAng = Angle(90, 55, -81)
SWEP.CustomizePos = Vector(0, 30, 10)

SWEP.CustomizeSnapshotPos = Vector(0, 20, 0)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

SWEP.ShootPosOffset = Vector(1, 1, 0)

SWEP.CustomizeRotateAnchor = Vector(10, -7, 0)

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [0] = "Base",
    [1] = "Main",
    [2] = "Nade1",
    [3] = "Nade2",
    [4] = "Nade3",
    [5] = "Nade4",
    [6] = "Nade5",
    [7] = "Nade6",
}

-------------------------- HoldTypes

SWEP.HoldType = "grenade"
SWEP.HoldTypeSprint = "grenade"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeSights = "normal"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 25
SWEP.BashLungeRange = 0
SWEP.BashRange = 72
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.75

SWEP.ShootWhileSprint = true
SWEP.BashWhileSprint = true

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_primed"] = {
        Source = "prep_idle"
    },
    ["draw"] = {
        Source = "draw",
        FireASAP = true,
        MinProgress = 0.2,
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
    ["bash"] = {
        Source = {"melee"}
    },
}

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

SWEP.Hook_GrenadeThrown = function(wep, data)
    if wep.PartialLoad then
        local amt = math.min(wep:Ammo1(), 6)
        wep:TakeAmmo(amt)
        wep.AdditionalNades = amt
    else
        wep.AdditionalNades = 6
    end
end

SWEP.Hook_GrenadeCreated = function(wep, nades)
    local nade = nades[1]
    nade.AdditionalNades = (wep.AdditionalNades or 0)
    for i = 1, 6 do
        local bone = nade:LookupBone(wep.BulletBones[i + 1])
        if bone and nade.AdditionalNades < i then
            nade:ManipulateBoneScale(bone, Vector(0.001, 0.001, 0.001))
        end
    end
    wep.AdditionalNades = nil
end

SWEP.Hook_BashHit = function(wep, data)
    if wep:Ammo1() == 0 then return end -- NOT SCIENTIFICALLY POSSIBLE

    local pos = data.tr.HitPos
    local eff = EffectData()
    eff:SetOrigin(pos)
    if bit.band(util.PointContents(pos), CONTENTS_WATER) == CONTENTS_WATER then
        util.Effect( "WaterSurfaceExplosion", eff )
        wep:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
    else
        util.Effect("Explosion", eff)
    end

    local amt, d = 6, 1
    if wep.PartialLoad then
        amt = math.min(wep:Ammo1() - 1, 6)
        wep:TakeAmmo(amt + 1)
        d = amt / 6
    end

    local src = wep:GetShootPos()
    local dir = wep:GetShootDir()

    if wep:GetValue("ShootEnt") == "gekolt_css_grenade_bundle" then

        if bit.band(util.PointContents(pos), CONTENTS_WATER) ~= CONTENTS_WATER then
            wep:EmitSound("phx/kaboom.wav", 125, 100, 1, CHAN_WEAPON)
        end

        util.BlastDamage(wep, wep:GetOwner(), pos, 256, 100)
        for i = 1, amt do
            local dispersion = Angle(math.Rand(-1, 1), math.Rand(-1, 1), 0)
            dispersion:Mul(1.5 * 36)
            dispersion:Add(dir)

            local ent = ents.Create("gekolt_css_nadelet")
            ent.FuseTime = 0.8 + i * 0.3 + math.Rand(0, 0.2)
            ent.Damage = 75
            ent:SetOwner(wep:GetOwner())
            ent:SetPos(src)
            ent:SetAngles(AngleRand())
            ent:Spawn()

            ent:GetPhysicsObject():SetVelocityInstantaneous(wep:GetOwner():GetVelocity() + dispersion:Forward() * math.Rand(96, 512))
        end
    else

        if bit.band(util.PointContents(pos), CONTENTS_WATER) ~= CONTENTS_WATER then
            wep:EmitSound("^ambient/explosions/explode_3.wav", 125, 100, 1, CHAN_WEAPON)
        end

        util.BlastDamage(wep, wep:GetOwner(), pos, 320 + d * 320, 25 + d * 75)
        util.BlastDamage(wep, wep:GetOwner(), pos, 192 + d * 192, 50 + d * 200)

        local effectdata = EffectData()
        for i = 1, math.ceil(2 + d * 14) do
            local tr = util.TraceLine({
                start = src,
                endpos = src + Angle(math.Rand(-5, 5), math.Rand(0, 360), 0):Forward() * math.Rand(256 * d, 512 * d),
                mask = MASK_SHOT,
                filter = {wep, wep:GetOwner(), data.tr.Entity},
            })
            effectdata:SetOrigin(tr.HitPos)
            util.Effect("HelicopterMegaBomb", effectdata)
        end

        wep:EmitSound("^ambient/explosions/explode_3.wav", 125, 100, 1, CHAN_AUTO)
    end


    if wep:GetProcessedValue("Disposable") and !wep:HasAmmoInClip() and !IsValid(wep:GetDetonatorEntity()) and SERVER then
        wep:Remove()
    end
end

SWEP.Hook_Think = function(wep)
    if CLIENT then
        if wep:WaterLevel() > 2 or !wep:GetGrenadePrimed() then return end
        local vel = wep:GetOwner():GetVelocity():Length()

        local pos

        if wep:GetOwner() == LocalPlayer() and !LocalPlayer():ShouldDrawLocalPlayer() then
            local vm = wep:GetOwner():GetViewModel()
            local matrix = vm:GetBoneMatrix(vm:LookupBone("Main"))
            if !matrix then return end
            pos = matrix:GetTranslation()
            --pos = pos + ang:Up() * -10 + ang:Right() * 11 + ang:Forward() * -2
        else
            local matrix = wep:GetOwner():GetBoneMatrix(wep:GetOwner():LookupBone("ValveBiped.Bip01_R_Hand"))
            if !matrix then return end

            pos = matrix:GetTranslation()
            local ang = matrix:GetAngles()
            pos = pos + ang:Up() * -10 + ang:Forward() * 11
        end


        local emitter = ParticleEmitter(pos)
        if !IsValid(emitter) then return end

        if wep:GetValue("ShootEnt") == "gekolt_css_grenade_bundle_cds" and (wep.NextSmokeTime or 0) < CurTime() then
            wep.NextSmokeTime = CurTime() + 0.01 / math.Clamp(vel / 500, 1, 4)
            local smoke = emitter:Add("particle/particle_smokegrenade", pos)
            smoke:SetVelocity(VectorRand() * 15)
            smoke:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), 500))
            smoke:SetDieTime(0.5)
            smoke:SetStartAlpha(255)
            smoke:SetEndAlpha(0)
            smoke:SetStartSize(4)
            smoke:SetEndSize(8)
            smoke:SetRoll(math.Rand(-180, 180))
            smoke:SetRollDelta(math.Rand(-0.2, 0.2))
            smoke:SetColor(150, 150, 150)
            smoke:SetAirResistance(5)
            smoke:SetLighting(true)
        end

        if wep:GetValue("ShootEnt") == "gekolt_css_grenade_bundle" and (wep.NextSparkTime or 0) < CurTime() then
            wep.NextSparkTime = CurTime() + 0.005
            local fire = emitter:Add("effects/spark", pos)
            fire:SetVelocity(VectorRand() * 128 + Vector(0, 0, 100))
            fire:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), -1000))
            fire:SetDieTime(math.Rand(0.5, 1.5))
            fire:SetStartAlpha(255)
            fire:SetEndAlpha(0)
            fire:SetStartSize(3)
            fire:SetEndSize(0)
            fire:SetRoll(math.Rand(-180, 180))
            fire:SetRollDelta(math.Rand(-0.2, 0.2))
            fire:SetColor(255, 255, 255)
            fire:SetAirResistance(50)
            fire:SetLighting(false)
            fire:SetCollide(true)
            fire:SetBounce(0.8)
        end

        emitter:Finish()
    end
end

hook.Add("EntityTakeDamage", "arc9_gekolt_gbundle", function(ent, dmg)
    if IsValid(dmg:GetInflictor()) and dmg:GetInflictor():GetClass() == "arc9_gekolt_css_grenade_german" and ent == dmg:GetInflictor():GetOwner() then
        dmg:ScaleDamage(0.5)
        ent:SetVelocity(ent:EyeAngles():Forward() * -300)
    end
end)
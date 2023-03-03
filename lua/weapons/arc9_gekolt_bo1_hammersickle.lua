AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Smorgasbord"
SWEP.SubCategory = "Auxilliaries"

SWEP.PrintName = "Hammer and Sickle"

SWEP.Class = "Ideological Artifact"
SWEP.Trivia = {
    ["Country of Origin"] = "Insert Generic Union/Commune Here",
    ["Caliber"] = "Wood and Steel",
}

SWEP.Credits = {
    ["Additional Coding1"] = [[TheOnly8Z#8888 (8Z)]],
    ["Assets2"] = [[CoD: Black Ops]],
    ["Contact3"] = [[SlogoKolt#6648 or Mytton#5132]],
}

SWEP.Description = [[A pair of common work tools infused with the power of the proletariat.
Assemble its true form to reduce damage from the front and radiate energy.

Fuck communism, this mod was made by syndicalism gang.]]

SWEP.ViewModel = "models/weapons/geckololt_css/c_hns.mdl"
SWEP.WorldModel = "models/weapons/geckololt_css/c_hns.mdl"

SWEP.Slot = 0

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/geckololt_css/c_hns.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-10, 15, -10),
    Ang = Angle(0, 0, 180),
    Scale = 1
}

SWEP.NoTPIK = false

SWEP.DefaultBodygroups = "00"

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

SWEP.SprintToFireTime = 0.1
SWEP.AimDownSightsTime = 0.1

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultMelee = 0.9
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

SWEP.ShootWhileSprint = true
SWEP.BashWhileSprint = true

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = true

SWEP.BashDamage = 40
SWEP.BashLungeRange = 0
SWEP.BashRange = 72
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.3

SWEP.ShootWhileSprint = true
SWEP.BashWhileSprint = true

SWEP.BashThirdArmAnimation = false

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.HasSights = true
SWEP.HoldBreathTime = 0
SWEP.CanLean = false
SWEP.Sway = 0

SWEP.SprintAng = Angle(0, 0, 0)
SWEP.SprintPos = Vector(0, -2, 0)

SWEP.ViewModelFOVBase = 90
SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(135, 0, 0)
SWEP.CustomizePos = Vector(12.5, 46, 4)
SWEP.CustomizeSnapshotFOV = 110

SWEP.CrouchPos = Vector(0, -3, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeRotateAnchor = Vector(15, -2, 0)

SWEP.PeekPos = Vector(0, -3, -8)
SWEP.PeekAng = Angle(0, 10, 0)

-------------------------- HoldTypes

SWEP.HoldType = "duel"
SWEP.HoldTypeSights = "duel"
SWEP.HoldTypeSprint = "duel"
SWEP.HoldTypeHolstered = "duel"
SWEP.HoldTypeCustomize = "slam"

SWEP.AnimShoot = ACT_IDLE_MELEE --ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.AnimMelee = ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST
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

    ["enter_sights"] = {
        Source = "block",
        Time = 0.3,
        Reverse = false,
        NoStatAffectors = true,
    },
    ["idle_sights"] = {
        Source = "block_hold",
    },
    ["exit_sights"] = false,
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}

SWEP.Hook_Think = function(wep)
    if CLIENT then return end

    if wep:GetInSights() then
        if not wep.CurrentlyPlaying then
            if not wep:GetOwner().LoudMusic then
                wep:GetOwner().LoudMusic = CreateSound(wep:GetOwner(), "gekolt_misc/intern2.wav")
                wep:GetOwner().LoudMusic:SetSoundLevel(100)
                wep:GetOwner().LoudMusic:PlayEx(0.3, 100)

                -- Ensure the sound is removed if weapon is gone or owner dies
                local owner = wep:GetOwner()
                local hookname = "LoudMusicChecker_" .. wep:GetOwner():EntIndex()
                hook.Add("Think", hookname, function()
                    if not owner.LoudMusic then
                        hook.Remove("Think", hookname)
                    end
                    if not IsValid(wep) or not IsValid(owner) or not owner:Alive() or not owner:HasWeapon("arc9_gekolt_bo1_hammersickle") then
                        owner.LoudMusic:Stop()
                        owner.LoudMusic = nil
                        hook.Remove("Think", hookname)
                    elseif owner:GetActiveWeapon() ~= wep then
                        wep.CurrentlyPlaying = false
                        if not wep.MusicEnd then
                            owner.LoudMusic:ChangeVolume(0.4, 0)
                            wep.MusicEnd = CurTime()
                            wep.MusicFadingOut = false
                        elseif wep.MusicEnd + 5 <= CurTime() and not wep.MusicFadingOut then
                            wep.MusicFadingOut = true
                            owner.LoudMusic:ChangeVolume(0, 1.9)
                        end
                    end
                end)
            end

            if not wep.MusicEnd or wep.MusicEnd + 7 <= CurTime() then
                wep:GetOwner().LoudMusic:ChangeVolume(1, 3)
                wep.MusicFullDurationStart = CurTime()
                print("full start")
                wep.NextDamageTick = CurTime() + 1
            else
                if wep.MusicEnd + 1 <= CurTime() then
                    wep.MusicFullDurationStart = nil
                end
                wep:GetOwner().LoudMusic:ChangeVolume(1, 0.5)
                wep.NextDamageTick = CurTime() + 1
            end

            wep.CurrentlyPlaying = true
            wep.MusicStart = CurTime()
            wep.MusicEnd = nil
        end

        if (wep.NextDamageTick or 0) < CurTime() then
            wep.NextDamageTick = CurTime() + 0.75
            local d = math.Clamp((CurTime() - wep.MusicStart - 1) / 3, 0, 1)
            local d2 = wep.MusicFullDurationStart and math.Clamp((wep.MusicFullDurationStart - 39) / 20, 0, 1) or 0
            util.BlastDamage(wep, wep:GetOwner(), wep:GetOwner():GetPos() + Vector(0, 0, 64), 128 + 256 * d + 256 * d2, 10 + 20 * d)
        end

        -- Explosive finish!
        if wep.MusicFullDurationStart and CurTime() - wep.MusicFullDurationStart >= 77.9 then
            local effectdata = EffectData()
            wep:EmitSound("^ambient/explosions/explode_5.wav", 125, 100, 1, CHAN_AUTO)
            local src = wep:GetOwner():GetPos() + Vector(0, 0, 64)
            for i = 1, 128 do
                local tr = util.TraceLine({
                    start = src,
                    endpos = src + Angle(math.Rand(-5, 5), math.Rand(0, 360), 0):Forward() * math.Rand(256, 1024),
                    mask = MASK_SHOT,
                    filter = {wep, wep:GetOwner()},
                })
                effectdata:SetOrigin(tr.HitPos)
                util.Effect("HelicopterMegaBomb", effectdata)
            end
            util.BlastDamage(wep, wep:GetOwner(), wep:GetOwner():GetPos() + Vector(0, 0, 64), 1024, 1000)
            wep:Remove()
        end
    else
        wep.CurrentlyPlaying = false
        if wep:GetOwner().LoudMusic and not wep.MusicEnd then
            wep:GetOwner().LoudMusic:ChangeVolume(0.4, 0)
            wep.MusicEnd = CurTime()
            wep.MusicFadingOut = false
        elseif wep:GetOwner().LoudMusic and wep.MusicEnd and wep.MusicEnd + 5 <= CurTime() and not wep.MusicFadingOut then
            wep.MusicFadingOut = true
            wep:GetOwner().LoudMusic:ChangeVolume(0, 1.9)
        end
    end
end

hook.Add("EntityTakeDamage", "arc9_gekolt_hammersickle", function(ent, dmg)
    if IsValid(dmg:GetInflictor()) and dmg:GetInflictor():GetClass() == "arc9_gekolt_bo1_hammersickle" and dmg:IsDamageType(DMG_BLAST) then
        if dmg:GetDamage() < 100 and (ent == dmg:GetInflictor():GetOwner() or (ent:IsPlayer() and IsValid(ent:GetActiveWeapon()) and ent:GetActiveWeapon():GetClass() == "arc9_gekolt_bo1_hammersickle")) then
            return true
        else
            dmg:SetDamageType(DMG_SONIC)
        end
    elseif ent:IsPlayer() and IsValid(ent:GetActiveWeapon()) and ent:GetActiveWeapon():GetClass() == "arc9_gekolt_bo1_hammersickle" and ent:GetActiveWeapon():GetInSights()
            and (dmg:IsDamageType(DMG_BULLET) or dmg:IsDamageType(DMG_BUCKSHOT) or dmg:IsDamageType(DMG_CRUSH) or dmg:IsDamageType(DMG_CLUB) or dmg:IsDamageType(DMG_SLASH) or dmg:IsDamageType(DMG_GENERIC)) then
        local entpos = ent:WorldSpaceCenter()
        local origin = dmg:GetDamagePosition() or (IsValid(dmg:GetInflictor()) and dmg:GetInflictor():GetPos()) or (IsValid(dmg:GetAttacker()) and dmg:GetAttacker():GetPos()) or entpos
        local diff = (origin - entpos):GetNormalized()
        local dot = diff:Dot(Angle(0, ent:GetAngles().y, 0):Forward())
        if dot > 0.75 then
            dmg:ScaleDamage(0.2)
        elseif dot > 0.25 then
            dmg:ScaleDamage(0.5)
        end

        local effectdata = EffectData()
        effectdata:SetOrigin(entpos + diff * math.Rand(6, 12) + VectorRand() * 4)
        util.Effect("StunstickImpact", effectdata)
    end
end)
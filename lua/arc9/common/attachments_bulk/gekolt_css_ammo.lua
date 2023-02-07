local ATT = {}

-- Fusil a Pompe --------------------------------------------------------------

ATT = {}

ATT.PrintName = "Pressured Magnum Shot"
ATT.CompactName = "MAGNUM"
ATT.Icon = Material("entities/gekolt_css_ammo/mag.png", "mips smooth")
ATT.Description = [[Pressurised powder load can only be carried in such few quantities per shot
What it lacks in dispersion makes up in up close firepower.]]
ATT.SortOrder = 6

ATT.Category = {"css_ammo_sg"}

ATT.PhysBulletMuzzleVelocityMult = 1.5
ATT.PhysBulletDragMult = 3

ATT.NumMult = 6 / 8
ATT.RecoilKickMult = 1.25
ATT.RecoilAutoControlMult = 0.75

ATT.DamageMaxMult = 1 / 0.75 * 1.2
ATT.DamageMinMult = 1 / 0.75

ATT.SpreadMult = 0.9

ARC9.LoadAttachment(ATT, "gekolt_ammo_sg_magnum")

-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Foule Drone Shot" -- get it, cuz its bird shot, and foule looks like fowl but it means mob shot as in crowd control multi pellets  haha  ehh ill see myself out
ATT.CompactName = "DRONE"
ATT.Icon = Material("entities/gekolt_css_ammo/drone.png", "mips smooth")
ATT.Description = [[Condensed with a greater number of pellets allowing for wider spreading and looser clums
Take out those drones, birds, whatever in the sky.]]
ATT.SortOrder = 20

ATT.Category = {"css_ammo_sg"}

ATT.NumMult = 3
ATT.SpreadMult = 2

ATT.DamageMaxMult = 1 / 3
ATT.DamageMinMult = 1 / 3
ATT.RicochetChanceMult = 0.5

ARC9.LoadAttachment(ATT, "gekolt_ammo_sg_drone")

-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Marksman Slug Shot"
ATT.CompactName = "SLUG"
ATT.Icon = Material("entities/gekolt_css_ammo/slug.png", "mips smooth")
ATT.Description = [[play rainworld
play rainworld
play rainworld
play rainworld
play rainworld.]]
ATT.SortOrder = 1

ATT.Category = {"css_ammo_sg"}

ATT.SpreadMult = 0.15
ATT.SpreadMultHipFire = 0.675
ATT.RangeMaxMult = 2.25

ATT.RicochetChanceOverride = 1

-- this weird system of converting total damage back to single back to total is very not hog
ATT.DamageMinMult = 6
ATT.DamageMaxMult = 14

--ATT.DamageMaxOverride = 180
--ATT.DamageMinOverride = 70

ATT.NumOverride = 1
--ATT.Num_Priority = 1000 -- if it works  just to make sure

ARC9.LoadAttachment(ATT, "gekolt_ammo_sg_slug")

-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Piercing Flechettes"
ATT.CompactName = "FLECHT"
ATT.Icon = Material("entities/gekolt_css_ammo/flecht.png", "mips smooth")
ATT.Description = [[pointy.]]
ATT.SortOrder = 4

ATT.Category = {"css_ammo_sg"}

ATT.RicochetChanceOverride = 0
ATT.SpreadMult = 0.5
ATT.PhysBulletMuzzleVelocityMult = 2
ATT.PenetrationMult = 3
ATT.ArmorPiercingAdd = 2

ATT.NumOverride = 4

ATT.DamageMaxMult = 4
ATT.DamageMinMult = 4
ATT.RangeMaxMult = 1.5
ATT.RangeMinMult = 1.5

ARC9.LoadAttachment(ATT, "gekolt_ammo_sg_sharp")

-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[FRAG-12 High Explosive]]
ATT.CompactName = "EXPLOSIVE"
ATT.Icon = Material("entities/gekolt_css_ammo/exp.png", "mips smooth")
ATT.Description = [[bombe.]]
ATT.SortOrder = 1

ATT.Category = {"css_ammo_sg"}

ATT.NumOverride = 1
ATT.SpreadMult = 0.3

ATT.RicochetChanceOverride = 0
ATT.AlwaysPhysBullet = true
ATT.PhysBulletGravityMult = 3
ATT.PhysBulletMuzzleVelocityMult = 0.75

ATT.DamageMaxOverride = 35
ATT.DamageMinOverride = 10

ATT.ExplosionDamage = 72
ATT.ExplosionRadius = 64*3
ATT.ExplosionEffect = "Explosion"
ATT.ImpactDecal = "FadingScorch"

ATT.DamageTypeOverride = DMG_BUCKSHOT + DMG_BLAST + DMG_AIRBOAT

ARC9.LoadAttachment(ATT, "gekolt_ammo_sg_frag")

-------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Inflamma Dragon's Breath"
ATT.CompactName = "FLAME"
ATT.Icon = Material("entities/gekolt_css_ammo/dragon.png", "mips smooth")
ATT.Description = [[la fleur du cul]]
ATT.SortOrder = 4

ATT.Category = {"css_ammo_sg"}
ATT.AutoStats = true

-- stolen from urbna
--[[local dontburn = { -- zombies don't take damage from DMG_BURN (hardcoded to set them on fire)
    npc_zombie = true,
    npc_zombie_torso = true,
    npc_zombine = true,
    npc_fastzombie = true,
    npc_fastzombie_torso = true,
    npc_headcrab = true,
    npc_headcrab_fast = true,
    npc_headcrab_black = true,
}]]
-- doesnt fucking work
--[[ATT.HookP_ModifyBullet = function(wep, data)
    if SERVER and data.tr.Entity then
        local d = data.bullet.Travelled
        local dur = 6 - d * 2 / wep.Range
        if dur > 0 then
            data.tr.Entity:Extinguish()
            data.tr.Entity:Ignite(dur)
        end

        local delta = math.Clamp(d / data.bullet.Range, 0, 1)

        -- Impact is disabled (no bullet holes) so we do damage ourselves
        local dmg = DamageInfo()
        dmg:SetAttacker(data.bullet.Attacker)
        dmg:SetInflictor(data.bullet.Weapon)
        dmg:SetDamage(Lerp(delta, data.bullet.DamageMax, data.bullet.DamageMin))
        dmg:SetDamagePosition(data.bullet.Pos)
        dmg:SetDamageForce(data.bullet.Vel)
        dmg:SetDamageType(dontburn[data.tr.Entity:GetClass()] and DMG_BUCKSHOT or (DMG_BURN + DMG_BUCKSHOT))

        data.tr.Entity:TakeDamageInfo(dmg)
    end

    local effect = EffectData()
    effect:SetOrigin(data.tr.HitPos)
    util.Effect("StunstickImpact",effect)

    if data.tr.HitWorld then
        util.Decal("FadingScorch",data.tr.HitPos - data.tr.HitNormal,data.tr.HitPos + data.tr.HitNormal)
    end
end]]

ATT.PhysBulletImpactMult = false
ATT.RicochetChanceOverride = 0

ATT.DamageTypeOverride = DMG_BURN + DMG_BUCKSHOT

ATT.TracerSizeMult = 1.5
ATT.AccuracyMOAMult = 30
ATT.DamageMult = 0.5
ATT.DamageMinMult = 0.5
--ATT.TracerEffect = "burning_engine_01"

ATT.AlwaysPhysBulletOverride = true
ATT.PhysBulletMuzzleVelocityMult = 0.25
ATT.PhysBulletGravityMult = 0.75
ATT.PhysBulletDragMult = 5

ARC9.LoadAttachment(ATT, "gekolt_ammo_sg_flame")
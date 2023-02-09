ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Frag Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/geckololt_css/c_grenade_bundle.mdl"
ENT.LifeTime = 3.5
ENT.ArmTime = 0
ENT.ImpactFuse = false

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:SetMass(5)
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)

        self.SpawnTime = CurTime()
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_hard" .. math.random(1,3) .. ".wav"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_soft" .. math.random(1,3) .. ".wav"))
        end

        if (CurTime() - self.SpawnTime >= self.ArmTime) and self.ImpactFuse then
            self:Detonate()
        end
    end
end

function ENT:Think()
    if SERVER and CurTime() - self.SpawnTime >= self.LifeTime then
        self:Detonate()
    end
end

function ENT:Detonate()
    if SERVER and not self.Exploded then
        self.Exploded = true

        local pos = self:GetPos()
        local effectdata = EffectData()
        effectdata:SetOrigin(pos)
        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_WEAPON)
        else
            util.Effect("Explosion", effectdata)
            self:EmitSound("phx/kaboom.wav", 125, 100, 1, CHAN_WEAPON)
        end

        util.BlastDamage(self, self:GetOwner(), pos, 512, 150)

        local add = math.Rand(0, 60)
        local t = {1, 2, 3, 4, 5, 6} -- it looks funny but I need grenades to explode in a ring but also in random order
        for i = 1, 6 do
            local j = math.random(1, #t)
            local k = table.remove(t, j)
            local ent = ents.Create("gekolt_css_nadelet")
            ent.FuseTime = 0.4 + k * 0.2 + math.Rand(0, 0.15)
            ent:SetOwner(self:GetOwner())
            ent:SetPos(self:GetPos())
            ent:SetAngles(AngleRand())
            ent:Spawn()

            local ang = Angle(math.Rand(-60, -15), add + (i / 6) * 360 + math.Rand(-15, 15), 0)
            ent:GetPhysicsObject():SetVelocityInstantaneous(self:GetVelocity() + ang:Forward() * math.Rand(256, 512))
        end
        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end
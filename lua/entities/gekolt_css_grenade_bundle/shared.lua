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

ENT.SmokeTrail = false
ENT.SparkTrail = true

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
    end

    self.SpawnTime = CurTime()
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

        util.BlastDamage(self, self:GetOwner(), pos, 256, 150)

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

if SERVER then
    function ENT:Think()
        if CurTime() - self.SpawnTime >= self.LifeTime then
            self:Detonate()
        end
    end
elseif CLIENT then
    function ENT:Think()
        if self:WaterLevel() > 2 then return end
        local vel = self:GetVelocity():Length()

        local emitter = ParticleEmitter(self:GetPos() + self:GetForward() * 14)
        if not IsValid(emitter) then return end

        if self.SmokeTrail and (self.NextSmokeTime or 0) < CurTime() then
            self.NextSmokeTime = CurTime() + 0.01 / math.Clamp(vel / 500, 1, 4)
            local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
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

        if self.SparkTrail and (self.NextSparkTime or 0) < CurTime() then
            self.NextSparkTime = CurTime() + 0.005
            local fire = emitter:Add("effects/spark", self:GetPos())
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
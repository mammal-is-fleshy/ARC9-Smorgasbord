ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Like a goblet but grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_eq_fraggrenade_thrown.mdl"
ENT.FuseTime = 1
ENT.ArmTime = 0
ENT.ImpactFuse = false

ENT.Damage = 150

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
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)

        self.SpawnTime = CurTime()

        if self.FuseTime <= 0 then
            self:Detonate()
        end
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_hard" .. math.random(1,3) .. ".wav"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_soft" .. math.random(1,3) .. ".wav"))
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
            util.Effect("HelicopterMegaBomb", effectdata)
            self:EmitSound("^weapons/explode4.wav", 125, math.Rand(100, 110), 1, CHAN_WEAPON)

            for i = 1, 3 do
                local tr = util.TraceLine({
                    start = self:GetPos(),
                    endpos = self:GetPos() + Angle(math.Rand(-5, 5), math.Rand(0, 360), 0):Forward() * math.Rand(200, 300),
                    mask = MASK_SHOT,
                    filter = self,
                })
                effectdata:SetOrigin(tr.HitPos)
                util.Effect("HelicopterMegaBomb", effectdata)
            end
        end

        util.BlastDamage(self, self:GetOwner(), pos, 256, self.Damage * 0.5)
        util.BlastDamage(self, self:GetOwner(), pos, 512, self.Damage * 0.5)
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
        if CurTime() - self.SpawnTime >= self.FuseTime then
            self:Detonate()
        end
    end
elseif CLIENT then
    function ENT:Think()
        if self:WaterLevel() > 2 then return end

        local emitter = ParticleEmitter(self:GetPos())
        if not IsValid(emitter) then return end

        if (self.NextSparkTime or 0) < CurTime() then
            self.NextSparkTime = CurTime() + 0.015
            local fire = emitter:Add("effects/spark", self:GetPos())
            fire:SetVelocity(VectorRand() * 64 + Vector(0, 0, 150))
            fire:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), -700))
            fire:SetDieTime(math.Rand(1.5, 2))
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
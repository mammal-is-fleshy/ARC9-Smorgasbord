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

        if (CurTime() - self.SpawnTime >= self.ArmTime) and self.ImpactFuse then
            self:Detonate()
        end
    end
end

function ENT:Think()
    if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
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
            util.Effect("HelicopterMegaBomb", effectdata)
            self:EmitSound("^weapons/explode4.wav", 125, math.Rand(100, 110), 1, CHAN_WEAPON)
        end

        util.BlastDamage(self, self:GetOwner(), pos, 350, 150)
        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end
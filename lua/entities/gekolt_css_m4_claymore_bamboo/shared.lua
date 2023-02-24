ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Frag Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/geckololt_css/c_bamboo.mdl"
ENT.FuseTime = 15
ENT.ArmTime = 0
ENT.ImpactFuse = true

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
            phys:SetMass(15)
            phys:SetDragCoefficient(4)
        end

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

        if data.HitEntity ~= self.Head and self.ImpactFuse then
            self:Detonate()
        end
    end
end

function ENT:PhysicsUpdate(phys)
    local v = self:GetVelocity()
    if v:LengthSqr() > 16384 and not self:IsPlayerHolding() then
        self:SetAngles(v:Angle())
        self:GetPhysicsObject():SetVelocityInstantaneous(v)
    end
end

function ENT:Think()
    if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
        self:Detonate()
    end
end

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
            self:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
        else
            util.Effect( "HelicopterMegaBomb", effectdata)
            self:EmitSound("phx/kaboom.wav", 125, 100, 1, CHAN_AUTO)
            self:EmitSound("^weapons/explode" .. math.random(3, 5) .. ".wav", 125, 110, 1, CHAN_AUTO)
        end

        local attacker = self:GetOwner() or self

        util.BlastDamage(self, attacker, self:GetPos(), 200, 100)

        self:Remove()

    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end
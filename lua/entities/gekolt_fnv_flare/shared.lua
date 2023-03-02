ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Flare Round"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/w_missile_launch.mdl"
ENT.FuseTime = 15
ENT.ArmTime = 0

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
    end

    self.kt = CurTime() + self.FuseTime
    self.at = CurTime() + self.ArmTime
end

function ENT:PhysicsCollide(data, physobj)
    --if self.Collided then return end
    if IsValid(data.HitEntity) and data.Speed > 25 then
        --self.Collided = true
        local delta = math.Clamp((self.kt - CurTime()) / self.FuseTime, 0.1, 1)
        if delta <= 0.1 then return end
        if data.HitEntity:IsPlayer() then
            data.HitEntity:Ignite( delta * 5 )
        else
            data.HitEntity:Ignite( delta * 15 )
        end
    end
end

function ENT:Think()
    if SERVER then
        if CurTime() >= self.kt then
            self:Remove()
        end
    elseif CLIENT then
        local emitter = ParticleEmitter(self:GetPos())
        local delta = math.Clamp((self.kt - CurTime())/self.FuseTime, 0.1, 1)

        if !self:IsValid() or self:WaterLevel() > 2 then return end

        local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
        smoke:SetVelocity( VectorRand() * 25 )
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(60, 85)) )
        smoke:SetDieTime( math.Rand(0.5,1.5) )
        smoke:SetStartAlpha( 255 * delta )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 5 )
        smoke:SetEndSize( 20 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 200, 20, 20 )
        smoke:SetAirResistance( 5 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( false )
        emitter:Finish()
    end
end

function ENT:Detonate()
    self:Remove()
end

function ENT:Draw()
    if CLIENT then
        local delta = math.Clamp((self.kt - CurTime()) / self.FuseTime, 0.1, 1)
        local minsize = 200 * delta
        local maxsize = 600 * delta
        local light = DynamicLight(self:EntIndex())
        if (light) then
            light.Pos = self:GetPos()
            light.r = 255
            light.g = 160
            light.b = 60
            light.Brightness = 4
            light.Decay = 3
            light.Size = 512
            light.DieTime = CurTime() + 0.2
        end
        cam.Start3D() -- Start the 3D function so we can draw onto the screen.
            render.SetMaterial( Material("effects/blueflare1") ) -- Tell render what material we want, in this case the flash from the gravgun
            render.DrawSprite( self:GetPos(), math.random(minsize, maxsize), math.random(minsize, maxsize), Color(255 * delta, 0, 0) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
        cam.End3D()
    end
end
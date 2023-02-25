ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "HE Bamboozle"

ENT.Model = "models/weapons/geckololt_css/c_bamboo.mdl"
ENT.FuseTime = 10
ENT.ArmTime = 0.05
ENT.ImpactFuse = true

ENT.SmokeTrail = true
ENT.SparkTrail = false

AddCSLuaFile()

function ENT:SetupDataTables()
    self:NetworkVar("Bool", 0, "Defused")
end

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

        timer.Simple(0.25, function()
            if IsValid(self) then
                self.Attacker = self:GetOwner()
                self:SetOwner(NULL) -- allow the owner to interact with this
                --constraint.NoCollide(self, self.Attacker, 0, 0)
            end
        end)
    end

    self.SpawnTime = CurTime()
end

if SERVER then
    function ENT:PhysicsCollide(data, physobj)
        if data.Speed > 75 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_hard" .. math.random(1,3) .. ".wav"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_soft" .. math.random(1,3) .. ".wav"))
        end

        if not self:GetDefused() and self.ImpactFuse and CurTime() > self.SpawnTime + self.ArmTime then
            self:Detonate()
        elseif not self:GetDefused() then
            if IsValid(data.HitEntity) then
                local attacker = self.Attacker or self:GetOwner() or self
                local dmg = DamageInfo()
                dmg:SetAttacker(attacker)
                dmg:SetInflictor(self)
                dmg:SetDamage(Lerp((data.OurOldVelocity:Length() - 500) / 500, 0, 100) + 20)
                dmg:SetDamageType(DMG_CRUSH)
                dmg:SetDamageForce(data.OurOldVelocity:GetNormalized() * 5000)
                dmg:SetDamagePosition(data.HitPos)
                data.HitEntity:TakeDamageInfo(dmg)
            end
            self:Defuse(data.OurOldVelocity:GetNormalized())
            self:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 2)
        end
    end

    function ENT:Defuse(dir)
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())
        effectdata:SetMagnitude(2)
        effectdata:SetScale(1)
        effectdata:SetRadius(2)
        effectdata:SetNormal(dir or self:GetVelocity():GetNormalized())
        util.Effect("Sparks", effectdata)
        self:EmitSound("weapons/rpg/shotdown.wav", 100, 150)
        self:SetDefused(true)
        SafeRemoveEntityDelayed(self, 5)
    end

    function ENT:PhysicsUpdate(phys)
        local v = self:GetVelocity()
        if not self:GetDefused() and v:LengthSqr() > 16384 and not self:IsPlayerHolding() then
            self:SetAngles(v:Angle())
            self:GetPhysicsObject():SetVelocityInstantaneous(v)
        end
    end

    function ENT:Think()
        if CurTime() - self.SpawnTime >= self.FuseTime then
            if not self:GetDefused() then
                self:Detonate()
            else
                self:Remove()
            end
        end
    end

    function ENT:Detonate()
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

        local dmg = Lerp(math.Clamp((CurTime() - self.SpawnTime - 0.5) / 2.5, 0, 1), 100, 300)

        util.BlastDamage(self, self.Attacker or self:GetOwner() or self, self:GetPos(), 200, dmg)

        self:Remove()
    end

    function ENT:OnTakeDamage(dmg)
        if not self.BOOM then
            self.BOOM = true
            if dmg:IsExplosionDamage() or dmg:IsDamageType(DMG_BURN) or dmg:GetDamage() > 25 then
                self:Detonate()
            else
                self:Defuse(dmg:GetDamageForce():GetNormalized())
                self:TakePhysicsDamage(dmg)
            end
        end
    end
end

if CLIENT then
    function ENT:Think()
        if self:GetDefused() then return end
        if self:WaterLevel() > 2 then return end
        local vel = self:GetVelocity():Length()
        local armed = self.SpawnTime + self.ArmTime < CurTime()

        local emitter = ParticleEmitter(self:GetPos() + self:GetForward() * 12)
        if not IsValid(emitter) then return end

        if self.SmokeTrail and (self.NextSmokeTime or 0) < CurTime() then
            self.NextSmokeTime = CurTime() + 0.02 / math.Clamp(vel / 500, 0.1, 3)
            local c = Lerp(math.Clamp((CurTime() - self.SpawnTime - 0.5) / 2.5, 0, 1), 150, 25)
            local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
            smoke:SetVelocity(VectorRand() * 5)
            smoke:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)))
            smoke:SetDieTime(math.Rand(0.2, 0.4))
            smoke:SetStartAlpha(255)
            smoke:SetEndAlpha(0)
            smoke:SetStartSize(4)
            smoke:SetEndSize(16)
            smoke:SetRoll(math.Rand(-180, 180))
            smoke:SetRollDelta(math.Rand(-0.2, 0.2))
            smoke:SetColor(c, c, c)
            smoke:SetAirResistance(5)
            smoke:SetLighting(false)
        end

        if self.SparkTrail and (self.NextSparkTime or 0) < CurTime() then
            self.NextSparkTime = CurTime() + (armed and 0.001 or 0.01)
            local fire = emitter:Add("effects/spark", self:GetPos())
            fire:SetVelocity(VectorRand() * 100 + self:GetVelocity() * -0.25)
            fire:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), -1000))
            fire:SetDieTime(math.Rand(0.5, 1))
            fire:SetStartAlpha(255)
            fire:SetEndAlpha(0)
            fire:SetStartSize(armed and 4 or 1)
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

function ENT:Draw()
    self:DrawModel()
end
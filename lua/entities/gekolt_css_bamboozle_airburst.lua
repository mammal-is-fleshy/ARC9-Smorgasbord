ENT.Type = "anim"
ENT.Base = "gekolt_css_bamboozle_he"
ENT.PrintName = "Airburst Bamboozle"

ENT.Model = "models/weapons/geckololt_css/c_bamboo.mdl"

AddCSLuaFile()

ENT.ArmTime = 0.8
ENT.ImpactFuse = false

ENT.SmokeTrail = false
ENT.SparkTrail = true

if SERVER then
    function ENT:Think()
        if self:GetDefused() then return end
        if CurTime() - self.SpawnTime >= self.FuseTime then
            self:Remove()
        end

        if self.SpawnTime + self.ArmTime < CurTime() and (self.NextTraceTime or 0) < CurTime() then
            self.NextTraceTime = CurTime() + 0.1

            local dir = self:GetVelocity():GetNormalized()
            local deg = math.Clamp(1.5 - dir:Cross(Vector(0, 0, -1)):Length(), 0.5, 1)

            local tr = util.TraceHull({
                start = self:GetPos(),
                endpos = self:GetPos() + dir * (1024 * deg),
                filter = self,
                mins = Vector(-16, -16, -8),
                maxs = Vector(16, 16, 8)
            })
            if tr.Hit then
                self:Detonate()
            end
        end
    end

    function ENT:Detonate()
        local attacker = self.Attacker or self:GetOwner() or self
        local dir = self:GetVelocity():GetNormalized()
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())

        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 100, 100, 1, CHAN_AUTO)
        else
            effectdata:SetMagnitude(4)
            effectdata:SetScale(1)
            effectdata:SetRadius(16)
            effectdata:SetNormal(dir)
            util.Effect("Sparks", effectdata)
            self:EmitSound("^weapons/explode" .. math.random(3, 5) .. ".wav", 100, 110, 1, CHAN_AUTO)
            self:EmitSound("physics/metal/metal_box_break1.wav", 100, 200)
        end

        if self:GetDefused() then
            if self:WaterLevel() == 0 then
                util.Effect( "HelicopterMegaBomb", effectdata)
            end
            util.BlastDamage(self, self.Attacker or self:GetOwner() or self, self:GetPos(), 250, 150)
            self:Remove()
            return
        end

        local deg = Lerp(math.Clamp((CurTime() - self.SpawnTime - self.ArmTime) / 1.5, 0, 1), 0.25, 1) --math.Clamp(1.5 - dir:Cross(Vector(0, 0, -1)):Length(), 0.5, 1)

        self:FireBullets({
            Attacker = attacker,
            Damage = 5,
            Force = 1,
            Distance = 2048,
            HullSize = 16,
            Num = 48,
            Tracer = 1,
            Src = self:GetPos(),
            Dir = dir,
            Spread = Vector(1, 1, 0),
            IgnoreEntity = self,
        })
        local dmg = DamageInfo()
        dmg:SetAttacker(attacker)
        dmg:SetDamageType(DMG_BULLET + DMG_BLAST)
        dmg:SetInflictor(self)
        dmg:SetDamageForce(self:GetVelocity() * 100)
        for _, ent in pairs(ents.FindInCone(self:GetPos(), dir, 1024, 0.707)) do
            local tr = util.QuickTrace(self:GetPos(), ent:WorldSpaceCenter() - self:GetPos(), self)
            if tr.Entity == ent then
                dmg:SetDamagePosition(self:GetPos())
                dmg:SetDamage(150 * math.Rand(0.8, 1) * deg)
                ent:TakeDamageInfo(dmg)
                print(ent, dmg:GetDamage())
            end
        end

        util.BlastDamage(self, attacker, self:GetPos(), 128, 100)

        self:Remove()
    end
end
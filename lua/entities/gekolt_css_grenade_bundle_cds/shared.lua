AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Frag Grenade"
ENT.Base = "gekolt_css_grenade_bundle"

ENT.SmokeTrail = true
ENT.SparkTrail = false

function ENT:Detonate()
    if SERVER and not self.Exploded then
        self.Exploded = true
        local d = (self.AdditionalNades or 6) / 6

        local pos = self:GetPos()
        local effectdata = EffectData()
        effectdata:SetOrigin(pos)
        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
        else
            util.Effect("Explosion", effectdata)
            self:EmitSound("^ambient/explosions/explode_3.wav", 100 + d * 15, 110 - d * 20, 0.7 + d * 0.3, CHAN_AUTO)
        end


        for i = 1, math.ceil(2 + d * 18) do
            local tr = util.TraceLine({
                start = self:GetPos(),
                endpos = self:GetPos() + Angle(math.Rand(-5, 5), math.Rand(0, 360), 0):Forward() * math.Rand(256 * d, 640 * d),
                mask = MASK_SHOT,
                filter = self,
            })
            effectdata:SetOrigin(tr.HitPos)
            util.Effect("HelicopterMegaBomb", effectdata)
        end

        util.BlastDamage(self, self:GetOwner(), pos, 384 + d * 384, 50 + d * 100)
        util.BlastDamage(self, self:GetOwner(), pos, 256 + d * 256, 75 + d * 225)

        self:Remove()
    end
end
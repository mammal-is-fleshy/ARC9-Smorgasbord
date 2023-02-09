AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Frag Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.Base = "gekolt_css_grenade_bundle"

function ENT:Detonate()
    if SERVER and not self.Exploded then
        self.Exploded = true

        local pos = self:GetPos()
        local effectdata = EffectData()
        effectdata:SetOrigin(pos)
        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
        else
            util.Effect("Explosion", effectdata)
            self:EmitSound("^ambient/explosions/explode_3.wav", 125, 100, 1, CHAN_AUTO)
        end

        for i = 1, 15 do
            local tr = util.TraceLine({
                start = self:GetPos(),
                endpos = self:GetPos() + Angle(math.Rand(-15, 15), math.Rand(0, 360), 0):Forward() * math.Rand(128, 512),
                mask = MASK_SHOT,
                filter = self,
            })
            effectdata:SetOrigin(tr.HitPos)
            util.Effect("HelicopterMegaBomb", effectdata)
        end

        util.BlastDamage(self, self:GetOwner(), pos, 728, 150)
        util.BlastDamage(self, self:GetOwner(), pos, 512, 250)

        self:Remove()
    end
end
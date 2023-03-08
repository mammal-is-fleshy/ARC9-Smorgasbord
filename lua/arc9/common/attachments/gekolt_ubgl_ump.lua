ATT.PrintName = [[Kleinevoller-45]]
ATT.CompactName = "UMP-45"
ATT.Icon = Material("entities/gekolt_dod_ubw_ump.png")
ATT.Description = [[
Puts the U in Universal
**Requires a magazine to grip.**
]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/geckololt_css/atts/ubgl/c_ump.mdl"
ATT.LHIK = true

ATT.IKAnimationProxy = {
    ["fire_ubgl"] = {
        Source = "fire",
    },
    ["reload_ubgl"] = {
        Source = "wet",
        EventTable = {		
            {s =  "gekolt_css/ump45_clipout.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/ump45_clipin.wav" ,    t = 59 / 40},			
        },
    },  
	["reload_ubgl_empty"] = {
        Source = "dry",
        EventTable = {		
            {s =  "gekolt_css/ump45_clipout.wav" ,   t = 5 / 40},
            {s =  "gekolt_css/ump45_clipin.wav" ,    t = 59 / 40},	
            {s =  "gekolt_css/ump45_boltslap.wav" ,   t = 89 / 40},			
        },
    },	
    ["enter_ubgl"] = {
        Source = "to_armed"
    },
    ["idle_ubgl"] = {
        Source = "idle_armed"
    },
    ["exit_ubgl"] = {
        Source = "to_idle"
    },
} -- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2

ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, -90, -90)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"css_ubgl"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "pistol"
ATT.UBGLClipSize = 15
ATT.UBGLFiremode = -1
ATT.UBGLFiremodeName = "UMP-45"
ATT.UBGLChamberSize = 1
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 700

ATT.SpreadUBGL = 0.025

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "gekolt_css/ump45-1.wav"
ATT.DistantShootSoundUBGL = false
ATT.HasSightsUBGL = false


ATT.NumUBGL = 1
-- General recoil multiplier
ATT.RecoilUBGL = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
ATT.RecoilUpUBGL = 0.35 -- Multiplier for vertical recoil
ATT.RecoilSideUBGL = 0.2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
ATT.RecoilRandomUpUBGL = 0.15
ATT.RecoilRandomSideUBGL = 0.15

ATT.RecoilDissipationRateUBGL = 70 -- How much recoil dissipates per second.
ATT.RecoilResetTimeUBGL = 0 -- How long the gun must go before the recoil pattern starts to reset.

ATT.RecoilAutoControlUBGL = 0 -- Multiplier for automatic recoil control.

ATT.RecoilKickUBGL = 1.25


ATT.DamageMaxUBGL = 32 -- Damage done at point blank range
ATT.DamageMinUBGL = 14 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 12000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 3 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_pistol"

ATT.ModelOffset = Vector(0, 0, 1)
ATT.ModelAngleOffset = Angle(0, 0, 0)


ATT.Attachments = {
    {
        PrintName = "UBGL Magazine",
        Category = {"smorg_ubgl_ump_mag"},
        Pos = Vector(-2.5,0, 4),
        Ang = Angle(0, 180, 0),
    },
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["ubgl_ump_mag_9mm"] then
        model:SetBodygroup(1,1)
	elseif	swep:GetElements()["ubgl_ump_mag_10mm"] then
        model:SetBodygroup(1,2)
    else
        model:SetBodygroup(1,0)
    end  	
end
ATT.PrintName = [[Knockzy-26 Door & Personnel Deterent]]
ATT.CompactName = [[KNOCKER]]
ATT.Icon = Material("entities/gekolt_css_m4_u_pump.png")
ATT.Description = [[
5-Round 12 gauge box magazine pumping shotgun for your handguard
Most polite way to open a door
**Requires a magazine to grip.**
]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/geckololt_css/atts/ubgl/c_mass.mdl"
ATT.LHIK = true

ATT.IKAnimationProxy = {
    ["fire_ubgl"] = {
        Source = "fire",
        EventTable = {
            {s =  "gekolt_css/m3_pump.wav" ,   t = 10 / 40},
        },		
    },
    ["fire_ubgl_empty"] = {
        Source = "fire_dry",
    },
    ["reload_ubgl"] = {
        Source = "wet",
        EventTable = {		
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 8 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 59 / 40},			
        },
    },
    ["reload_ubgl_empty"] = {
        Source = "dry",
        EventTable = {		
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 8 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 59 / 40},	
            {s =  "gekolt_css/m3_pump.wav" ,   t = 89 / 40},			
        },
    },	
    ["enter_ubgl"] = {
        Source = "to_armed"
    },
    ["idle_ubgl"] = {
        Source = "idle_armed"
    },
    ["idle_ubgl_empty"] = {
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
ATT.UBGLAmmo = "buckshot"
ATT.UBGLClipSize = 5
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "MASS-26"
ATT.UBGLChamberSize = 1
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 90

ATT.SpreadUBGL = 0.025

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "gekolt_css/xm1014-1.wav"
ATT.DistantShootSoundUBGL = false
ATT.HasSightsUBGL = false


ATT.NumUBGL = 8
-- General recoil multiplier
ATT.RecoilUBGL = 2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
ATT.RecoilUpUBGL = 0.7 -- Multiplier for vertical recoil
ATT.RecoilSideUBGL = 0.7 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
ATT.RecoilRandomUpUBGL = 0.3
ATT.RecoilRandomSideUBGL = 0.3

ATT.RecoilDissipationRateUBGL = 50 -- How much recoil dissipates per second.
ATT.RecoilResetTimeUBGL = 0 -- How long the gun must go before the recoil pattern starts to reset.

ATT.RecoilAutoControlUBGL = 0 -- Multiplier for automatic recoil control.

ATT.RecoilKickUBGL = 2


ATT.DamageMaxUBGL = 52 -- Damage done at point blank range
ATT.DamageMinUBGL = 30 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 12000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 3 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_shotgun"

ATT.ModelOffset = Vector(0, 0, 1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
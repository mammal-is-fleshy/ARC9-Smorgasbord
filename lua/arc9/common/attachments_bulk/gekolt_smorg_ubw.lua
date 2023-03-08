local ATT = {}

-- MASS --

ATT = {}
ATT.PrintName = [[Knockzy-26 Door & Personnel Deterrent]]
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
        Source = "fire",
        EventTable = {
            {s =  "gekolt_css/m3_pump.wav" ,   t = 10 / 40},
        },		
    },
    ["fire_ubgl_glempty"] = {
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
    ["reload_ubgl_glempty"] = {
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
    ["idle_ubgl_glempty"] = {
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
ATT.UBGLFiremodeName = "Knockzy-26"
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

ARC9.LoadAttachment(ATT, "gekolt_ubgl_mass")

-- Garand --

ATT = {}

ATT.PrintName = [[Sawnoff Garand]]
ATT.CompactName = "GANDRIAL"
ATT.Icon = Material("entities/gekolt_dod_ubw_garand.png")
ATT.Description = [[
Throws grenades at people too well! banned & classified in 1949
**Requires a magazine to grip.**
]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/geckololt_css/atts/ubgl/c_garandgrenade.mdl"
ATT.LHIK = true

ATT.IKAnimationProxy = {
    ["fire_ubgl"] = {
        Source = "fire",
    },
    ["reload_ubgl"] = {
        Source = "dry",
        EventTable = {
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 10 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 15 / 40},
            {s =  "gekolt_dod/k98_singleshotreload.wav" ,   t = 45 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,    t = 72 / 40},
        },
    },
    ["enter_ubgl"] = {
        Source = "to_ubgl1"
    },
    ["enter_ubgl_glempty"] = {
        Source = "to_ubgl"
    },
    ["exit_ubgl"] = {
        Source = "from_ubgl1"
    },
    ["exit_ubgl_glempty"] = {
        Source = "from_ubgl"
    },
    ["idle_ubgl"] = {
        Source = "idle_ubgl1"
    },
    ["idle_glempty"] = {
        Source = "idle_gun"
    },
    ["idle_ubgl_glempty"] = {
        Source = "idle_ubgl"
    },
}

 -- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2

ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, -90, -90)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"css_ubgl"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.SprintToFireTimeAdd = 0.05
ATT.AimDownSightsTimeAdd = 0.02
ATT.SwayMult = 1.1

ATT.FreeAimRadiusUBGL = 3

ATT.UBGL = true
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "'GANDRIAL'"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 600

ATT.SpreadUBGL = 0.005

ATT.ShootEntUBGL = "gekolt_css_m4_nade"
ATT.ShootEntForceUBGL = 10000
ATT.ShootSoundUBGL = {"cturix_ar15/fire_grenade1.wav", "cturix_ar15/fire_grenade2.wav", "cturix_ar15/fire_grenade3.wav"}
ATT.DistantShootSoundUBGL = {"cturix_ar15/fire_grenade_dist.wav"}
ATT.HasSightsUBGL = false

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.ModelOffset = Vector(0, 0, 1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "gekolt_ubgl_garand")


-- UMP --

ATT = {}

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
}
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

ARC9.LoadAttachment(ATT, "gekolt_ubgl_ump")

----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[9mm]]
ATT.CompactName = [[9mm]]
ATT.Icon = Material("entities/gekolt_dod_ubw_ump9.png", "mips smooth")
ATT.Description = [[lil gun]]

ATT.SortOrder = 1
ATT.Category = "smorg_ubgl_ump_mag"
ATT.ActivateElements = {"ubgl_ump_mag_9mm"}

ATT.DamageMaxUBGL = 13
ATT.DamageMinUBGL = 9
ATT.RPMUBGL = 900

ATT.RangeMinUBGL = 900
ATT.RangeMaxUBGL = 7000

ATT.RecoilUpUBGL = 0.2
ATT.RecoilSideUBGL = 0.12

ATT.RecoilRandomUpUBGL = 0.2
ATT.RecoilRandomSideUBGL = 0.3

ATT.SpreadAddHipFireUBGL = -0.0006
ATT.RecoilMultRecoilUBGL = 0.98
ATT.SpreadMultRecoilUBGL = 0.985

ARC9.LoadAttachment(ATT, "gekolt_ubgl_ump_9mm")

----------------------------------------------------------------------------------

ATT = {}
ATT.PrintName = [[10mm]]
ATT.CompactName = [[10mm]]
ATT.Icon = Material("entities/gekolt_dod_ubw_ump10.png", "mips smooth")
ATT.Description = [[not so lil gun]]

ATT.SortOrder = 1
ATT.Category = "smorg_ubgl_ump_mag"
ATT.ActivateElements = {"ubgl_ump_mag_10mm"}

ATT.DamageMaxUBGL = 32
ATT.DamageMinUBGL = 13
ATT.RPMUBGL = 600

ATT.RangeMinUBGL = 900
ATT.RangeMaxUBGL = 7000

ATT.RecoilUpUBGL = 0.2
ATT.RecoilSideUBGL = 0.12

ATT.RecoilRandomUpUBGL = 0.2
ATT.RecoilRandomSideUBGL = 0.3

ATT.SpreadAddHipFireUBGL = -0.0006
ATT.RecoilMultRecoilUBGL = 0.98
ATT.SpreadMultRecoilUBGL = 0.985

ARC9.LoadAttachment(ATT, "gekolt_ubgl_ump_10mm")

----------------------------------------------------------------------------------

--- UBGL SPECIFIC ---
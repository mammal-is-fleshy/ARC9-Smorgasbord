local ATT = {}

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Auxiliary Rifle]]
ATT.CompactName = [[XM70]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[Least based Swedish gun
A not G3 underbarrel weapon for your anti-tank rifle
]]

ATT.SortOrder = 1
ATT.Category = "moah_m18_kit"
ATT.ActivateElements = {"kit_xm70"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
		ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"}, 
        Pos = Vector(-15,0, 0.1),
        Ang = Angle(0, 0, 0),		
    },		
}

ATT.LHIK = true
ATT.LHIK_Priority = 0
ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-8.5, -4.5, 5)
ATT.ModelAngleOffset = Angle(0, 0, 5)
ATT.Model = "models/weapons/geckololt_css/c_m18.mdl"
ATT.ModelBodygroups = "223043"

ATT.ShootSound = "gekolt_css/g3sg1-1.wav"
ATT.ShootSoundUBGL = "gekolt_dod/1887_fire01.wav"
ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_xm"
end

-- stat Normal --

ATT.DamageType = DMG_BULLET
ATT.DamageMax = 35 -- Damage done at point blank range
ATT.DamageMin = 24 -- Damage done at maximum range

ATT.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMin = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMax = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.Penetration = 8 -- Units of wood that can be penetrated by this gun.

ATT.ChamberSize = 1 -- The amount of rounds this gun can chamber.
ATT.ClipSize = 20 -- Self-explanatory.
ATT.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
ATT.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

-- General recoil multiplier
ATT.Recoil = 1.25

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
ATT.RecoilUp = 0.45 -- Multiplier for vertical recoil
ATT.RecoilSide = 0.7 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
ATT.RecoilRandomUp = 0.3
ATT.RecoilRandomSide = 0.6

ATT.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
ATT.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

ATT.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

ATT.RecoilKick = 1.5

-------------------------- VISUAL RECOIL

ATT.UseVisualRecoil = true

ATT.VisualRecoilUp = 0.01 -- Vertical tilt for visual recoil.
ATT.VisualRecoilSide = 0.01 -- Horizontal tilt for visual recoil.
ATT.VisualRecoilRoll = 0.2 -- Roll tilt for visual recoil.

ATT.VisualRecoilCenter = Vector(0, 4, 0) -- The "axis" of visual recoil. Where your hand is.

ATT.VisualRecoilPunch = 0.1 -- How far back visual recoil moves the gun.

ATT.VisualRecoilMult = 1

ATT.VisualRecoilHipFire = false



-- stat UBGL --
ATT.UBGL = true
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "M18"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110

ATT.DamageTypeUBGL = DMG_BLAST + DMG_AIRBOAT
ATT.DamageMaxUBGL = 200 -- Damage done at point blank range
ATT.DamageMinUBGL = 420 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.SpreadUBGL = 0.0025

-- General recoil multiplier
ATT.RecoilUBGL = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
ATT.RecoilUpUBGL = 0.3 -- Multiplier for vertical recoil
ATT.RecoilSideUBGL = 1.2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
ATT.RecoilRandomUpUBGL = 0.15
ATT.RecoilRandomSideUBGL = 0.75

ATT.RecoilDissipationRateUBGL = 50 -- How much recoil dissipates per second.
ATT.RecoilResetTimeUBGL = 0 -- How long the gun must go before the recoil pattern starts to reset.

ATT.RecoilAutoControlUBGL = 0 -- Multiplier for automatic recoil control.

ATT.RecoilKickUBGL = 2

-------------------------- VISUAL RECOIL

ATT.UseVisualRecoilUBGL = true

ATT.VisualRecoilUpUBGL = 0.01 -- Vertical tilt for visual recoil.
ATT.VisualRecoilSideUBGL = 0.01 -- Horizontal tilt for visual recoil.
ATT.VisualRecoilRollUBGL = 0.2 -- Roll tilt for visual recoil.

ATT.VisualRecoilCenterUBGL = Vector(0, 4, 0) -- The "axis" of visual recoil. Where your hand is.

ATT.VisualRecoilPunchUBGL = 0.5 -- How far back visual recoil moves the gun.

ATT.VisualRecoilMultUBGL = 2

ATT.VisualRecoilHipFireUBGL = true

// ATT.HasSightsUBGL = false

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ARC9.LoadAttachment(ATT, "gekolt_moah_m18_sweden")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Rocket Launcher Conversion]]
ATT.CompactName = [[RPG]]
// ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")
ATT.Description = [[Fuck it we ball
no animala yet
]]

ATT.SortOrder = 3
ATT.Category = "moah_m18_kit"
ATT.ActivateElements = {"kit_rpg"}

ARC9.LoadAttachment(ATT, "gekolt_moah_m18_rpg")


----------------------------------------------------------------------------------
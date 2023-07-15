local ATT = {}

----------------------------------------------------------------------------------
--- anglicised a bit of north germanic so j > y, umlauts to +e

ATT = {}

ATT.PrintName = [[Hjaelpare-Stomme]]
ATT.CompactName = [[XM70]]
ATT.Icon = Material("entities/gekolt_moah_xm72.png", "mips smooth")
ATT.Description = [[You've heard of underbarrel anti-tank weapons, get ready for...
A not G3 underbarrel weapon for your anti-tank rifle.
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
ATT.ShootSoundUBGL = "rzen1th_smor/m18_fire.wav"
ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"
ATT.DistantShootSoundSilenced = "cturix_ar15/fire_blackout_dist.wav"

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_xm"
end

-- stat Normal --

ATT.Ammo = "ar2"
ATT.MuzzleEffectQCA = 3
ATT.CaseEffectQCA = 2
ATT.PhysBulletMuzzleVelocity = 2900 * 12

ATT.DamageType = DMG_BULLET
ATT.DamageMax = 35 -- Damage done at point blank range
ATT.DamageMin = 24 -- Damage done at maximum range

ATT.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMin = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMax = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.Penetration = 8 -- Units of wood that can be penetrated by this gun.

ATT.AlwaysPhysBullet = false

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
ATT.UBGLAmmo = "RPG_Round"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "Anti-Armour"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110

ATT.DamageTypeUBGL = DMG_BLAST + DMG_BULLET + DMG_AIRBOAT
ATT.DamageMaxUBGL = 800 -- Damage done at point blank range
ATT.DamageMinUBGL = 300 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 9000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.AlwaysPhysBulletUBGL = true
ATT.PhysBulletMuzzleVelocityUBGL = 2225 * 8.5

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

-- ATT.HasSightsUBGL = false

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model

	if wep:GetUBGL() then
		model:SetBodygroup(6,1)
	else
		model:SetBodygroup(6,2)
	end
end

ARC9.LoadAttachment(ATT, "gekolt_moah_m18_sweden")


----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Landskap Yeagare-Stomme]] -- landship hunter???
ATT.CompactName = [[RPG]]
ATT.Icon = Material("entities/gekolt_moah_rpg2.png", "mips smooth")
ATT.Description = [[Ditch your anti-armour mindset and fully embrace madness
They really tried to snuck an RPG in.]]

ATT.SortOrder = 3
ATT.Category = "moah_m18_kit"
ATT.ActivateElements = {"kit_rpg"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_rpg"
end
ATT.ShootSound = "gekolt_dod/1887_fire01.wav"
ATT.ShootEnt = "gekolt_moah_m18_rocket"
ATT.ShootEntForce = 200000

ATT.AimDownSightsTimeAdd = -0.06
ATT.SprintToFireTimeAdd = -0.1

ARC9.LoadAttachment(ATT, "gekolt_moah_m18_rpg")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Rustning Genomtraengare-Stomme]] -- armour penetrator???
ATT.CompactName = [[TANDUM]]
ATT.Icon = Material("entities/gekolt_moah_rpg3.png", "mips smooth")
ATT.Description = [[Concentrated explosive to retain the normal anti-armour mindset
Still madness.]]

ATT.SortOrder = 4
ATT.Category = "moah_m18_kit"
ATT.ActivateElements = {"kit_rpg2"}

ATT.ShootSound = "gekolt_dod/1887_fire01.wav"
ATT.ShootEnt = "gekolt_moah_m18_rocket_tandem"
ATT.ShootEntForce = 200000

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_rpg"
end

ATT.AimDownSightsTimeAdd = -0.04
ATT.SprintToFireTimeAdd = -0.05

ARC9.LoadAttachment(ATT, "gekolt_moah_m18_rpg2")


----------------------------------------------------------------------------------


--- M72


----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[0 Gauge]]
ATT.CompactName = [[SG]]
ATT.Icon = Material("entities/gekolt_css_ammo/shotgun.png", "mips smooth")
ATT.Description = [[The biggest of all the bucks. 
DOESNT FUCKING WORK
]]

ATT.Attachments = {
    {
        PrintName = "Ammo Type",
        DefaultName = "Default Type",
        Category = {"css_ammo_sg"},
        Pos = Vector(0,0,3),
        Ang = Angle(0, 0, 0),
    },
}

ATT.Hook_TranslateAnimation = function(wep, anim) -- mang fuck that shit
    return anim .. "_sg"
end

ATT.ShootEntOverride = nil
ATT.SortOrder = 1
ATT.Category = "pr2_m72_ammo"
ATT.ActivateElements = {"a_12g"}

ATT.Ammo = "buckshot"

ATT.PhysBulletMuzzleVelocityOverride = 2900 * 12
ATT.PhysBulletGravityOverride = 1
ATT.PhysBulletDragOverride = 1

ATT.SpreadAdd = 0.08

ATT.PenetrationOverride = 1
ATT.RicochetChanceOverride = 0.25

ATT.NumOverride = 50

ATT.DamageMaxOverride = 22
ATT.DamageMinOverride = 6
ATT.RangeMinOverride = 750
ATT.RangeMaxOverride = 10000

ATT.PhysBulletModelOverride = false
ATT.ImpactDecalOverride = ""

ATT.SuppressSmokeTrail = true

ATT.ShootSoundOverride = {"cturix_m79/fire_buck_large-1.wav", "cturix_m79/fire_buck_large-2.wav", "cturix_m79/fire_buck_large-3.wav", "cturix_m79/fire_buck_large-4.wav"}
ATT.ShellSoundsOverride = {"cturix_m79/shotshell_large-1.wav", "cturix_m79/shotshell_large-2.wav", "cturix_m79/shotshell_large-3.wav", "cturix_m79/shotshell_large-4.wav"}


ATT.MuzzleParticleOverride = "muzzleflash_shotgun"

ATT.TracerColor = Color(255, 225, 200)
ATT.TracerSize = 1

ARC9.LoadAttachment(ATT, "gekolt_pr2_m72_a1")

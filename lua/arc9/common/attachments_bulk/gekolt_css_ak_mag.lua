local ATT = {}

ATT = {}
--- never anglicise/latinise Russian again
ATT.PrintName = [[Atakovat-Rama]]
ATT.CompactName = [[Carbine]]
ATT.Icon = Material("entities/gekolt_css_ak_u_545.png", "mips smooth")
ATT.Description = [[Intermediate solution for normal infantry.
Better at sustained fire, but slightly less stopping power.]]

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_54"
end

ATT.ShootSound = "oneshotof_cs16/galil-1.wav"
--ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.SortOrder = 1
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_545"}

ATT.Trivia = {
    ["Country of Origin"] = [[[Soviet] Russia]],
    ["Caliber"] = "5.45x39mm",
}

ATT.DamageMax = 40
ATT.DamageMin = 20

ATT.RangeMin = 900
ATT.RangeMax = 7000

ATT.RecoilUp = 0.2
ATT.RecoilSide = 0.12

ATT.RecoilRandomUp = 0.2
ATT.RecoilRandomSide = 0.3

ATT.SpreadAddHipFire = -0.0006
ATT.RecoilMultRecoil = 0.98
ATT.SpreadMultRecoil = 0.985

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag1")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Okhota-Rama]]
ATT.CompactName = [[Marksman]]
ATT.Icon = Material("entities/gekolt_css_ak_u_308.png", "mips smooth")
ATT.Description = [[Battle rifle caliber conversion. More accurate, more powerful, longer range.
Punishing recoil makes firing more than one shot at a time difficult.]]

ATT.Firemodes = {
    {
        Mode = 1
    },
    {
        Mode = -1,
    },
}

ATT.ClipSizeOverride = 15

ATT.RPMMult = 400 / 600

ATT.DamageMax = 65
ATT.DamageMin = 34

ATT.RangeMin = 1200
ATT.RangeMax = 12000

ATT.RecoilUp = 0.4
ATT.RecoilSide = 0.3

ATT.Spread = 0.0005

ATT.RecoilKick = 2

ATT.RecoilMultRecoil = 1.3
ATT.SpreadAddRecoil = 0.001
ATT.SpreadMultRecoil = 1.05
ATT.SpreadAddHipFire = 0.0006
ATT.RecoilModifierCap = 7
ATT.RecoilDissipationRate = 20

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_25"
end

ATT.ShootSound = "oneshotof_cs16/sg552-1.wav"
--ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.SortOrder = 10
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_308"}

ATT.Trivia = {
    ["Country of Origin"] = [[[Soviet] Russia]],
    ["Caliber"] = "7.62x51mm NATO",
}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Erikoinen-Rama]]  -- this is finnish btw
ATT.CompactName = [[Assault]]
ATT.Icon = Material("entities/gekolt_css_ak_u_556.png", "mips smooth")
ATT.Description = [[Magwell adaptor to use a NATO caliber through Western Magic™.
Mediocre stopping power, but has very controlable recoil on a heavy gun like this.]]

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_56"
end

ATT.ShootSound = {"oneshotof_cs16/m4a1_unsil-1.wav", "oneshotof_cs16/m4a1_unsil-2.wav"}
--ATT.ShootSoundSilenced = "oneshotof_cs16/m4a1-1.wav"

ATT.SortOrder = 2
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_556"}

ATT.Trivia = {
    ["Country of Origin"] = [[[Soviet] Russia]],
    ["Caliber"] = "5.56x45mm NATO",
}

ATT.DamageMax = 35
ATT.DamageMin = 20

ATT.RangeMin = 700
ATT.RangeMax = 6000

ATT.RecoilUp = 0.17
ATT.RecoilSide = 0.1

ATT.RecoilRandomUp = 0.15
ATT.RecoilRandomSide = 0.2

ATT.RecoilKick = 1.2

ATT.SpreadAddHipFire = -0.0008
ATT.RecoilMultRecoil = 0.975
ATT.SpreadMultRecoil = 0.95

ATT.RecoilModifierCap = 18
ATT.RecoilDissipationRate = 20

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Podvod-Rama]]
ATT.CompactName = [[Dart]]
ATT.Icon = Material("entities/gekolt_css_ak_u_aps.png", "mips smooth")
ATT.Description = [[Fletchette dart underwater firing mechanism that also works on land.
Unimpressive ballistics profile, but does extra damage underwater.
Long steel projectile penetrates well and is very lethal on headshot.]]

ATT.Trivia = {
    ["Country of Origin"] = [[[Soviet] Russia]],
    ["Caliber"] = "5.66x39mm MPS",
}

ATT.HeadshotDamage = 2

ATT.DamageMax = 34
ATT.DamageMin = 15

ATT.RangeMin = 900
ATT.RangeMax = 2500

ATT.CanFireUnderwater = true
ATT.ClipSizeOverride = 26

ATT.RecoilUp = 0.2
ATT.RecoilSide = 0.2

ATT.RecoilRandomUp = 0.15
ATT.RecoilRandomSide = 0.15

ATT.RicochetChanceOverride = 0
ATT.PenetrationMult = 3
ATT.ArmorPiercingAdd = 2
ATT.PhysBulletMuzzleVelocityMult = 0.5

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_water"
end

ATT.Hook_BulletImpact = function(wep, data)
    if bit.band(util.PointContents(data.tr.HitPos), CONTENTS_WATER) == CONTENTS_WATER or bit.band(util.PointContents(wep:GetPos()), CONTENTS_WATER) == CONTENTS_WATER then
        data.dmgv = data.dmgv * 1.5
    end
end

ATT.ShootSound = "oneshotof_cs16/sg550-1.wav"
--ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"


ATT.Sights = {
    {
        Pos = Vector(0, 8, -5.2),
        Ang = Angle(0, 0, 0),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.SortOrder = 15
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_566", "noguard", "nofg"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Kavaleriya-Rama]]
ATT.CompactName = [[LMG]]
ATT.Icon = Material("entities/gekolt_css_ak_u_cal.png", "mips smooth")
ATT.Description = [[
Mounted or on the move, embrace your Tachanka spirit and purge the royalist Whites
Completely altered weapon requires a heavier trigger.
]]

ATT.CaseEffectQCA = 3
ATT.ClipSizeOverride = 47
ATT.RPMMult = 550 / 600
ATT.ChamberSizeOverride = 0

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_dp"
end

ATT.TriggerDelay = true
ATT.TriggerDelayTime = 0.07
ATT.TriggerDownSound = "gekolt_css/weaponclick.wav"
--ATT.TriggerUpSound = "gekolt_css/sliderelease.wav"

ATT.ShootSound = "oneshotof_cs16/m249-1.wav"
--ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.ActivePosOverride = Vector(0, 6, -1.5)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.MovingPosOverride = Vector(0, 5.5, -1.5)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.SortOrder = 30
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_disk", "noguard", "pre_muzzed"}

ATT.Sights = {
    {
        Pos = Vector(0, 12, -5.24),
        Ang = Angle(0, 0, 0),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}


ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag5")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Dobavoch-Rama]]
ATT.CompactName = [[Aux]]
ATT.Icon = Material("entities/gekolt_css_ak_u_pp.png", "mips smooth")
ATT.Description = [[Sub-machine configuration
For scenarios where you need to downgrade your rifle.
]]

ATT.ClipSizeOverride = 32

ATT.RPMMult = 900 / 600
ATT.DamageMaxMult = 0.6
ATT.DamageMinMult = 0.45
ATT.RangeMinMult = 1.2
ATT.RangeMaxMult = 0.7

ATT.RecoilMult = 0.625

ATT.Ammo = "pistol"

ATT.ShootSound = {"oneshotof_cs16/mp5-1.wav", "oneshotof_cs16/mp5-2.wav"}
--ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.SortOrder = 12
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_919"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_9mm"
end

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag6")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Gelikoidal-Rama]]
ATT.CompactName = [[Hex]]
ATT.Icon = Material("entities/gekolt_css_ak_u_bizon.png", "mips smooth")
ATT.Description = [[
Helically stacked pistol cartridge
Actual «sub»-machine.
]]

ATT.ClipSizeOverride = 64

ATT.RPMMult = 900 / 600
ATT.DamageMaxMult = 0.6
ATT.DamageMinMult = 0.45
ATT.RangeMinMult = 1.2
ATT.RangeMaxMult = 0.7

ATT.RecoilMult = 0.625

ATT.Ammo = "pistol"

ATT.SortOrder = 13
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_919x", "nofg", "no_amd"}
ATT.ExcludeElements = {"no_bizon"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_bizon"
end

ATT.ShootSound = "oneshotof_cs16/ump45-1.wav"
--ATT.ShootSoundSilenced = "gekolt_css/ar10_sd.wav"

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-13, -2, 3)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag7")

----------------------------------------------------------------------------------


ATT = {}
ATT.PrintName = [[Dvornik-Rama]]
ATT.CompactName = [[16G]]
ATT.Icon = Material("entities/gekolt_css_ak_u_saiga.png", "mips smooth")
ATT.Description = [[How does small barrel fit big bullets?
Why is mag so small?
Are you still mental?
]]

ATT.SortOrder = -100
ATT.Category = "css_ak_up"
ATT.ActivateElements = {"u_drum"}
ATT.MuzzleParticle = "muzzleflash_shotgun"
ATT.ShootSound = "gekolt_css/xm1014-1.wav"

ATT.ClipSizeOverride = 20

ATT.RPMMult = 300 / 600

ATT.NumOverride = 8
ATT.SpreadAdd = 0.03
ATT.DamageMaxMult = 0.45
ATT.DamageMinMult = 0.45

ATT.RecoilMult = 4
ATT.RecoilPatternDriftMult = 5

ATT.Ammo = "buckshot"


ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_12"
end

ATT.Attachments = {
    {
        PrintName = "Ammo Type",
        DefaultName = "Default Type",
        Category = {"css_ammo_sg"},
        Pos = Vector(-2, 0, 3.5),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_mag8")
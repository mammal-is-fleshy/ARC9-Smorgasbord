ATT.PrintName = "Lincoln Corp 10A2 Frame"
ATT.CompactName = "LC10-Frame"
ATT.Icon = Material("entities/gekolt_css_awp_f_lc10.png", "mips smooth")
ATT.Description = [[Mockup frame of a relic from a certain fridgid war.
Somehow change all the internal mechanism with a click of a button.
Effectively turn the rifle into a really bad SMG.
Only for the blackest of operations!!!]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_awp_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"awp_f_smg", "short_clamp", "notop", "ubgl_maghold"}
ATT.MuzzleParticle = "muzzleflash_ak47"
ATT.ShootSound = "gekolt_css/mp5-1.wav"

ATT.SwayMult = 1.5
ATT.AccuracyMOAMult = 3
ATT.HipDispersionMult = 2
ATT.SightsDispersionMult = 2
ATT.SightTimeMult = 0.75

ATT.Mult_SpeedMultSights = 0.5
ATT.Mult_SpeedMultShooting = 0.5
ATT.Ammo = "pistol"

ATT.ClipSizeOverride = 25


ATT.AimDownSightsTimeMult = 0.75
ATT.DamageMaxMult = 45/60
ATT.DamageMinMult = 20/160
ATT.RangeMinMult = 0.8
ATT.RangeMaxMult = 0.8
ATT.RecoilMult = 0.4
ATT.RecoilKickMult = 1.2/3

ATT.RPMMult = 900/50
ATT.Firemodes = {
    {
        Mode = -1,
    }
}

ATT.Sights = {
    {
        Pos = Vector(1.6, 0, 10),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_smg"
end
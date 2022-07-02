ATT.PrintName = "Little Italy Receiver"
ATT.CompactName = "Perosa"
ATT.Icon = Material("")
ATT.Description = [[Twin barrel 9mm madness.
Comes with a preinstalled grip for recoil control]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 7

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_perosa", "pre_muzzed", "noguard", "nogrip"}

ATT.ShootSound = "gekolt_css/mp5-1.wav"
ATT.ShootSoundSilenced = "gekolt_css/tmp-1.wav"

ATT.ClipSizeOverride = 64
ATT.ChamberSize = 2

ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.5
ATT.RangeMinMult = 1.15
ATT.RangeMaxMult = 0.65

ATT.RecoilMult = 0.5

ATT.Ammo = "pistol"
ATT.ModelBodygroups = "0"

ATT.Firemodes = {
    {
		PrintName = "Alternating",
        Mode = -1,
		RPMMult = 1800 / 700
    },
    {
		PrintName = "Simutaneous",
        Mode = -1,
		NumOverride = 2,
		AmmoPerShot = 2,
		RPMMult = 900 / 700		
    },	
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_perosa"
end


ATT.Sights = {
    {
        Pos = Vector(0, 17, -4.9),
        Ang = Angle(0, 0, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Model = "models/weapons/geckololt_css/atts/fg.mdl"
ATT.ModelOffset = Vector(12.25, 0, -1.5)
ATT.ModelAngleOffset = Angle(90, 0, -90)


ATT.LHIK_Priority = 10
ATT.LHIK = true
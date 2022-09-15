ATT.PrintName = "Defiant Receiver"
ATT.CompactName = "Defiant"
ATT.Icon = Material("entities/gekolt_css_m4_u_pdw.png", "mips smooth")
ATT.Description = [[PDW is such a concept
Turns your M4 into a non-PDW length PDW firing from P90 magazines.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_pdw", "noguard", "nogrip", "short_clamp", "akantbo"}
ATT.ShootSound = "gekolt_css/p90-1.wav"
ATT.MuzzleParticle = "muzzleflash_smg"

ATT.ClipSizeOverride = 50

ATT.RPMMult = 900 / 700

ATT.Sights = {
    {
        Pos = Vector(0, 10, -5.275),
        Ang = Angle(0, 0, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_pdw"
end

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(2, 0, -2)
ATT.ModelAngleOffset = Angle(90, 0, -90)
ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_cali.mdl"

ATT.RecoilMult = 0.75
ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.75
ATT.RangeMinMult = 0.5
ATT.RangeMaxMult = 1.75

ATT.Ammo = "smg1"
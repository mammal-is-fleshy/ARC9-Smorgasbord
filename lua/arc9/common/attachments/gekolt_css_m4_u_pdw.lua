ATT.PrintName = "Defiant Receiver"
ATT.CompactName = "PDW"
ATT.Icon = Material("")
ATT.Description = [[Hey why doesn't this one have a proper remodel.
Turns your m4 into a non-PDW length PDW.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_pdw", "noguard", "nogrip"}
ATT.ShootSound = "gekolt_css/p90-1.wav"

ATT.ClipSizeOverride = 50

ATT.RPMMult = 900/700

ATT.Sights = {
    {
        Pos = Vector(0, 10, -5.275),
        Ang = Angle(0, 0, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
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
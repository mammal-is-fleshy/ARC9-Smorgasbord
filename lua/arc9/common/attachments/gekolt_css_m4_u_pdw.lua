ATT.PrintName = "Defiant Receiver"
ATT.CompactName = "PDW"
ATT.Icon = Material("")
ATT.Description = [[Hey why doesn't this one have a proper remodel.
Turns your m4 into a non-PDW length PDW.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_pdw", "noguard"}
ATT.ShootSound = "gekolt_css/p90-1.wav"

ATT.ClipSizeOverride = 50

ATT.RPMMult = 900/700
ATT.Firemodes = {
    {
        Mode = -1,
        Recoil = 0.4, -- add other attachment modifiers
    }
}

ATT.Sights = {
    {
        Pos = Vector(3.325, 0, 8),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_pdw"
end
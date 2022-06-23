ATT.PrintName = "Predator Receiver"
ATT.CompactName = "Marksman"
ATT.Icon = Material("")
ATT.Description = [[Bolt action converter for sniper calibre.
Comes with a built-in suppressor.
Somehow change all the internal mechanism with a click of a button.
Don't ask how the bolt handle travels that far without clipping into the stock.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_bolt", "noguard"}
ATT.ShootSound = "gekolt_css/m4a1-1.wav"

ATT.ClipSizeOverride = 5

ATT.RPMMult = 50/700

ATT.Sights = {
    {
        Pos = Vector(3.8, 0, 5),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_bolt"
end
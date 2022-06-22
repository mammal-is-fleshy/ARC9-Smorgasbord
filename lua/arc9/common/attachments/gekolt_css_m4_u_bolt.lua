ATT.PrintName = "Predator Kit Receiver"
ATT.CompactName = "Marksman Kit"
ATT.Icon = Material("")
ATT.Description = [[Bolt action converter for sniper calibre.
Comes with a built-in suppressor.
Somehow change all the internal mechanism with a click of a button.
Don't ask how the bolt handle travels that far without clipping into the stock.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_bolt"}
ATT.ShootSound = "gekolt_css/m4a1-1.wav"

ATT.ClipSizeOverride = 5

ATT.RangeMult = 0.6
ATT.Mult_Sway = 1.5
ATT.Mult_AccuracyMOA = 3
ATT.Mult_HipDispersion = 2
ATT.Mult_SightsDispersion = 2
ATT.Mult_SightTime = 0.75
ATT.Mult_SpeedMultSights = 1.5

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 50/700
ATT.Firemodes = {
    {
        Mode = -1,
        Recoil = 0.4, -- add other attachment modifiers
		DamageMax = 120,
		DamageMin = 60,
    }
}

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
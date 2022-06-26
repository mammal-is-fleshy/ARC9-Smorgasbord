ATT.PrintName = "Lincoln Corp 10A2 Frame"
ATT.CompactName = "LC10-Frame"
ATT.Icon = Material("entities/arc9_att_m16_barrel_a1.png", "mips smooth")
ATT.Description = [[Mockup frame of a relic from a certain fridgid war.
Somehow change all the internal mechanism with a click of a button.
Effectively turn the rifle into a really bad SMG.
Only for the blackest of operations!!!]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_awp_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"awp_f_smg"}
ATT.MuzzleParticle = "muzzleflash_ak47"
ATT.ShootSound = "gekolt_css/mp5-1.wav"

ATT.Mult_Sway = 1.5
ATT.Mult_AccuracyMOA = 3
ATT.Mult_HipDispersion = 2
ATT.Mult_SightsDispersion = 2
ATT.Mult_SightTime = 0.75
ATT.Mult_SpeedMultSights = 1.5

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 900/50
ATT.Firemodes = {
    {
        Mode = -1,
        Recoil = 0.4, -- add other attachment modifiers
		ClipSize = 25,
		DamageMax = 45,
		DamageMin = 20,
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
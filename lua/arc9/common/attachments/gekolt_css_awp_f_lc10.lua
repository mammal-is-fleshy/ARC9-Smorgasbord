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

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_smg"
end
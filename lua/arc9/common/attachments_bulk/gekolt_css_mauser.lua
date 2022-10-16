local ATT = {}

ATT = {}

ATT.PrintName = [[Kantschapper-Frame]]
ATT.CompactName = [[Auto]]
ATT.Icon = Material("entities/gekolt_css_m9_f_auto.png", "mips smooth")
ATT.Description = [[ongewoon
]]

ATT.SortOrder = 1
ATT.Category = "dod_mauser_frame"
ATT.ActivateElements = {"f_auto"}

ATT.Firemodes = { { Mode = 1, } }

ATT.ClipSizeOverride = 5

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_edge"
end

ATT.RPMMult = 300/800
ATT.RecoilMult = 3
ATT.RecoilSideMult = 8
ATT.RecoilRandomSideMult = 0.75/0.3

ATT.DamageMaxMult = 95/26
ATT.DamageMinMult = 60/16 

ATT.Attachments = {
    {
        PrintName = "Stock",
        DefaultName = "None",		
        Category = {"css_m9_stock"},
        Pos = Vector(0, 2, 5),
        Ang = Angle(90, 0, -90),		
    },		
}

ARC9.LoadAttachment(ATT, "gekolt_css_mauser_f1")
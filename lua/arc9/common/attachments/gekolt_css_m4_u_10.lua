ATT.PrintName = "Prototype Receiver"
ATT.CompactName = "AR10"
ATT.Description = [[Older design that some how is more accurate than the modern one. Really makes you question the decisions of the devs.
Fitted with a 20-Round .308 magazine
Magically increases damage while reduce rpm for apparantly no reasons]]

ATT.Icon = Material("")

ATT.SortOrder = 1.5
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_proto"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_proto"
end

ATT.ClipSizeOverride = 20
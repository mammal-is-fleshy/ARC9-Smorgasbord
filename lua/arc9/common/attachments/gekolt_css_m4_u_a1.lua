ATT.PrintName = "Logistic Receiver"
ATT.CompactName = "Logi"
ATT.Description = [[Old-fashioned receiver for old-fashioned people. It only works in three-round burst mode. Pretty lousy.]]

ATT.Icon = Material("entities/gekolt_css_m4_u_a1.png", "mips smooth")

ATT.SortOrder = 0.5
ATT.Category = "css_m4_up"
ATT.ActivateElements = {"up_a1", "keep_rs"}

ATT.Firemodes = {
    {
        Mode = 3,
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_a1"
end

ATT.ClipSizeOverride = 20

ATT.RPMMult = 1.5
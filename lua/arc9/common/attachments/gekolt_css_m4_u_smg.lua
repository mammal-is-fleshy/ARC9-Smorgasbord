ATT.PrintName = "whatthehellshouldicallthis Receiver"
ATT.CompactName = "9mm"
ATT.Icon = Material("")
ATT.Description = [[It's just an adaptor stuck in to a normal magwell.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_9mm"}
ATT.ShootSound = "gekolt_css/glock18-1.wav"

ATT.ClipSizeOverride = 32

ATT.RPMMult = 900/700
ATT.Firemodes = {
    {
        Mode = -1,
        Recoil = 0.4, -- add other attachment modifiers
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_smg"
end
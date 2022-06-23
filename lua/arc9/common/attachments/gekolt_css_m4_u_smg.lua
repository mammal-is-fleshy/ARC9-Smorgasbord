ATT.PrintName = "whatthehellshouldicallthis Receiver"
ATT.CompactName = "M635"
ATT.Icon = Material("")
ATT.Description = [[It's just an adaptor stuck in to a normal magwell.]]
 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_9mm"}
ATT.ShootSound = "gekolt_css/p90-1.wav"

ATT.ClipSizeOverride = 32

ATT.RPMMult = 900/700

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_smg"
end
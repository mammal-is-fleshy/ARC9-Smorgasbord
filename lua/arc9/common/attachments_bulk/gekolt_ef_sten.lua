local ATT = {}

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "LMG-Frame"
ATT.CompactName = "Salad Mender"
//ATT.Icon = Material("entities/gekolt_dod_garand_vanguard.png", "mips smooth")
ATT.Description = [[Belt-fed mechanicsm bollocks
Heavier trigger is required]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 30

ATT.TriggerDelay = true
ATT.TriggerDelayTime = 0.07
ATT.TriggerDownSound = "gekolt_css/weaponclick.wav"
//ATT.TriggerUpSound = "gekolt_css/sliderelease.wav"

ATT.ClipSizeOverride = 90
ATT.AimDownSightsTimeMult = 1.5
ATT.SprintToFireTimeMult = 1.5
ATT.SpeedMult = 0.9
ATT.RecoilPatternDriftMult = 3

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_lmg"
end

ATT.Category = "ef_sten_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"f_mk5"}

ARC9.LoadAttachment(ATT, "gekolt_ef_sten_1")
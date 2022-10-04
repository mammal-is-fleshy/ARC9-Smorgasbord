ATT.PrintName = "Survivalist Frame"
ATT.CompactName = "SKS"
ATT.Icon = Material("entities/gekolt_dod_garand_romania.png", "mips smooth")
ATT.Description = [[Coversion to a higher calibre with a fixed magazine, stripper load only]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 3

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_sks", "nogrip"}

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 250/300
ATT.Firemodes = {
    {
        Mode = 1,	
    },
}

ATT.ClipSizeOverride = 12
ATT.ChamberSizeOverride = 1

ATT.DamageMaxMult = 105/80
ATT.DamageMinMult = 45/30
ATT.RecoilMult = 0.8/0.7
ATT.RecoilKickMult = 2.5/3

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 1.05

ATT.ShotgunReload = true

ATT.Hook_TranslateAnimation = function(wep, anim)
	if anim == "reload_start_empty" then return "reload_start_empty_sks" end
	if anim == "reload_insert_1" then return "reload_insert_sks_1" end
	if anim == "reload_insert_5" then return "reload_insert_sks_5" end
	
    return anim .. "_sks"
end
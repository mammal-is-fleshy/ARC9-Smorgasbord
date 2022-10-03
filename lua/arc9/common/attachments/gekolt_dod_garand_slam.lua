ATT.PrintName = "Trencher Frame"
ATT.CompactName = "SLAM"
ATT.Icon = Material("entities/gekolt_dod_garand_slam.png", "mips smooth")
ATT.Description = [[Unholy creation for all your trench sweeping needs. Both the enemies and your allies will be confused]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_slam"}
ATT.MuzzleParticle = "muzzleflash_shotgun"
ATT.ShootSound = "gekolt_dod/1887_fire01.wav"
ATT.ShellModelOverride = "models/shells/shell_12gauge.mdl"
ATT.ShellScaleOverride = 1

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 120/300
ATT.Firemodes = {
    {
        Mode = 1,
		PrintName = "Pump"		
    },
    {
        Mode = -1,
		PrintName = "SLAM"			
    }
}

ATT.ClipSizeOverride = 7

ATT.FreeAimRadiusAdd = 5
ATT.NumOverride = 10
ATT.SpreadAdd = 0.0175
ATT.DamageMaxMult = 12/80
ATT.DamageMinMult = 6/30

ATT.RecoilMult = 3

ATT.Ammo = "buckshot"

ATT.ShotgunReload = true

ATT.Hook_TranslateAnimation = function(wep, anim)
	if anim == "reload_start_empty" then return "reload_start_empty_slam" end
	if anim == "reload_insert_1" then return "reload_insert_slam" end
	if anim == "reload_insert_5" then return "reload_insert_slam_5" end	
    return anim .. "_slam"
end
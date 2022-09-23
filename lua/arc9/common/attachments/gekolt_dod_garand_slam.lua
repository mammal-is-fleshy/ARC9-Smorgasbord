ATT.PrintName = "Trencher Frame"
ATT.CompactName = "SLAM"
// ATT.Icon = Material("entities/gekolt_css_awp_f_howell.png", "mips smooth")
ATT.Description = [[Unholy creation for all your sweeping needs]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_slam"}
ATT.MuzzleParticle = "muzzleflash_shotgun"
ATT.ShootSound = "gekolt_css/xm1014-1.wav"

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

ATT.NumOverride = 10
ATT.SpreadAdd = 0.0175
ATT.DamageMaxMult = 12/80
ATT.DamageMinMult = 6/30

ATT.RecoilMult = 3

ATT.Ammo = "buckshot"

ATT.ShotgunReload = true

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_slam"
end
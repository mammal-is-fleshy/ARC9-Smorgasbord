ATT.PrintName = "Marksman Frame"
ATT.CompactName = "M14"
// ATT.Icon = Material("entities/gekolt_css_awp_f_howell.png", "mips smooth")
ATT.Description = [[Cold War era upgrade]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_m14"}
ATT.MuzzleParticle = "muzzleflash_smg"
--ATT.ShootSound = "gekolt_css/ak47-1.wav"

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 500/300
ATT.Firemodes = {
    {
        Mode = 1
    },
    {
        Mode = -1,
    }
}
ATT.ClipSizeOverride = 20
ATT.ChamberSizeOverride = 1

ATT.DamageMaxMult = 90/60
ATT.DamageMinMult = 60/160
ATT.RecoilMult = 1.15
ATT.RecoilKickMult = 2/3

ATT.SpeedMultSightsMult = 2
ATT.SpeedMultShootingMult = 1.25
ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.15

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_308"
end
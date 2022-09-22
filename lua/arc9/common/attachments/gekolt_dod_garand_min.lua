ATT.PrintName = "Sportsman Frame"
ATT.CompactName = "Mini-14"
// ATT.Icon = Material("entities/gekolt_css_awp_f_howell.png", "mips smooth")
ATT.Description = [[Modern-ish thing]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"garand_mini"}
ATT.MuzzleParticle = "muzzleflash_smg"
--ATT.ShootSound = "gekolt_css/ak47-1.wav"

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 650/300
ATT.Firemodes = {
    {
        Mode = 1
    },
    {
        Mode = -1,
    }
}
ATT.ClipSizeOverride = 20

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
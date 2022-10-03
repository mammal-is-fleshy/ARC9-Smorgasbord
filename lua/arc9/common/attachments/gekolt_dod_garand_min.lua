ATT.PrintName = "Sportsman Frame"
ATT.CompactName = "Mini-14"
ATT.Icon = Material("entities/gekolt_dod_garand_mini.png", "mips smooth")
ATT.Description = [[Modernised Mag-Fed system loaded in a lower calibre]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "dod_garand_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ShootSound = "gekolt_dod/m1carbine_shoot1.wav"
ATT.ActivateElements = {"garand_mini"}
ATT.MuzzleParticle = "muzzleflash_smg"

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 650/300
ATT.Firemodes = {
    {
        Mode = -1
    },
    {
        Mode = 1,
    }
}
ATT.ClipSizeOverride = 30
ATT.ChamberSizeOverride = 1

ATT.DamageMaxMult = 32/80
ATT.DamageMinMult = 18/30
ATT.RecoilMult = 0.5/0.75
ATT.RecoilKickMult = 1.5/3

ATT.AimDownSightsTimeMult = 0.95
ATT.SprintToFireTimeMult = 0.95

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_mini"
end




ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-7.5, -2, 3)
ATT.ModelAngleOffset = Angle(120, -90, 0)
ATT.Model = "models/weapons/geckololt_css/c_garand.mdl"
ATT.ModelBodygroups = "15000"
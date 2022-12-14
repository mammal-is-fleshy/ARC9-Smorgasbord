ATT.PrintName = "Howell Full-Auto Frame"
ATT.CompactName = "AUTO-Frame"
ATT.Icon = Material("entities/gekolt_css_awp_f_howell.png", "mips smooth")
ATT.Description = [[This ancient mechanism from the 1900s allows your not so lee enfield looking gun to fire in [SEMI]-auto!
Extremely questionable choice for your bolt action of this calibre. Or not, not here to judge.
Comes with a comically large 20 round mag that for some reason look like it could hold 10 more.
Despite using the exact same calibre the damage is reduced in the name of videogame balance.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "css_awp_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"awp_f_howell", "ubgl_maghold"}
ATT.MuzzleParticle = "muzzleflash_smg"
--ATT.ShootSound = "gekolt_css/ak47-1.wav"

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 350/50
ATT.Firemodes = {
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
    return anim .. "_br"
end
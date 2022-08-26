ATT.PrintName = "Blackout Receiver"
ATT.CompactName = "Blackout"
ATT.Icon = Material("entities/gekolt_css_m4_u_sd.png", "mips smooth")
ATT.Description = [[Interally suppressed total conversion for barrel and receiver that chambers the gun in .300 Blackout.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_sd", "noguard", "pre_muzzed"}
ATT.ShootSound = "gekolt_css/hb_sd.wav"

ATT.MuzzleParticleOverride = "muzzleflash_suppressed"

ATT.RPMMult = 650/700
ATT.RangeMaxMult = 0.75
ATT.RangeMinMult = 0.9

ATT.DamageMaxMult = 1.25
ATT.DamageMinMult = 0.5

ATT.RecoilMult = 1.05

ATT.Ammo = "357"

ATT.Attachments = {
    {
        PrintName = "MOUNT TOP",
        Category = {"tac_css_flat", "mount_css"},
        Pos = Vector(0,-1.8, -12),
        Ang = Angle(90, 0, -90),
    },		
}

ATT.Hook_TranslateAnimation = function(wep, anim)
	if anim == "reload_empty" then return "reload_empty_sd" end	
end

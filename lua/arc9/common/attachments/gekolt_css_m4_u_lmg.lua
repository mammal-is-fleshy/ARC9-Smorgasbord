ATT.PrintName = "Shrike Receiver"
ATT.CompactName = "Shrike"
ATT.Icon = Material("entities/gekolt_css_m4_u_lmg.png", "mips smooth")
ATT.Description = [[Upper receiver that takes a 120-round box magazine, effectively giving you a light machine gun. Its main purpose is looking cool.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 4

ATT.Category = "css_m4_up" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"up_lmg", "akantbo", "alt_optic"}
ATT.ShootSound = "gekolt_css/m249-1.wav"

ATT.ClipSizeOverride = 120
ATT.AimDownSightsTimeMult = 1.5
ATT.SprintToFireTimeMult = 1.5
ATT.SpeedMult = 0.9
ATT.RecoilPatternDriftMult = 3

ATT.ActivePosOverride = Vector(-0.5, 2, -0.5)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.Hook_TranslateAnimation = function(wep, anim) 
	return anim .. "_lmg"
end

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = "mountr_css",
		InstalledElements = {"no_irons", "no_optic", "optic_main"},
        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
		ExcludeElements = {"fg_saw"},
        Category = {"optic_css_s", "optic_css_m" }, 
		
        Pos = Vector(0,-2.55, 0),
        Ang = Angle(90, 0, -90),	
    },
}
ATT.PrintName = "No Handguard"
ATT.CompactName = "No"
ATT.Description = [[Handguards are a conspiracy to sell more useless gun crap you don't need. You can make do without one.]]

ATT.Icon = Material("entities/gekolt_css_m4_h_sten.png", "mips smooth")

ATT.SortOrder = 0.1
ATT.Category = "css_m4_handguard"
ATT.ActivateElements = {"guard_sten", "nogrip", "short_clamp"}

ATT.SpeedMult = 1.15
ATT.AimDownSightsTimeMult = 0.8
ATT.SprintToFireTimeMult = 0.85
ATT.PhysBulletMuzzleVelocityMult = 0.5

ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_rest.mdl"
ATT.ModelOffset = Vector(-16, -2.5, 2)
ATT.ModelAngleOffset = Angle(90, 0, -90)

ATT.LHIK_Priority = 5
ATT.LHIK = true

ATT.Attachments = {	
    {
        PrintName = "Clamp",
        Category = {"clamp_s_css"},
        Pos = Vector(0,0.25, 0.5),
        Ang = Angle(90, 0, -90),
        Icon_Offset = Vector(0, 0, 5)
    },	
	
}
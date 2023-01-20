ATT.PrintName = "Tri-Beam"
ATT.CompactName = "TROIS"
ATT.Description = [[]]

ATT.Icon = Material("entities/gekolt_css_tac_las3.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = {"tac_css","mountr_css","mountl_css"}
ATT.Model = "models/weapons/geckololt_css/atts/tribeam.mdl"
ATT.Folder = "LIGHT-LAM"

ATT.AimDownSightsTimeMult = 1.03
ATT.SprintToFireTimeMult = 1.03

ATT.ToggleOnF = true -- This attachment is toggleable with the flashlight key.
ATT.ToggleStats = {
    {
        PrintName = "Laser",
        Laser = true,
        LaserStrength = 1,
        LaserColor = Color(0, 255, 0),
        LaserAttachment = 2,
        SwayMult = 1.02,
        FreeAimRadiusMultHipFire = 0.75,
        Flare = true,
        FlareColor = Color(0, 255, 0),
        FlareSize = 50,
        FlareAttachment = 2,
        FlareFocus = true,
	
    },
    {
        PrintName = "None",
    }
}

ATT.Scale = 1.3

ATT.ModelOffset = Vector(0, 0, -0.225)
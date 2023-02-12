ATT.PrintName = "AN/PEQ-15"
ATT.CompactName = "PEQ15"
ATT.Description = [[Tactical laser/light module that provides an aiming point while hip firing. Lasers help with aiming, and can blind enemies, but will reveal the location of the user.]]

ATT.Icon = Material("entities/gekolt_css_tac_las4.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = {"mount_css", "tac_css","mountr_css","mountl_css", "tac_css_flat"}
ATT.Model = "models/weapons/geckololt_css/atts/anpeq15.mdl"
ATT.Folder = "GADGET"

ATT.AimDownSightsTimeMult = 1.03
ATT.SprintToFireTimeMult = 1.03

ATT.ToggleOnF = true -- This attachment is toggleable with the flashlight key.
ATT.ToggleStats = {
    {
        PrintName = "Both",
        Laser = true,
        LaserStrength = 1,
        LaserColor = Color(0, 255, 0),
        LaserAttachment = 2,
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/flashlight001",
		FlashlightBrightness = 0.5,			
        FlashlightDistance = 1024,
        FlashlightFOV = 70,
        FlashlightAttachment = 1,
        SwayMult = 1.02,
        FreeAimRadiusMultHipFire = 0.75,
        Flare = true,
        FlareColor = Color(150, 255, 150),
        FlareSize = 150,
        FlareAttachment = 1
    },
    {
        PrintName = "Light",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/flashlight001",
		FlashlightBrightness = 0.5,		
        FlashlightDistance = 1024,
        FlashlightFOV = 70,
        FlashlightAttachment = 1,
        SwayMult = 1.02,
        FreeAimRadiusMultHipFire = 0.75,
        Flare = true,
        FlareColor = Color(255, 255, 255),
        FlareSize = 125,
        FlareAttachment = 1
    },
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
        FlareFocus = true
    },
    {
        PrintName = "None",
    }
}


ATT.Scale = 1.25

ATT.ModelOffset = Vector(0, 0, -0.25)
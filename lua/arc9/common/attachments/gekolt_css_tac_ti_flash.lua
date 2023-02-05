ATT.PrintName = "Flashlight B"
ATT.CompactName = "FLASH B"
ATT.Description = [[]]

ATT.Icon = Material("entities/gekolt_css_tac_flash2.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = {"tac_css","mountr_css","mountl_css"}
ATT.Model = "models/weapons/geckololt_css/atts/tac_ti_flash.mdl"

ATT.AimDownSightsTimeMult = 1.03
ATT.SprintToFireTimeMult = 1.03

ATT.ToggleOnF = true -- This attachment is toggleable with the flashlight key.
ATT.ToggleStats = {
    {
        PrintName = "Light",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/flashlight001",
        FlashlightDistance = 1024,
		FlashlightBrightness = 1,				
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
        PrintName = "None",
    }
}

ATT.Scale = 1.3

ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ModelOffset = Vector(0, 0, -0.25)
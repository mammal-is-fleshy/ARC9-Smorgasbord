ATT.PrintName = "Far View Scope"
ATT.CompactName = "FView"
ATT.Icon = Material("entities/gekolt_css_optic/farv.png", "mips smooth")
ATT.Description = [[]]
ATT.SortOrder = 6.1

ATT.Model = "models/weapons/geckololt_css/atts/farview.mdl"
ATT.ModelBodygroups = "00"

ATT.Category = {"optic_css", "optic_css_l", "optic_css_scope"}
ATT.Folder = "SCOPE"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.015, 10, -1.8),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 60
    },
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["acog_mount_rail"] then
        model:SetBodygroup(1,1)
    else
        model:SetBodygroup(1,0)
    end
end


ATT.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
		InstalledElements = {"acog_mount_rail"},	
		
        Category = {"optic_css_s",},
        Pos = Vector(6, 0, -4),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -4,
		Scale = 0.8,
    },		
}



ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeReticle = Material("arc9_css/scope10_border.png", "mips smooth")
ATT.RTScopeReticleScale = 1.05
ATT.RTScopeColorable = true

ATT.RTScopeFOVMax = 1.5
ATT.RTScopeFOVMin = 15
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 4

ATT.ScopeScreenRatio = 0.9
ATT.ScopeLength = 30

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.1
ATT.FreeAimRadiusMultSights = 0.12
ATT.AimDownSightsTimeAdd = 0.18
ATT.SprintToFireTimeAdd = 0.15

ATT.Flare = true
ATT.FlareColor = Color(255, 255, 255)
ATT.FlareSize = 32
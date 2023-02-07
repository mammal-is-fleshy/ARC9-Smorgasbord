ATT.PrintName = "ACOG"
ATT.CompactName = "ACOG"
ATT.Icon = Material("entities/gekolt_css_optic/acog.png", "mips smooth")
ATT.Description = [[Simple mid-ranged scope]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/geckololt_css/atts/acog.mdl"
ATT.ModelBodygroups = "00"

ATT.Category = {"optic_css", "optic_css_m", "optic_css_scope"}
ATT.Folder = "SCOPE"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.005, 8, -1.05),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.DrawFunc = function(swep, model, wm)
    if swep:GetElements()["acog_mount_rail"] then
        model:SetBodygroup(1,2)
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
        Pos = Vector(3.85, 0, -2.4),
        Ang = Angle(0, 0, 0),
        ExtraSightDistance = -4,
		Scale = 0.8,
    },
}


ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 10
ATT.RTScopeReticle = Material("arc9_css/scope2_border.png", "mips smooth")
ATT.RTScopeReticleScale = 0.98
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.ScopeScreenRatio = 0.9

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05
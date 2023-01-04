ATT.PrintName = "BIPOD"
ATT.CompactName = "BIPOD"
ATT.Description = [[pod means legs, bi means two.]]

// ATT.Icon = Material("entities/gekolt_css_fore_troy.png", "mips smooth")

ATT.SortOrder = 1
ATT.Category = {"rail_bottom"}

ATT.Model = "models/weapons/geckololt_css/atts/bipod_sg550.mdl"
ATT.ModelBodygroups = "00000"
ATT.ModelAngleOffset = Angle(0, 0, 180)
ATT.ModelOffset = Vector(0, 0, 0.5)

ATT.Bipod = true

ATT.DrawFunc = function(self, model)
	if self:GetBipod() then
		model:SetBodygroup(0,1)
	else 
		model:SetBodygroup(0,0)
	end
end
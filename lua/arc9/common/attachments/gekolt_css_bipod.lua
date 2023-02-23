ATT.PrintName = "Bipod"
ATT.CompactName = "Bipod"
ATT.Description = [[pod means legs, bi means two.
Massively improves recoil control and reduces cumulative spread while deployed.]]

ATT.Icon = Material("entities/gekolt_css_bipod.png", "mips smooth")

ATT.SortOrder = 20
ATT.Category = {"grip_css"}
ATT.ActivateElements = {"pre_bipod"}

ATT.Model = "models/weapons/geckololt_css/atts/bipod_sg550.mdl"
ATT.ModelBodygroups = "3"
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.ModelOffset = Vector(1.5, 0, 0.25)

ATT.Bipod = true
ATT.RecoilDissipationRateMultBipod = 2

ATT.DrawFunc = function(self, model, wm)
	if self:GetBipod() then
		model:SetBodygroup(0,1)
	else
		model:SetBodygroup(0,3)
	end
end
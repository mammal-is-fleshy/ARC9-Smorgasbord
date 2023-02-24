ATT.PrintName = "Angled Foregrip"
ATT.CompactName = "ANDER"
ATT.Description = [[Foregrip allowing faster aim acquisition
Slightly suffer from recoil and stability]]
ATT.Icon = Material("entities/gekolt_css_fore_angled.png", "mips smooth")

ATT.Model = "models/weapons/geckololt_css/atts/afg.mdl"

ATT.SortOrder = 10
ATT.Category = {"grip_css"}
ATT.ActivateElements = {"bottom_long"}
ATT.RecoilPatternDriftMult = 1.15
ATT.RecoilAutoControlMult = 0.8

ATT.LHIK_Priority = 10
ATT.LHIK = true

ATT.ModelOffset = Vector(0, 0, -0.25)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.SwayAdd = 0.4
ATT.AimDownSightsTimeMult = 0.75
ATT.SprintToFireTimeMult = 0.975
ATT.SpeedMult = 0.985	
ATT.RecoilMult = 1.05
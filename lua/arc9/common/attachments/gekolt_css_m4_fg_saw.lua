ATT.PrintName = "ChainSAW Foregrip"
ATT.CompactName = "ChainSAW"
ATT.Icon = Material("")
ATT.Description = [[Disables the ability to scope in.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_fg" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"fg_saw"}

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-12, -0.5, -0.2)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_saw.mdl"

ATT.ActivePosOverride = Vector(-1.5, 0, -5)
ATT.ActiveAngOverride = Angle(0, 0, -5)

ATT.HasSights = false

ATT.RecoilMult = 0.25
ATT.SpreadMultHipFire = 1.1
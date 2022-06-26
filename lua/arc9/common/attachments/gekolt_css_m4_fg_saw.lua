ATT.PrintName = "ChainSAW Foregrip"
ATT.CompactName = "ChainSAW"
ATT.Icon = Material("")
ATT.Description = [[Disables the ability to scope in.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_fg" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"fg_saw"}
ATT.ExcludeElements = {"no_optic"}


ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-12, -0.5, -0.2)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_saw.mdl"

ATT.ActivePosOverride = Vector(-1.5, 1, -5)
ATT.ActiveAngOverride = Angle(0, 0, -5)

ATT.CrouchPosOverride = Vector(-2, 0.5, -6)
ATT.CrouchAngOverride = Angle(0, 0, -10)

ATT.SprintPosOverride = Vector(1, 0, -0.5)
ATT.SprintAngOverride = Angle(30, -15, -30)

ATT.HasSights = false

ATT.Sights = {
    {
        Pos = Vector(2, 3, -10),
        Ang = Angle(0, 0, 0),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}


ATT.RecoilMult = 0.25
ATT.SpreadMultHipFire = 1.1
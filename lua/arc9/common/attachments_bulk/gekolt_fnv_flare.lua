local ATT = {}

ATT = {}

ATT.PrintName = "Leuchtfeuer-Gestell"
ATT.CompactName = "Leucht-42"
ATT.Icon = Material("entities/gekolt_fnv_flare_leucht.png", "mips smooth")
ATT.Description = [[Bracing and special payload for downed pilots to „signal“.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1

ATT.Category = "fnv_flare_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"leucht", "not_sg"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_leucht"
end

ATT.Num = 1
ATT.ShootEnt = "gekolt_css_m4_nade"
ATT.ShootEntForce = 10000

ATT.ActivePosOverride = Vector(-0.25, 1, -1.5)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.MovingPosOverride = Vector(-0.25, 0.5, -1.25)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.SprintPosOverride = Vector(5, -0.5, -2)
ATT.SprintAngOverride = Angle(35, -10, -10)

ATT.Sights = {
    {
        Pos = Vector(0, 8, -5.25),
        Ang = Angle(0, 0, 0),
        Reticle = nil,
		
        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "gekolt_fnv_flare_1")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Doppellaeufig-Gestell"
ATT.CompactName = "SLD"
ATT.Icon = Material("entities/gekolt_fnv_flare_sld.png", "mips smooth")
ATT.Description = [[Twice the barrel for twice the fun.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "fnv_flare_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"sld"}

ATT.ClipSizeOverride = 2

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_sld"
end

ATT.ActivePosOverride = Vector(-0.25, 1, -1.5)
ATT.ActiveAngOverride = Angle(0, 0, 0)

ATT.MovingPosOverride = Vector(-0.25, 0.5, -1.25)
ATT.MovingAngOverride = Angle(0, -2, 0)

ATT.SprintPosOverride = Vector(5, -0.5, -2)
ATT.SprintAngOverride = Angle(35, -10, -10)

ARC9.LoadAttachment(ATT, "gekolt_fnv_flare_2")


----------------------------------------------------------------------------------
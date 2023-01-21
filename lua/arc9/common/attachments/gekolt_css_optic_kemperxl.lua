ATT.PrintName = "Kemper XL"
ATT.CompactName = "K.XL"
ATT.Icon = Material("entities/gekolt_css_optic/ragnok.png", "mips smooth")
ATT.Description = [[Extremely wide holographic sight with a built in range finder]]
ATT.SortOrder = 0.2

ATT.Model = "models/weapons/geckololt_css/atts/ragnok.mdl"

ATT.Category = {"optic_css","optic_css_m","optic_css_holo"}
ATT.Folder = "REFLEX"

// Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0, 9, -2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 60
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9_css/ragnok.png", "mips smooth")
ATT.HoloSightSize = 2200
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.1)

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

if CLIENT then
    surface.CreateFont("css_font_digi", {
        font = "Arial",
        size = 25,
        weight = 625,
        antialias = true,
        extended = true
    })
end

if CLIENT then

    ATT.HoloSightFunc = function(swep, pos, mdl)
        local col = Color(200, 200, 250, 150)
        local col_tp = Color(col.r, col.g, col.b, 1)
        local ang = mdl:GetAngles()
        ang:RotateAroundAxis(ang:Right(), 90)
        ang:RotateAroundAxis(ang:Up(), -90)
        cam.Start3D2D(pos - (ang:Right() * 800) - (ang:Forward() * 1024), ang, 8)
        surface.SetDrawColor(col_tp)
        surface.SetDrawColor(col)

        local top = "-"
        local d = 32000

        local tr = util.TraceLine({
            start = mdl:GetPos(),
            endpos = mdl:GetPos() + (mdl:GetAngles():Forward() * d),
            mask = MASK_SHOT,
            filter = swep:GetOwner()
        })

        if tr.HitSky then
            top = "OUT OF RANGE"
        else
            top = tostring(math.ceil(tr.Fraction * d * ARC9.HUToM)) .. "m"
        end

        surface.SetTextColor(col)
        surface.SetFont("css_font_digi")
        surface.SetTextPos(128 - (surface.GetTextSize(top) / 2), -5)
        surface.DrawText(top)

        cam.End3D2D()
    end
end
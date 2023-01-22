local ATT = {}

ATT = {}

ATT.PrintName = [[Folding Stock A]]
ATT.CompactName = [[F.A]]
ATT.Icon = Material("entities/gekolt_css_ak_s_fold.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 1
ATT.Category = "css_ak_stock"
ATT.ActivateElements = {"s_fold1"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_stock1")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Folding Stock B]]
ATT.CompactName = [[F.B]]
ATT.Icon = Material("entities/gekolt_css_ak_s_fold2.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 2
ATT.Category = "css_ak_stock"
ATT.ActivateElements = {"s_fold2"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_stock2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Folding Stock C]]
ATT.CompactName = [[F.C]]
ATT.Icon = Material("entities/gekolt_css_ak_s_fold3.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 2
ATT.Category = "css_ak_stock"
ATT.ActivateElements = {"s_fold3"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_stock3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Sliding Stock]]
ATT.CompactName = [[Slide]]
ATT.Icon = Material("entities/gekolt_css_ak_s_slide.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 0
ATT.Category = "css_ak_stock"
ATT.ActivateElements = {"s_slide"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_stock4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Heavy Stock]]
ATT.CompactName = [[Heavy]]
ATT.Icon = Material("entities/gekolt_css_ak_s_rpk.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 6
ATT.Category = "css_ak_stock"
ATT.ActivateElements = {"s_rpk"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_stock5")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Full Stock]]
ATT.CompactName = [[Full]]
ATT.Icon = Material("entities/gekolt_css_ak_s_full.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 6
ATT.Category = "css_ak_stock"
ATT.ActivateElements = {"s_heavy"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_stock6")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Polymer Stock A]]
ATT.CompactName = [[P.A]]
ATT.Icon = Material("entities/gekolt_css_ak_s_poly.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 6
ATT.Category = "css_ak_stock"
ATT.ActivateElements = {"s_poly1"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_stock7")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Polymer Stock B]]
ATT.CompactName = [[P.B]]
ATT.Icon = Material("entities/gekolt_css_ak_s_poly2.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 6
ATT.Category = "css_ak_stock"
ATT.ActivateElements = {"s_poly2"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_stock8")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[MOE Stock]]
ATT.CompactName = [[MOE]]
ATT.Icon = Material("entities/gekolt_css_m4_s.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 6
ATT.Category = "css_ak_stock"
ATT.ActivateElements = {"s_adaptor"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_stock9")





-- GRIP --


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Polymer Grip]]
ATT.CompactName = [[Poly]]
ATT.Icon = Material("entities/gekolt_css_ak_g_poly.png", "mips smooth")
ATT.Description = [[
    
]]

ATT.SortOrder = 3
ATT.Category = "css_ak_g"
ATT.ActivateElements = {"g_poly"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_grip1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Skeleton Grip]]
ATT.CompactName = [[SKE]]
ATT.Icon = Material("entities/gekolt_css_ak_g_ske.png", "mips smooth")
ATT.Description = [[
How do you even drill it like that?
]]

ATT.SortOrder = 2
ATT.Category = "css_ak_g"
ATT.ActivateElements = {"g_ske"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_grip2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Rifle Grip]]
ATT.CompactName = [[Rifle]]
ATT.Icon = Material("entities/gekolt_css_ak_s_cali.png", "mips smooth")
ATT.Description = [[

]]

ATT.SortOrder = 2
ATT.Category = "css_ak_g"
ATT.ActivateElements = {"g_rif", "nostock"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_grip3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Polymer Rifle Grip]]
ATT.CompactName = [[P.Rifle]]
ATT.Icon = Material("entities/gekolt_css_ak_s_cali2.png", "mips smooth")
ATT.Description = [[

]]

ATT.SortOrder = 2
ATT.Category = "css_ak_g"
ATT.ActivateElements = {"g_rifp", "nostock"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_grip4")





-- GUARD --


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Stalker Handguard]]
ATT.CompactName = [[SD]]
ATT.Icon = Material("entities/gekolt_css_ak_h_sd.png", "mips smooth")
ATT.Description = [[
]]
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.Silencer = true

ATT.SortOrder = 1
ATT.Category = "css_ak_handguard"
ATT.ActivateElements = {"hg_sd", "pre_muzzed"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_hg1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Polymer Handguard]]
ATT.CompactName = [[Poly]]
ATT.Icon = Material("entities/gekolt_css_ak_h_poly.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 2
ATT.Category = "css_ak_handguard"
ATT.ActivateElements = {"hg_poly"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_hg2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Railed Handguard]]
ATT.CompactName = [[Saiga]]
ATT.Icon = Material("entities/gekolt_css_ak_h_saiga.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 3
ATT.Category = "css_ak_handguard"
ATT.ActivateElements = {"hg_rail"}

ATT.Sights = {
    {
        Pos = Vector(2.15, 0, 19),
        Ang = Angle(90, 0, -90),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_hg3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Krinkov Handguard]]
ATT.CompactName = [[U]]
ATT.Icon = Material("entities/gekolt_css_ak_h_u.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 3
ATT.Category = "css_ak_handguard"
ATT.ActivateElements = {"hg_u"}

ATT.Sights = {
    {
        Pos = Vector(2.05, 0, 19),
        Ang = Angle(90, 0, -90),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_hg4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Huntsman Handguard]]
ATT.CompactName = [[Hunt]]
ATT.Icon = Material("entities/gekolt_css_ak_h_hunt.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 3
ATT.Category = "css_ak_handguard"
ATT.ActivateElements = {"hg_hunt"}

ATT.Sights = {
    {
        Pos = Vector(2.2, 0, 16),
        Ang = Angle(90.5, 0, -90),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_hg6")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Sputnik Handguard]]
ATT.CompactName = [[N94]]
ATT.Icon = Material("entities/gekolt_css_ak_h_94.png", "mips smooth")
ATT.Description = [[Magic non reciprocating floating barrel capable of performing first shot burst
totally not a technical issue
]]

ATT.SortOrder = 3
ATT.Category = "css_ak_handguard"
ATT.ActivateElements = {"hg_94"}

ATT.Sights = {
    {
        Pos = Vector(1.6, 0, 21),
        Ang = Angle(89.75, 0, -90),
        Reticle = nil,

        Magnification = 1.05,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.AimDownSightsTimeMult = 1.02
ATT.SprintToFireTimeMult = 1.02

ATT.RPMMult = 0.9
ATT.RPMMultFirstShot = 3

ATT.RecoilMult = 1.25
ATT.RecoilMultFirstShot = 0.1

ATT.SpreadMultSights = 0.85
ATT.SwayMult = 0.9

ARC9.LoadAttachment(ATT, "gekolt_css_ak_hg7")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Auxilier Handguard]]
ATT.CompactName = [[Aux]]
ATT.Icon = Material("entities/gekolt_css_ak_h_bizon.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 3
ATT.Category = "css_ak_handguard"
ATT.ActivateElements = {"hg_bizon"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_hg8")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[INSERT NAME Handguard]]
ATT.CompactName = [[RPK]]
ATT.Icon = Material("entities/gekolt_css_ak_h_rpk.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 3
ATT.Category = "css_ak_handguard"
ATT.ActivateElements = {"hg_rpk"}

ARC9.LoadAttachment(ATT, "gekolt_css_ak_hg9")


----------------------------------------------------------------------------------
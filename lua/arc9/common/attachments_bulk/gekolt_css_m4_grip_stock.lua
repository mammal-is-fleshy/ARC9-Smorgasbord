local ATT = {}

ATT = {}

ATT.PrintName = "ChainSAW Foregrip"
ATT.CompactName = "ChainSAW"
ATT.Icon = Material("entities/gekolt_css_m4_fg_saw.png", "mips smooth")
ATT.Description = [[Obvious questions include why how and what
Horizontal grip dramatically increases hip fire potential
Disables the ability to scope in.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_fg" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"fg_saw"}
ATT.ExcludeElements = {"no_optic"}

ATT.LHIK = true
ATT.LHIK_Priority = 900000

ATT.Scale = 1
ATT.ModelOffset = Vector(-11, -0.5, -0.5)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_saw.mdl"

ATT.ActivePosOverride = Vector(-1.5, 1, -5)
ATT.ActiveAngOverride = Angle(0, 0, -5)

ATT.MovingPosOverride = Vector(-1.5, 0.5, -5)
ATT.MovingAngOverride = Angle(0, -2, -5)

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

ATT.HoldType = "shotgun"

ATT.FreeAimRadiusMult = 0.75
ATT.RecoilMult = 0.75
ATT.SpeedMultShooting = 0.75

ATT.Hook_TranslateAnimation = function(wep, anim)
    if string.find(anim, "fire") and anim ~= "fire_empty" then
        return "fire_iron"
    end
end

ARC9.LoadAttachment(ATT, "gekolt_css_m4_fg_saw")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Wooden Grip"
ATT.CompactName = "Wooden"
ATT.Icon = Material("entities/gekolt_css_m4_g_wood.png", "mips smooth")
ATT.Description = [[Don't let the termites get you]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_g" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"g_wood"}

ATT.RecoilMult = 0.85
ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.2

ARC9.LoadAttachment(ATT, "gekolt_css_m4_g_wood")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Skeleton Grip"
ATT.CompactName = "Skeleton"
ATT.Icon = Material("entities/gekolt_css_m4_g_ske.png", "mips smooth")
ATT.Description = [[Because that amount of weight saved is really the defactor of life and death
What do you think would happen if your grip weights nothing?]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_g" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"g_ske"}

ATT.RecoilMult = 1.5
ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9

ARC9.LoadAttachment(ATT, "gekolt_css_m4_g_ske")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Curved Grip"
ATT.CompactName = "Curved"
ATT.Icon = Material("entities/gekolt_css_m4_g_tw.png", "mips smooth")
ATT.Description = [[Revolver stype grip instead of the usual pistol one.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_g" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"g_tw"}

ATT.RecoilMult = 0.85
ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.2

ARC9.LoadAttachment(ATT, "gekolt_css_m4_g_tw")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Short Grip"
ATT.CompactName = "Short"
ATT.Icon = Material("entities/gekolt_css_m4_g_short.png", "mips smooth")
ATT.Description = [[How do you even hold it?
Better question, why would you want it?]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = -0.2

ATT.Category = "css_m4_g" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"g_short"}

ATT.RecoilMult = 1.25
ATT.AimDownSightsTimeMult = 0.925
ATT.SprintToFireTimeMult = 0.925

ARC9.LoadAttachment(ATT, "gekolt_css_m4_g_short")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "ChainSAW Grip"
ATT.CompactName = "ChainSAW"
ATT.Icon = Material("entities/gekolt_css_m4_g_saw.png", "mips smooth")
ATT.Description = [[Extremely uncomfortable grip for hip firing
Don't ask how do you even engage the magazine release button.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_g" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"g_saw", "nostock"}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0.5)
ATT.ModelAngleOffset = Angle(90, 0, -90)
ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_saw.mdl"

ATT.SpreadSights = 0.02
ATT.SpreadMultHipFire = 0.9

ARC9.LoadAttachment(ATT, "gekolt_css_m4_g_saw")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Cali Compliance Grip"
ATT.CompactName = "Cali"
ATT.Icon = Material("entities/gekolt_css_m4_g_cali.png", "mips smooth")
ATT.Description = [[Uncomfortable hunting grip for bypassing loopholes.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_g" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"g_hunt", "nostock"}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(0.75, 0, 0.75)
ATT.ModelAngleOffset = Angle(90, 0, -90)
ATT.Model = "models/weapons/geckololt_css/c_m4a1_ik_cali.mdl"

ATT.SpreadMultHipFire = 3
ATT.SwayMultSights = 0.5

ARC9.LoadAttachment(ATT, "gekolt_css_m4_g_cali")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Hunting Grip"
ATT.CompactName = "ADAR"
ATT.Icon = Material("entities/gekolt_css_m4_g_adar.png", "mips smooth")
ATT.Description = [[Full grip and and stock combo for the infamous wood roleplay market.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_m4_g" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"g_adar", "nostock"}

ATT.SwayMultSights = 0.75
ATT.RecoilMult = 0.875
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.2

ARC9.LoadAttachment(ATT, "gekolt_css_m4_g_adar")


----------------------------------------------------------------------------------

-- STOCK

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Compact Stock"
ATT.CompactName = "Compact"
ATT.Description = [[For those with long shoulder.]]

ATT.Icon = Material("entities/gekolt_css_m4_s_607.png", "mips smooth")

ATT.SortOrder = 4
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_607"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_607")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Telescopic Stock"
ATT.CompactName = "Telescopic"
ATT.Description = [[Because showing more parts means tactical]]

ATT.Icon = Material("entities/gekolt_css_m4_s_608.png", "mips smooth")

ATT.SortOrder = 4
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_608"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_608")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Heavy Stock"
ATT.CompactName = "Heavy"
ATT.Description = [[It's nothing special, but it gets the job done.]]

ATT.Icon = Material("entities/gekolt_css_m4_s_a1.png", "mips smooth")

ATT.SortOrder = 5
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_a1"}

ATT.RecoilMult = 0.9
ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.1

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_a1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Precision Stock"
ATT.CompactName = "Precision"
ATT.Description = [[Sniper-style stock for single fire compensation.
Your cheek and shoulder would thank you for this]]

ATT.Icon = Material("entities/gekolt_css_m4_s_bolt.png", "mips smooth")

ATT.SortOrder = 3
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_bolt"}

ATT.SwayMult = 0.25
ATT.RecoilMult = 1.5
ATT.SpreadMultSights = 0
ATT.SwayMultSights = 0.5

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_bolt")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Light Stock"
ATT.CompactName = "Light"
ATT.Description = [[Does the job of looking cool and not much else]]

ATT.Icon = Material("entities/gekolt_css_m4_s_light.png", "mips smooth")

ATT.SortOrder = 1
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_light"}

ATT.AimDownSightsTimeMult = 0.85
ATT.RecoilSideMult = 1.3

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_light")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "PDW Stock"
ATT.CompactName = "PDW"
ATT.Description = [[Heavy cumbersome chassis built from a pdw kit
Hence the extremely misleading name.]]

ATT.Icon = Material("entities/gekolt_css_m4_s_pdw.png", "mips smooth")

ATT.SortOrder = 4
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_pdw"}

ATT.RecoilMult = 1.15
ATT.RPMMult = 1.1

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_pdw")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Sliding Stock"
ATT.CompactName = "Slide"
ATT.Description = [[In, out, in, out, slide it all about.]]

ATT.Icon = Material("entities/gekolt_css_m4_s_slide.png", "mips smooth")

ATT.SortOrder = 2
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_slide"}

ATT.SprintToFireTimeMult = 0.85
ATT.RecoilUpMult = 1.15

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_slide")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "SWire Stock"
ATT.CompactName = "SWire"
ATT.Description = [[It's a wired stock but it's a sliding one. Sliding not included]]

ATT.Icon = Material("entities/gekolt_css_m4_s_swire.png", "mips smooth")

ATT.SortOrder = 2.75
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_swire"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_swire")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Full Stock B"
ATT.CompactName = "FB"
ATT.Description = [[Why wasn't the original one hugging the frame?]]

ATT.Icon = Material("entities/gekolt_css_m4_s_t91.png", "mips smooth")

ATT.SortOrder = 5.1
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_t91"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_t91")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [["Wooden" Stock]]
ATT.CompactName = "Thompson"
ATT.Description = [[It's like they are not even trying anymore.
Excessive visual pain.]]

ATT.Icon = Material("entities/gekolt_css_m4_s_thomp.png", "mips smooth")

ATT.SortOrder = 8
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_thomp"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_thomp")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Buffer Tube"
ATT.CompactName = "None"
ATT.Description = [[You know it comes with a stock for a reason, right?]]

ATT.Icon = Material("entities/gekolt_css_m4_s_tube.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_no"}

ATT.SpeedMult = 1.25
ATT.RecoilMult = 2.5
ATT.SprintToFireTimeMult = 0.8

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_tube")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Wired Stock"
ATT.CompactName = "Wired"
ATT.Description = [[V-ish shape wire stock. It's thicker than the usual, nothing to do with failed modelling]]

ATT.Icon = Material("entities/gekolt_css_m4_s_wire.png", "mips smooth")

ATT.SortOrder = 1
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_wire"}

ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilSideMult = 1.25

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_wire")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Sliding Stock B"
ATT.CompactName = "SB"
ATT.Description = [[Reverese telescopic stock]]

ATT.Icon = Material("entities/gekolt_css_m4_s_x79.png", "mips smooth")

ATT.SortOrder = 1
ATT.Category = "css_m4_stock"
ATT.ActivateElements = {"s_x79"}

ARC9.LoadAttachment(ATT, "gekolt_css_m4_s_x79")
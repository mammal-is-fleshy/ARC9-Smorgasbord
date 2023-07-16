local ATT = {}

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Belt-Only Config]]
ATT.CompactName = [[Belt]]
ATT.Icon = Material("entities/gekolt_css_ak_u_308.png", "mips smooth")
ATT.Description = [[50 Round belt link reduces load both in weight and in capacity.]]

ATT.ClipSizeOverride = 50

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_belt"
end

ATT.SpeedMult = 0.8

ATT.SortOrder = 50
ATT.Category = "ca_mg_up"
ATT.ActivateElements = {"u_belt"}

ARC9.LoadAttachment(ATT, "gekolt_ca_m60_mag1")


--------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Paratropper Config]]
ATT.CompactName = [[Para]]
ATT.Icon = Material("entities/gekolt_css_ak_u_308.png", "mips smooth")
ATT.Description = [[Definitely not a g3 mag stuck to the side.]]

ATT.ClipSizeOverride = 20

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_para"
end

ATT.SpeedMult = 0.95

ATT.SortOrder = 20
ATT.Category = "ca_mg_up"
ATT.ActivateElements = {"u_para"}

ARC9.LoadAttachment(ATT, "gekolt_ca_m60_mag2")


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Paratropper Config (Extended)]]
ATT.CompactName = [[ParaX]]
ATT.Icon = Material("entities/gekolt_css_ak_u_308.png", "mips smooth")
ATT.Description = [[Definitely not a g3 mag stuck to the side.]]

ATT.ClipSizeOverride = 40

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_parax"
end

ATT.SpeedMult = 0.9

ATT.SortOrder = 40
ATT.Category = "ca_mg_up"
ATT.ActivateElements = {"u_parax"}

ARC9.LoadAttachment(ATT, "gekolt_ca_m60_mag3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Paratrooper Handguard]]
ATT.CompactName = [[Para]]
ATT.Icon = Material("entities/gekolt_css_ak_h_poly.png", "mips smooth")
ATT.Description = [[Northern variant built for the cold
Comes with a fancy rear ironsight.
]]

ATT.SortOrder = 0.5
ATT.Category = "ca_m60_handguard"
ATT.ActivateElements = {"hg_para"}

ATT.RangeMaxMult = 0.75
ATT.RecoilMult = 3

ATT.SpreadAdd = 0.003
ATT.SpreadAddHipFire = 0.008

ATT.SpreadMultRecoil = 0.95
ATT.RecoilMultRecoil = 0.95

ATT.AimDownSightsTimeAdd = -0.06
ATT.SprintToFireTimeAdd = -0.1

ARC9.LoadAttachment(ATT, "gekolt_ca_60_h1")


----------------------------------------------------------------------------------
local ATT = {}

ATT = {}

ATT.PrintName = [[9mm]]
ATT.CompactName = [[9mm]]
ATT.Icon = Material("entities/gekolt_dod_ubw_ump9.png", "mips smooth")
ATT.Description = [[lil gun]]

ATT.SortOrder = 1
ATT.Category = "smorg_ubgl_ump_mag"
ATT.ActivateElements = {"ubgl_ump_mag_9mm"}

ATT.DamageMaxUBGL = 13
ATT.DamageMinUBGL = 9
ATT.RPMUBGL = 900

ATT.RangeMinUBGL = 900
ATT.RangeMaxUBGL = 7000

ATT.RecoilUpUBGL = 0.2
ATT.RecoilSideUBGL = 0.12

ATT.RecoilRandomUpUBGL = 0.2
ATT.RecoilRandomSideUBGL = 0.3

ATT.SpreadAddHipFireUBGL = -0.0006
ATT.RecoilMultRecoilUBGL = 0.98
ATT.SpreadMultRecoilUBGL = 0.985

ARC9.LoadAttachment(ATT, "gekolt_ubgl_ump_9mm")

----------------------------------------------------------------------------------

ATT = {}
ATT.PrintName = [[10mm]]
ATT.CompactName = [[10mm]]
ATT.Icon = Material("entities/gekolt_dod_ubw_ump10.png", "mips smooth")
ATT.Description = [[not so lil gun]]

ATT.SortOrder = 1
ATT.Category = "smorg_ubgl_ump_mag"
ATT.ActivateElements = {"ubgl_ump_mag_10mm"}

ATT.DamageMaxUBGL = 32
ATT.DamageMinUBGL = 13
ATT.RPMUBGL = 600

ATT.RangeMinUBGL = 900
ATT.RangeMaxUBGL = 7000

ATT.RecoilUpUBGL = 0.2
ATT.RecoilSideUBGL = 0.12

ATT.RecoilRandomUpUBGL = 0.2
ATT.RecoilRandomSideUBGL = 0.3

ATT.SpreadAddHipFireUBGL = -0.0006
ATT.RecoilMultRecoilUBGL = 0.98
ATT.SpreadMultRecoilUBGL = 0.985

ARC9.LoadAttachment(ATT, "gekolt_ubgl_ump_10mm")

----------------------------------------------------------------------------------
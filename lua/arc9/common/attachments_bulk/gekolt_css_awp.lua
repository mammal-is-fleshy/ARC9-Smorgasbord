local ATT = {}

ATT = {}

ATT.PrintName = "No Stock"
ATT.CompactName = "No"
ATT.Description = [[Completely removes any sense of bracing from a high calibre rifle.]]

ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "css_awp_stock"
ATT.ActivateElements = {"awp_s_no"}

ATT.SwayAdd = -0.85
ATT.SprintToFireTimeMult = 0.5
ATT.AimDownSightsTimeMult = 0.65
ATT.RecoilMult = 1.5
ATT.RecoilKickMult = 1.5

ATT.RecoilAutoControlMult = 0.5
ATT.FreeAimRadiusMult = 2

ARC9.LoadAttachment(ATT, "gekolt_css_awp_s_no")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Howell Full-Auto Frame"
ATT.CompactName = "AUTO"
ATT.Icon = Material("entities/gekolt_css_awp_f_howell.png", "mips smooth")
ATT.Description = [[This ancient mechanism from the 1900s allows your not so lee enfield looking gun to fire in [SEMI]-auto!
Comes with a comically large 20 round mag that for some reason look like it could hold 10 more (It is using 'tall bullets'!)
Despite using the exact same calibre the damage is reduced in the name of videogame balance.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2

ATT.Category = "css_awp_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"awp_f_howell", "ubgl_maghold"}
ATT.MuzzleParticle = "muzzleflash_smg"
--ATT.ShootSound = "gekolt_css/ak47-1.wav"

ATT.DrawFunc = function(swep, model, wm) end
ATT.RPMMult = 350 / 50
ATT.Firemodes = {
    {
        Mode = -1,
    }
}
ATT.ClipSizeOverride = 20

ATT.DamageMaxMult = 90 / 60
ATT.DamageMinMult = 60 / 160
ATT.RecoilMult = 1.15
ATT.RecoilKickMult = 2 / 3

ATT.SpeedMultSights = 1.15
ATT.SpeedMultShooting = 1.15
ATT.AimDownSightsTimeMult = 1.05
ATT.SprintToFireTimeMult = 1.15

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_br"
end

ARC9.LoadAttachment(ATT, "gekolt_css_awp_f_howell")



----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Folding Stock"
ATT.CompactName = "Fold"
ATT.Description = [[Discounted skeletal stock]]

ATT.Icon = Material("entities/gekolt_css_awp_s_fold.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "css_awp_stock"
ATT.ActivateElements = {"awp_s_smg"}

ATT.SwayAdd = 1.1
ATT.SprintToFireTimeMult = 0.75
ATT.AimDownSightsTimeMult = 0.85
ATT.RecoilMult = 1.25
ATT.RecoilKickMult = 1.125

ATT.FreeAimRadiusMult = 1.2

ARC9.LoadAttachment(ATT, "gekolt_css_awp_s_fold")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Lincoln Corp 10A2 Frame"
ATT.CompactName = "LC10"
ATT.Icon = Material("entities/gekolt_css_awp_f_lc10.png", "mips smooth")
ATT.Description = [[Smuggled SMG receiver in a sniper frame
Unfitting frame yielding unfavourable results.]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_awp_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"awp_f_smg", "short_clamp", "notop", "ubgl_maghold"}
ATT.MuzzleParticle = "muzzleflash_ak47"
ATT.ShootSound = {"magmacow_smor/mp5n-1.wav", "magmacow_smor/mp5n-2.wav","magmacow_smor/mp5n-3.wav" }  -- change this please
ATT.ShootSoundSilenced = "magmacow_smor/mp5k-sup.wav"
ATT.ShellModel = "models/shells/shell_9mm.mdl"

ATT.SwayMult = 1.5
ATT.AccuracyMOAMult = 3
ATT.HipDispersionMult = 2
ATT.SightsDispersionMult = 2
ATT.SightTimeMult = 0.75

ATT.SpeedMultSights = 1.25
ATT.SpeedMultShooting = 1.25
ATT.Ammo = "pistol"

ATT.ClipSizeOverride = 25


ATT.AimDownSightsTimeMult = 0.75
ATT.DamageMaxMult = 45 / 60
ATT.DamageMinMult = 20 / 160
ATT.RangeMinMult = 0.8
ATT.RangeMaxMult = 0.8
ATT.RecoilMult = 0.4
ATT.RecoilKickMult = 1 / 2
ATT.RecoilMultRecoilMult = 1.1/1.75

ATT.RecoilDissipationRateMult = 5/3

ATT.RPMMult = 900 / 50
ATT.Firemodes = {
    {
        Mode = -1,
    }
}

ATT.Sights = {
    {
        Pos = Vector(1.6, 0, 10),
        Ang = Angle(90, 0, -90),
        Reticle = nil, -- Same as ATT.RTScopeReticle or HoloSightReticle but this sight only. Better cache material somewhere outside this structure: local Reticle1 = Material("reticle1.png", "mips smooth") and here you type only Reticle1). If not defined, will use ATT.RTScopeReticle/HoloSightReticle


        Magnification = 1,
        IsIronSight = true,
        KeepBaseIrons = false
    }
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_smg"
end

ARC9.LoadAttachment(ATT, "gekolt_css_awp_f_lc10")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = "Optimized Stock"
ATT.CompactName = "Optimization"
ATT.Description = [[Removes 'unnecessary' bits for improved performance and weight reduction]]

ATT.Icon = Material("entities/gekolt_css_awp_s_short.png", "mips smooth")

ATT.SortOrder = 0
ATT.Category = "css_awp_stock"
ATT.ActivateElements = {"awp_s_short"}

ATT.SwayAdd = 1.1
ATT.SprintToFireTimeMult = 0.85
ATT.AimDownSightsTimeMult = 0.9
ATT.RecoilMult = 1.15
ATT.RecoilKickMult = 1.2

ATT.FreeAimRadiusMult = 1.1

ARC9.LoadAttachment(ATT, "gekolt_css_awp_s_short")


----------------------------------------------------------------------------------


ATT = {}
-- thankyou gamer Cylo for the idea
ATT.PrintName = "AE50 Frame"
ATT.CompactName = "AE50"
ATT.Icon = Material("entities/gekolt_css_awp_f_sd.png", "mips smooth")
ATT.Description = [["Ah, here we go, a brand new top of the line high calibre configu-
OI WHAT DO YOU MEAN YOU GOT THE WRONG CALIBRE? I SAID .50- .50 BMG NOT- WHAT?
...
Oh chalice of piss ... Hold on this is walkable
It looks cute though, like one of them De Lisle's back in the war-
... Now just grip that thought, have we got any spare commically large suprressor lying around?"]]

ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Category = "css_awp_frame" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"awp_f_sd", "ubgl_maghold", "pre_muzzed"}
ATT.ShootSoundSilenced = "magmacow_smor/AWM-50.wav"
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.Silencer = true
ATT.ShellModel = "models/shells/shell_9mm.mdl"
ATT.ShellScale = 2

ATT.SwayMult = 1.25
ATT.AccuracyMOAMult = 0.75
ATT.HipDispersionMult = 0.8
ATT.SightsDispersionMult = 0.9
ATT.SightTimeMult = 0.85

ATT.SpeedMultSights = 1.45
ATT.SpeedMultShooting = 1.5

ATT.DamageMaxMult = 70 / 60
ATT.DamageMinMult = 30 / 160

ATT.Ammo = "357"

ATT.ClipSizeOverride = 7
ATT.Firemodes = { { Mode = -1,	PrintName = "BOLT" } }
ATT.RPMMult = 80 / 50

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_sd"
end

ARC9.LoadAttachment(ATT, "gekolt_css_awp_f_sd")

----------------------------------------------------------------------------------

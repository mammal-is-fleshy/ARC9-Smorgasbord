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

ATT = {}

ATT.PrintName = [[Teufel-Gestell]]
ATT.CompactName = [[50. BMG]]
ATT.Icon = Material("entities/gekolt_fas2_m79_rifle.png", "mips smooth")
ATT.Description = [[Hey guys, did you know that in terms of fitting weird calibre in a barrel, 50. BMG is the most compatible cartridge for 12 Gauge? 50.BMG are an average of 138 mm and 360 gr. This means they're large enough to be able to handle shotguns, and with their impressive ballistics for armour penetration, you can be rough with one. Due to their advance powder based contruct, there's no doubt in my mind that a primmed 50. BMG would have incredible ballistic coefficient, so efficient that you could easily drive the bullet through air for hours with ease. They can also adapt Armour Piercing, Tracing, and Incendiary along with specific colour coded tips, so it'd be incredibly easy for one to help you in any situation. With their near perfect Rim Size, they can easily be fitted in any shotgun with enough dedication. No other calibre comes close with this level of compatibility. Also, fun fact, if you push in enough, you can fit your 50. BMG in even the smallest chamber. 50. BMG is literally built for shotgun barrel. Ungodly penetrative power + anti-materiel capability means it can be loaded from a shotgun all day, all shapes and sizes and still come for more.
]]

ATT.SortOrder = 1
ATT.Category = "fnv_flare_frame"
ATT.ActivateElements = {"50cal", "not_sg"}

ATT.Ammo = "SniperPenetratedRound"
ATT.DamageType = DMG_BLAST + DMG_BULLET + DMG_AIRBOAT

ATT.SpreadMult = 0.1

ATT.PenetrationOverride = 12
ATT.RicochetChanceOverride = 1

ATT.NumOverride = 1

ATT.DamageMaxOverride = 320
ATT.DamageMinOverride = 102
ATT.RangeMinOverride = 1000
ATT.RangeMaxOverride = 20000

ATT.PhysBulletModelOverride = false
ATT.ImpactDecalOverride = ""

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_50"
end

ATT.SuppressSmokeTrail = true

ATT.ExplosionDamageOverride = 0
ATT.ExplosionEffect = false

ATT.ShootSound = "gekolt_css/deagle-1.wav"

ATT.MuzzleParticleOverride = "muzzleflash_minimi"

ATT.TracerColor = Color(255, 225, 200)
ATT.TracerSize = 1

ARC9.LoadAttachment(ATT, "gekolt_fnv_flare_3")

----------------------------------------------------------------------------------
ATT.PrintName = [[Sawnoff Garand]]
ATT.CompactName = "GANDRIAL"
ATT.Icon = Material("entities/gekolt_css_m4_u_pump.png")
ATT.Description = [[
Throws grenades at people too well! banned & classified in 1949
**Requires a magazine to grip.**
]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/geckololt_css/atts/ubgl/c_garandgrenade.mdl"
ATT.LHIK = true

ATT.IKAnimationProxy = {
    ["fire_ubgl"] = {
        Source = "fire",
    },
    ["reload_ubgl"] = {
        Source = "dry",
        EventTable = {		
            {s =  "gekolt_dod/m1carbine_clipin1.wav" ,    t = 10 / 40},
            {s =  "gekolt_dod/m1carbine_clipin2.wav" ,    t = 15 / 40},
            {s =  "gekolt_dod/k98_singleshotreload.wav" ,   t = 45 / 40},
            {s =  "gekolt_dod/m1carbine_boltforward.wav" ,    t = 72 / 40},			
        },
    },
    ["enter_ubgl"] = {
        Source = "to_ubgl1"
    },  
	["enter_ubgl_glempty"] = {
        Source = "to_ubgl"
    },
    ["exit_ubgl"] = {
        Source = "from_ubgl1"
    }, 
	["exit_ubgl_glempty"] = {
        Source = "from_ubgl"
    },
    ["idle_ubgl"] = {
        Source = "idle_ubgl1"
    },
    ["idle_glempty"] = {
        Source = "idle_gun"
    },	
    ["idle_ubgl_glempty"] = {
        Source = "idle_ubgl"
    },	
}

 -- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2

ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, -90, -90)

ATT.IKGunMotionMult = 3
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"css_ubgl"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.SprintToFireTimeAdd = 0.05
ATT.AimDownSightsTimeAdd = 0.02
ATT.SwayMult = 1.1

ATT.FreeAimRadiusUBGL = 3

ATT.UBGL = true
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "'GANDRIAL'"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 600

ATT.SpreadUBGL = 0.005

ATT.ShootEntUBGL = "gekolt_css_m4_nade"
ATT.ShootEntForceUBGL = 10000
ATT.ShootSoundUBGL = {"cturix_ar15/fire_grenade1.wav", "cturix_ar15/fire_grenade2.wav", "cturix_ar15/fire_grenade3.wav"}
ATT.DistantShootSoundUBGL = {"cturix_ar15/fire_grenade_dist.wav"}

-- ATT.HasSightsUBGL = false

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.ModelOffset = Vector(0, 0, 1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
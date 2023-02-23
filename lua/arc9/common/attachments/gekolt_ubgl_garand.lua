ATT.PrintName = [[Sawnoff Garand]]
ATT.CompactName = [[Rifle Grenade]]
ATT.Icon = Material("entities/gekolt_css_m4_u_pump.png")
ATT.Description = [[
Exactly what you expect
Requires a magazine to grip.
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
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 8 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 59 / 40},			
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

ATT.IKGunMotionMult = 0.5
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
ATT.UBGLFiremodeName = "XM148"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110

ATT.SpreadUBGL = 0.005

ATT.ShootEntUBGL = "gekolt_css_m4_nade"
ATT.ShootEntForceUBGL = 10000
ATT.ShootSoundUBGL = "gekolt_css/deagle-1.wav"

-- ATT.HasSightsUBGL = false

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.ModelOffset = Vector(0, 0, 1)
ATT.ModelAngleOffset = Angle(0, 0, 0)
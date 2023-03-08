$modelname "weapons/geckololt_css/atts/ubgl/c_ump.mdl"

$bodygroup "studio" {
	studio "UB_UMP.smd"
	blank
}
$bodygroup "mag" {
	studio "UB_UMP_45.smd"
	studio "UB_UMP_9mm.smd"
	studio "UB_UMP_10mm.smd"
	blank
}

$origin -2.80527 -18.6363 -3.80638 // fucking cunt

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "arc9_css\"
$cdmaterials "models\weapons\v_models\rif_garand2\"

$attachment "1" "m203_main" 0 14 0.5 rotate 0 90 -180 // Muzzle
$attachment "2" "root"   0 0 0 rotate 0 0 0     // VM movement
//$attachment "3" "camera" 0 0 0 rotate 0 0 0     // Camera rotation (only rotation!)

$collisionmodel "UB_UMP.smd"

$sequence "idle" {
	"anims/idle.smd"
	fps 40
}
$sequence "idle_armed" {
	"anims/idle_armed.smd"
	fps 40
}
$sequence "wet" {
	"anims/wet.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "dry" {
	"anims/dry.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "fire" {
	"anims/fire.smd"
	fadein 0.03
	fadeout 0.2
	fps 40
}
$sequence "to_armed" {
	"anims/to_armed.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "to_idle" {
	"anims/to_idle.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
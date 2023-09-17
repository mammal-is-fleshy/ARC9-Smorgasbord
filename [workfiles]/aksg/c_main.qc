// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/remix/c_aksg.mdl"

$bodygroup "0"
{
	studio "AK_Main.smd"
	blank
}

$bodygroup "1"
{
	studio "AK_Iron.smd"
	blank
}

$bodygroup "2"
{
	blank
	studio "Rail_Iron.smd"
}
$bodygroup "3"
{
	blank
	studio "Rail_Bottom_Pump.smd"	
}
$bodygroup "4"
{
	blank
	studio "Rail_Side_Pump.smd"
}

$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\weapons\v_models\rif_garand2\"

$attachment "1" "W_Muz" 0 0 0 rotate -90 0 -90
$attachment "2" "W_Shell" 0 0 0 rotate -0 135 -180
$attachment "3" "W_Shell" 1.20 0.00 0.00 rotate -0 90 -180

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "fire_slam" {
	"anims\fire_slam.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
	fps 40
}

$sequence "start_slam" {
	"anims\start_slam.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "load_slam" {
	"anims\load_slam.smd"	
	fadein 0.2
	fadeout 0.2
	loop	
	fps 40
}
$sequence "end_slam_empty" {
	"anims\end_slam_empty.smd"	
	fadein 0.2
	fadeout 0.2
	fps 40
}
$sequence "end_slam" {
	"anims\end_slam.smd"	
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "draw" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap	
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

$surfaceprop "wood_furniture"

$collisionmodel "AK_Main.smd"
{
	$mass 4
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_m72.mdl"

$bodygroup "0"
{
	studio "M72.smd"
	blank
}
$bodygroup "1"
{
	studio "M72_Ammo.smd"
	studio "M72_Ammo_SG.smd"
	studio "M72_Ammo_40.smd"
	blank	
}
$bodygroup "2"
{
	studio "M72_Iron.smd"
	studio "M72_IronF.smd"
	blank
}
$bodygroup "3"
{
	blank
	studio "Rail_Top.smd"
}
$bodygroup "4"
{
	blank
	studio "Rail_Bottom.smd"
}
$bodygroup "5"
{
	blank
	studio "Rail_Optic.smd"
}


$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\weapons\v_models\launch_m79_fas2\"
$cdmaterials "models\gekolt_css_vmt\m72\"

$attachment "1" "W_Main" 0 0 0 rotate -90 0 -90

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "fire" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
	fps 40
}

$sequence "reload" {
	"anims\reload.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}


$sequence "reload_sg" {
	"anims\reload_sg.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
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

$collisionmodel "M72.smd"

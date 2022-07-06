// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_hns.mdl"

$bodygroup "frame"
{
	studio "HamAndSex.smd"
	blank
}

$illumposition 0 0 0

$cdmaterials "arc9_css\hammersickle"

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
		
	fps 40
}
$sequence "draw" {
	"anims\draw.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 40
}

$sequence "slash1" {
	"anims\slash1.smd"
	fadein 0.2
	fadeout 0.2
		
	fps 40
}
$sequence "slash2" {
	"anims\slash2.smd"
	fadein 0.2
	fadeout 0.2
		
	fps 40
}
$sequence "slash3" {
	"anims\slash3.smd"
	fadein 0.2
	fadeout 0.2
		
	fps 40
}
$sequence "slash1_hit" {
	"anims\slash1_hit.smd"
	fadein 0.2
	fadeout 0.2
		
	fps 40
}
$sequence "slash2_hit" {
	"anims\slash2_hit.smd"
	fadein 0.2
	fadeout 0.2
		
	fps 40
}
$sequence "slash3_hit" {
	"anims\slash3_hit.smd"
	fadein 0.2
	fadeout 0.2
		
	fps 40
}


$sequence "block" {
	"anims\block.smd"
	fadein 0.2
	fadeout 0.2
		
	fps 40
}
$sequence "block_hold" {
	"anims\block_hold.smd"
	fadein 0.2
	fadeout 0.2
		
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

$collisionmodel "HamAndSex.smd"

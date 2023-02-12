// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_bamboo.mdl"

$bodygroup "frame"
{
	studio "Claymore.smd"
	blank
}

$illumposition 0 0 0

$cdmaterials "arc9_css\"

$sequence "idle_nor" {
	"anims\idle_nor.smd"
	fadein 0.2
	fadeout 0.2
	loop	
	fps 40
}

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	loop	
	fps 40
}

$sequence "idle_empty" {
	"anims\idle_empty.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "idle_prep" {
	"anims\idle_prep.smd"
	fadein 0.2
	fadeout 0.2
	loop	
	fps 40
}

$sequence "draw" {
	"anims\draw.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 40
}
$sequence "prep" {
	"anims\prep.smd"
	fadein 0.2
	fadeout 0.2
	fps 40
}
$sequence "throw" {
	"anims\throw.smd"
	fadein 0.2
	fadeout 0.2
	fps 40
}
$sequence "melee" {
	"anims\melee.smd"
	fadein 0.2
	fadeout 0.2
	fps 40
}
$sequence "melee_discharge" {
	"anims\melee_discharge.smd"
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

$collisionmodel "Claymore.smd"

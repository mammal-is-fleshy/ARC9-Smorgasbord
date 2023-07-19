// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_m60.mdl"

$bodygroup "0"
{
	studio "M60.smd"
	blank
}
$bodygroup "1"
{
	studio "M60_Adapt_Belt.smd"
	studio "M60_Adapt_Belt2.smd"
	studio "M60_Adapt_Mag.smd"
	blank	
}
$bodygroup "2"
{
	studio "M60_Ammo.smd"
	studio "M60_Ammo2.smd"
	studio "M60_Ammo_Para.smd"
	studio "M60_Ammo_ParaX.smd"
	blank
}
$bodygroup "3"
{
	studio "M60_B.smd"	
	studio "M60_B_Para.smd"
	studio "M60_BC.smd"
	blank
}
$bodygroup "4"
{
	studio "M60_C.smd"	
	studio "M60_C_556.smd"	
	studio "M60_C_Para.smd"
	blank
}
$bodygroup "5"
{
	studio "M60_Grip.smd"	
	studio "M60_Grip_Para.smd"	
	blank
}
$bodygroup "6"
{
	studio "M60_HG.smd"	
	studio "M60_HG_No.smd"	
	studio "M60_HGC.smd"	
	blank
}
$bodygroup "7"
{
	studio "M60_Iron.smd"
	blank
}
$bodygroup "8"
{
	studio "M60_Pod.smd"
	studio "M60_PodF.smd"
	blank
}
$bodygroup "9"
{
	blank
	studio "Rail_Top.smd"
	studio "Rail_Top2.smd"
}
$bodygroup "10"
{
	blank
	studio "Rail_Bottom.smd"
}
$bodygroup "11"
{
	blank
	studio "M60_Mz.smd"
	studio "M60_Mz_Para.smd"
}


$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\gekolt_css_vmt\m60\"

$attachment "1" "W_Main" 0.00 2.20 27.00 rotate -90 0 0
$attachment "2" "W_Main" -1.70 2.50 0.75 rotate -0 135 -180

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

$sequence "fire_iron" {
	"anims\fire_iron.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
	fps 40
}

$sequence "wet" {
	"anims\wet.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "wet_beltdef" {
	"anims\wet_beltdef.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry" {
	"anims\dry.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}


$sequence "wet_42" {
	"anims\wet_42.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry_42" {
	"anims\dry_42.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "wet_42x" {
	"anims\wet_42x.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry_42x" {
	"anims\dry_42x.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_belt" {
	"anims\wet_belt.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry_belt" {
	"anims\dry_belt.smd"	
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

$collisionmodel "M60.smd"

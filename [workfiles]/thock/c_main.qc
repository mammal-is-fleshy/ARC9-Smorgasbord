// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_thock.mdl"

$bodygroup "0"
{
	studio "Thomp.smd"
	blank
}
$bodygroup "1"
{
	studio "Thomp_B.smd"
	studio "Thomp_BS.smd"
	studio "Thomp_BL.smd"
	blank	
}
$bodygroup "2"
{
	studio "Thomp_C.smd"
	studio "Thomp_CL.smd"
	blank
}
$bodygroup "3"
{
	studio "Thomp_Grip_Piss.smd"	
	studio "Thomp_Grip.smd"
	studio "Thomp_Rail_Bottom.smd"
	blank
}
$bodygroup "4"
{
	blank
	studio "Thomp_Stock.smd"	
	studio "Thomp_Stock_Wire.smd"	
}
$bodygroup "5"
{
	blank
	studio "Thomp_Rail_Top.smd"	
}
$bodygroup "6"
{
	studio "Thomp_Mag.smd"	
	studio "Thomp_MagX.smd"	
	blank
}

$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\gekolt_css_vmt\thompson\"

$attachment "1" "W_Main" 0.00 2.4 11 rotate -90 0 0
$attachment "2" "W_Main" -1.70 3.00 5.50 rotate -0 135 180

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
$sequence "dry" {
	"anims\dry.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry_opt" {
	"anims\dry_opt.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}


$sequence "wet_ex" {
	"anims\wet_ex.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry_ex" {
	"anims\dry_ex.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry_ex_opt" {
	"anims\dry_ex_opt.smd"	
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

$collisionmodel "Thomp.smd"

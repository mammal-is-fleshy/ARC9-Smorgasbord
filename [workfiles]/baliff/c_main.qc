// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_baliff.mdl"

$bodygroup "0"
{
	studio "Baliff.smd"	
	studio "Baliff_SG.smd"
	blank
}
$bodygroup "1"
{
	studio "Baliff_A.smd"
	studio "Baliff_A_SG.smd"
	blank	
}
$bodygroup "2"
{
	studio "Baliff_B.smd"
	studio "Baliff_BL.smd"
	studio "Baliff_BS.smd"
	studio "Baliff_BSS.smd"
	studio "Baliff_BG.smd"
	blank
}
$bodygroup "3"
{
	studio "Baliff_S.smd"
	blank
}
$bodygroup "4"
{
	blank
	studio "Thomp_Rail_Bottom.smd"
}
$bodygroup "5"
{
	blank
	studio "Thomp_Rail_Top.smd"	
}

$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\gekolt_css_vmt\baliff\"
$cdmaterials "models\gekolt_css_vmt\thompson\"

$attachment "1" "W_Main" 0.00 3.00 10.75 rotate -90 -0 0

$poseparameter "ads" 0 1 loop 0

$sequence "idle" {
	"anims\idle.smd"
	loop
	fps 40
}

$sequence "fire" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.002
	fadeout 0.2
	fps 40
}

$sequence "ads_fire" {
	"anims\ads_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.002
	fadeout 0.2
	fps 40
}

$sequence "dry" {
	"anims\dry2.smd"	
	"anims\dry_ads.smd"		
	blend "sights" 0 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_big" {
	"anims\dry_big.smd"	
	"anims\dry_big_ads.smd"		
	blend "sights" 0 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "ads_dry" {
	"anims\dry_ads.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "ads" {
	"anims\ads.smd"	
	loop
	fps 40
}
$sequence "ads_in" {
	"anims\ads_in.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "ads_out" {
	"anims\ads_out.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "ads_pump" {
	"anims\ads_pump.smd"	
	fadein 0.2
	fadeout 0
	fps 40
}
$sequence "pump" {
	"anims\pump.smd"	
	fadein 0.2
	fadeout 0
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

$collisionmodel "Baliff.smd"

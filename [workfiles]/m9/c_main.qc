// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_m9.mdl"

$bodygroup "frame"
{
	studio "m9.smd"
	studio "m9_welrod.smd"	
	blank
}

$bodygroup "frame"
{
	studio "m9_frame.smd"
	studio "m9_frame_burst.smd"
	studio "m9_frame_p38.smd"
	studio "m9_frame_welrod.smd"
	blank			
}

$bodygroup "mag"
{
	studio "m9_mag.smd"
	studio "m9_mag_snail.smd"
	studio "m9_mag_welrod.smd"
	studio "m9_mag_ex.smd"	
	blank			
}

$bodygroup "slide"
{
	studio "m9_slide.smd"
	studio "m9_slide_auto.smd"
	studio "m9_slide_burst.smd"
	studio "m9_slide_p38.smd"
	studio "m9_slide_welrod.smd"
	studio "m9_slide_carbine.smd"	
	studio "m9_slide_artillery.smd"		
	blank	
}

$bodygroup "Rail"
{
	blank
	studio "m9_rail.smd"
	studio "m9_iron_carbine.smd"
	studio "m9_rail_carbine.smd"
	studio "m9_rail_artillery.smd"
}

$bodygroup "Stock"
{
	blank
	studio "m9_stock.smd"
	studio "m9_stock_artillery.smd"
}

$bodygroup "grip"
{
	blank
	studio "m9_slide_burst_grip.smd"
}

$illumposition 0 0 0

$cdmaterials "models\weapons\v_models\pist_glock18\"
$cdmaterials "models\weapons\v_models\pist_elite\"
$cdmaterials "models\weapons\V_models\smg_mac10\"
$cdmaterials "models\weapons\V_models\smg_ump45\"
$cdmaterials "models\weapons\V_models\smg_p90\"
$cdmaterials "models\weapons\V_models\smg_mp5\"
$cdmaterials "models\weapons\V_models\mach_m249para\"
$cdmaterials "models\weapons\v_models\rif_aug\"
$cdmaterials "models\weapons\V_models\rif_m4a1\"
$cdmaterials "models\weapons\V_models\rif_ak47\"
$cdmaterials "models\weapons\v_models\rif_galil\"
$cdmaterials "models\weapons\v_models\rif_sg552\"
$cdmaterials "models\weapons\V_models\snip_g3sg1\"
$cdmaterials "models\weapons\v_models\snip_awp\"
$cdmaterials "models\weapons\v_models\shot_m3super90\"
$cdmaterials "models\weapons\v_models\shot_xm1014\"


$attachment "1" "W_Muz" 0 0 0 rotate -90 0 -90
$attachment "2" "W_Shell" 0 0 0 rotate 0 -135 0
$bonemerge "Akimbo_Base"

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "idle_emp" {
	"anims\idle_emp.smd"
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

$sequence "fire_sd" {
	"anims\fire_sd.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
	fps 40
}

$sequence "fire_sd_emp" {
	"anims\fire_sd_emp.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
	fps 40
}

$sequence "fire_emp" {
	"anims\fire_emp.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
	fps 40
}

$sequence "fire_carbine" {
	"anims\fire_carbine.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
	fps 40
}

$sequence "fire_carbine_emp" {
	"anims\fire_carbine_emp.smd"
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
	fadeout 0.02
	fps 40
}

$sequence "fire_iron_emp" {
	"anims\fire_iron_emp.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 0.02
	fps 40
}

$sequence "wet" {
	"anims\wet.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry" {
	"anims\dry.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_sd" {
	"anims\wet_sd.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_sd" {
	"anims\dry_sd.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_p38" {
	"anims\dry_p38.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_artillery" {
	"anims\dry_artillery.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_akimbo" {
	"anims\wet_akimbo.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_akimbo" {
	"anims\dry_akimbo.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_carbine" {
	"anims\wet_carbine.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_carbine" {
	"anims\dry_carbine.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_ex" {
	"anims\wet_ex.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_ex" {
	"anims\dry_ex.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
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

$sequence "draw_emp" {
	"anims\draw_emp.smd"
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

$collisionmodel "m9.smd"

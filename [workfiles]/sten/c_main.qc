// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_sten.mdl"

$bodygroup "guard"
{
	studio "sten_hg_mk3.smd"
	studio "sten_hg.smd"
	studio "sten_hg_mk1.smd"
	studio "sten_hg_mk2.smd"
	studio "sten_hg_owen.smd"
	blank
}

$bodygroup "rec"
{
	studio "sten_up_mk3.smd"
	studio "sten_up_mk4.smd"
	studio "sten_up_mk5.smd"
	studio "sten_up_owen.smd"
	studio "sten_up_3008.smd"
	studio "sten_up_sterling.smd"
	blank
	studio "sten_up_sg.smd"
}

$bodygroup "low"
{
	studio "sten_low_mk3.smd"
	studio "sten_low_mk1.smd"
	studio "sten_low_mk4.smd"
	studio "sten_low_owen.smd"
	studio "sten_low_wood2.smd"
	blank
}

$bodygroup "stock"
{
	studio "sten_stock_mk3.smd"
	studio "sten_stock_mk2.smd"
	studio "sten_stock_mk2_short.smd"
	studio "sten_stock_mk1.smd"
	studio "sten_stock_mk4.smd"	
	studio "sten_stock_owen.smd"
	studio "sten_stock_wood.smd"
	blank
}

$bodygroup "rail"
{
	blank
	studio "sten_rail.smd"
	studio "sten_rail_mk5.smd"
	studio "sten_rail_owen.smd"	
}

$bodygroup "iron"
{
	blank
	studio "sten_iron_mk5.smd"
	studio "sten_iron_sterling.smd"	
}

$bodygroup "owen_grip"
{
	blank
	studio "sten_hg_owen_grip.smd"
	studio "m4a1_clamp_ris.smd"
}

$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\weapons\v_models\rif_garand2\"

$attachment "1" "W_Muzzle" 0 0 0 rotate -90 0 0
$attachment "2" "W_Belt_Open" -2 0.00 0.00 rotate -0 -180 -180


$sequence "wet_owen" {
	"anims\wet_owen.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_owen" {
	"anims\dry_owen.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_sg" {
	"anims\dry_sg.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}


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

$sequence "fire_mk4" {
	"anims\fire_mk4.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
	fps 40
}

$sequence "fire_owen" {
	"anims\fire_owen.smd"
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

$sequence "wet_mk4" {
	"anims\wet_mk4.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_mk4" {
	"anims\dry_mk4.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_ger" {
	"anims\wet_ger.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_sterling" {
	"anims\dry_sterling.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_sterling" {
	"anims\wet_sterling.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_mk1" {
	"anims\dry_mk1.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_mk1" {
	"anims\wet_mk1.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_ger" {
	"anims\dry_ger.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_lmg" {
	"anims\wet_lmg.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_lmg" {
	"anims\dry_lmg.smd"
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

$collisionmodel "sten_up_mk3.smd"

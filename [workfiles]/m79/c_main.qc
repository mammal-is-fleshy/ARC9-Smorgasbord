// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_m79.mdl"

$bodygroup "frame"
{
	studio "m79.smd"
	blank
}

$bodygroup "barrel"
{
	studio "m79_barrel.smd"
	studio "m79_barrel_pirate.smd"
	studio "m79_barrel_mts.smd"
	studio "m79_barrel_mts_s.smd"
	blank	
}

$bodygroup "stock"
{
	studio "m79_stock.smd"
	studio "m79_stock_pirate.smd"
	studio "m79_stock_mts.smd"
	blank	
}
$bodygroup "grip"
{
	studio "m79_grip.smd"
	studio "m79_grip_alof.smd"	
	blank	
}
$bodygroup "ammo"
{
	studio "m79_mag_40m.smd"
	studio "m79_mag_12g.smd"
	studio "m79_mag_12g_single.smd"
	studio "m79_mag_762.smd"
	blank	
}

$bodygroup "Alofs"
{
	blank
	studio "m79_alofs_40mm.smd"	
	studio "m79_alofs_4g.smd"
}
$bodygroup "Iron1"
{
	studio "m79_barrel_hold.smd"
	studio "m79_barrel_hold_s.smd"
	blank	
}
$bodygroup "Iron2"
{
	studio "m79_sight_up.smd"
	studio "m79_sight_down.smd"
	blank
}

$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\weapons\v_models\launch_m79_fas2\"

$attachment "1" "W_Muz" 0 0 0 rotate -90 0 -90
$attachment "2" "W_Shell" 0 0 0 rotate 0 -135 0

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

$sequence "fire_rev" {
	"anims\fire_rev.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
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


$sequence "alofs_dry" {
	"anims\alofs_dry.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "alofs_load" {
	"anims\alofs_load.smd"	
	fadein 0.2
	fadeout 0.2
	loop
	fps 40
}
$sequence "alofs_start" {
	"anims\alofs_start.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "alofs_end" {
	"anims\alofs_end.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_pirate" {
	"anims\dry_pirate.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry_mts" {
	"anims\dry_mts.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry_rev" {
	"anims\dry_rev.smd"
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

$sequence "pump" {
	"anims\pump.smd"
	fadein 0.05
	fadeout 0.05
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

$collisionmodel "m79.smd"

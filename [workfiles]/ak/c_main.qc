// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_ak47.mdl"

$bodygroup "mag"
{
	studio "ak47_mag.smd"
	studio "ak47_mag2.smd"
	studio "ak47_mag_556.smd"
	studio "ak47_mag_25.smd"
	studio "ak47_mag_drum_12g.smd"
	studio "ak47_mag_disk.smd"
	studio "ak47_mag_bizon.smd"
	studio "ak47_mag_water.smd"
	studio "ak47_mag_9mm.smd"	
}

$bodygroup "iron"
{
	blank
	studio "ak47_iron_saiga.smd"
	studio "ak47_iron_burst.smd"
	studio "ak47_iron_water.smd"
	studio "ak47_rear_12.smd"
	studio "ak47_iron_poly.smd"
}

$bodygroup "rear"
{
	studio "ak47_rear.smd"
	studio "ak47_rear_u.smd"
	blank	
}

$bodygroup "handguard"
{
	studio "ak47_hg.smd"
	studio "ak47_hg_u.smd"
	studio "ak47_hg_sd.smd"
	studio "ak47_hg_saiga.smd"
	studio "ak47_hg_poly.smd"
	studio "ak47_hg_rpk.smd"
	studio "ak47_hg_hunt.smd"
	studio "ak47_hg_disk.smd"
	studio "ak47_hg_burst.smd"
	studio "ak47_hg_bizon.smd"
	studio "ak47_hg_water.smd"
	blank
	studio "ak47_hg_12.smd"
	studio "ak47_hg_hungary.smd"
}

$bodygroup "stock"
{
	studio "ak47_stock.smd"
	studio "ak47_stock_cali.smd"	
	studio "ak47_stock_cali_poly.smd"
	studio "ak47_stock_fold.smd"
	studio "ak47_stock_fold2.smd"
	studio "ak47_stock_fold3.smd"
	studio "ak47_stock_full.smd"
	studio "ak47_stock_poly.smd"	
	studio "ak47_stock_poly2.smd"
	studio "ak47_stock_rpk.smd"
	studio "ak47_stock_slide.smd"
	studio "ak47_stock_adapt.smd"
}

$bodygroup "rail_top"
{
	blank	
	studio "ak47_top_mount.smd"
	studio "ak47_top_mount2.smd"
	studio "ak47_top_mount3.smd"		
}

$bodygroup "grip"
{
	studio "ak47_grip.smd"	
	studio "ak47_grip_poly.smd"	
	studio "ak47_grip_ske.smd"	
	blank
}

$bodygroup "ak"
{
	studio "ak47.smd"
	blank	
}

$bodygroup "mount2"
{
	blank
	studio "ak47_fg_mount.smd"
}

$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "arc9_css\"

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

$sequence "draw" {
	"anims\draw.smd"
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
	"anims\fire_iron2.smd"
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

$sequence "dry_54" {
	"anims\dry_54.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_12" {
	"anims\dry_12.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_56" {
	"anims\dry_556_bolt.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_dp" {
	"anims\dry_dp.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_bizon" {
	"anims\dry_bizon.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_25" {
	"anims\dry_25.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_9mm" {
	"anims\dry_9mm.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_water" {
	"anims\dry_water.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
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

$sequence "wet_bizon" {
	"anims\wet_bizon.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet54" {
	"anims\wet54.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_12" {
	"anims\wet_12.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_dp" {
	"anims\wet_dp.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet56" {
	"anims\wet556.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet25" {
	"anims\wet25.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_water" {
	"anims\wet_water.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_9mm" {
	"anims\wet_9mm.smd"
	activity "ACT_VM_RELOAD" 1		
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

$collisionmodel "ak47.smd"

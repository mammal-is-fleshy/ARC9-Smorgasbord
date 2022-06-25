// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_m4a1.mdl"

$bodygroup "upper"
{
	studio "m4a1_up.smd"
	studio "m4a1_up_10.smd"
	studio "m4a1_up_hb.smd"	
	studio "m4a1_up_57.smd"
	studio "m4a1_up_lmg.smd"	
	studio "m4a1_up_sg.smd"
	studio "m4a1_up_snipe.smd"		
	studio "m4a1_up_cross.smd"
	studio "m4a1_up_gibhr.smd"
	studio "m4a1_hg_pump.smd"	
	blank
	studio "m4a1_up_a1.smd"		
}

$bodygroup "mag_well"
{
	studio "m4a1_well.smd"
	studio "m4a1_well_ak.smd"		
	blank		
}

$bodygroup "stock"
{
	studio "m4a1_stock.smd"
	studio "m4a1_stock_a1.smd"
	studio "m4a1_stock_hb.smd"
	studio "m4a1_stock_wire.smd"
	studio "m4a1_stock_57.smd"	
	studio "m4a1_stock_buff.smd"	
	studio "m4a1_stock_sniper.smd"		
	blank		
}

$bodygroup "rail"
{
	blank	
	studio "m4a1_rail.smd"			
}

$bodygroup "mag"
{
	studio "m4a1_mag.smd"
	studio "m4a1_mag_9mm.smd"
	studio "m4a1_mag_20.smd"
	studio "m4a1_mag_21.smd"
	studio "m4a1_mag_150.smd"
	blank 
}

$bodygroup "iron"
{
	studio "m4a1_iron.smd"
	studio "m4a1_iron_2.smd"
	studio "m4a1_iron_57.smd"
	studio "m4a1_iron_hb.smd"
	studio "m4a1_iron_sniper.smd"
	studio "m4a1_iron_pump.smd"	
	studio "m4a1_iron_gibhr.smd"
	studio "m4a1_iron_cross.smd"
	blank
	studio "m4a1_iron_lmg.smd"	
}

$bodygroup "handguard"
{
	studio "m4a1_hg.smd"
	studio "m4a1_hg_10.smd"
	studio "m4a1_hg_a1.smd"
	studio "m4a1_hg_a2.smd"
	studio "m4a1_hg_adar.smd"
	studio "m4a1_hg_lmg.smd"	
	studio "m4a1_hg_patriot.smd"
	blank
	studio "m4a1_hg_spr.smd"	
	studio "m4a1_hg_lr300.smd"	
}

$bodygroup "grip"
{
	studio "m4a1_grip.smd"
	studio "m4a1_grip_cali.smd"
	studio "m4a1_grip_saw.smd"
	studio "m4a1_grip_ske.smd"
	blank
}

$bodygroup "fore"
{
	blank
	studio "m4a1_foregrip_saw.smd"
}

$bodygroup "m4"
{
	studio "m4a1.smd"
	blank	
}

$bodygroup "fsight"
{
	studio "m4a1_fs.smd"
	studio "m4a1_fs_10.smd"
	studio "m4a1_fs_a1.smd"
	studio "m4a1_fs_a2.smd"
	studio "m4a1_fs_adar.smd"
	studio "m4a1_fs_lmg.smd"	
	studio "m4a1_fs_patriot.smd"
	blank
	studio "m4a1_fs_spr.smd"	
	studio "m4a1_fs_lr300.smd"	
}

$illumposition 0 0 0

$cdmaterials "models\weapons\v_models\pist_glock18\"
$cdmaterials "models\weapons\v_models\shot_m3super90\"
$cdmaterials "models\weapons\v_models\rif_famas\"
$cdmaterials "models\weapons\V_models\smg_mac10\"
$cdmaterials "models\weapons\V_models\mach_m249para\"
$cdmaterials "models\weapons\V_models\rif_m4a1\"
$cdmaterials "models\weapons\V_models\rif_ak47\"
$cdmaterials "models\weapons\v_models\rif_galil\"
$cdmaterials "models\weapons\V_models\smg_ump45\"
$cdmaterials "models\weapons\V_models\smg_p902\"
$cdmaterials "models\weapons\V_models\snip_g3sg1\"
$cdmaterials "models\weapons\V_models\smg_mp5\"
$cdmaterials "models\weapons\v_models\snip_awp\"
$cdmaterials "models\weapons\v_models\rif_aug\"

$attachment "1" "W_Muz" 0 0 0 rotate -90 0 -90
$attachment "2" "W_Bolt_Rotate" 0 0 0 rotate 0 -135 0

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "firemode" {
	"anims\firemode.smd"
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
	"anims\fire_iron.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.02
	fadeout 50
	fps 40
}

$sequence "fire_bolt" {
	"anims\fire_bolt.smd"
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

$sequence "dry_sg" {
	"anims\dry_sg.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_sg" {
	"anims\wet_sg.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_2" {
	"anims\dry_2.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_3" {
	"anims\dry_3.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_57" {
	"anims\dry_57.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_57" {
	"anims\wet_57.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_120_lmg" {
	"anims\dry_120_lmg2.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_120_lmg" {
	"anims\wet_120_lmg.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_ak" {
	"anims\dry_ak.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "dry_ak2" {
	"anims\dry_ak2.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_ak" {
	"anims\wet_ak.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_bow" {
	"anims\dry_bow.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
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

$sequence "dry_proto" {
	"anims\dry_proto.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_pump" {
	"anims\dry_pump.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_sniper" {
	"anims\dry_sniper.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_sniper" {
	"anims\wet_sniper.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_smg" {
	"anims\dry_smg.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet_smg" {
	"anims\wet_smg.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "wet" {
	"anims\wet.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}


$sequence "idle_dry_bow" {
	"anims\idle_dry_bow.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "idle_bow" {
	"anims\idle_bow.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "fire_bow" {
	"anims\fire_bow.smd"	
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

$collisionmodel "m4a1.smd"

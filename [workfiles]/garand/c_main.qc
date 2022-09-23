// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_garand.mdl"

$bodygroup "frame"
{
	studio "Garand_Base.smd"
	blank
}

$bodygroup "kit"
{
	studio "Garand.smd"
	studio "Garand_M14.smd"
	studio "Garand_Slam.smd"
	studio "Garand_Mini.smd"
	studio "Garand_Romania.smd"
	blank			
}

$bodygroup "Rail1"
{
	blank
	studio "Rail_Top.smd"
}
$bodygroup "Rail2"
{
	blank
	studio "Rail_Bottom.smd"
	studio "Rail_Bottom_Pump.smd"	
}
$bodygroup "Rail3"
{
	blank
	studio "Rail_Iron.smd"
}

$illumposition 0 0 0

$cdmaterials "models\weapons\v_models\pist_glock18\"
$cdmaterials "models\weapons\V_models\smg_mac10\"
$cdmaterials "models\weapons\V_models\mach_m249para\"
$cdmaterials "models\weapons\V_models\rif_m4a1\"
$cdmaterials "models\weapons\V_models\rif_ak47\"
$cdmaterials "models\weapons\v_models\rif_galil\"
$cdmaterials "models\weapons\V_models\smg_ump45\"
$cdmaterials "models\weapons\V_models\smg_p90\"
$cdmaterials "models\weapons\V_models\snip_g3sg1\"
$cdmaterials "models\weapons\V_models\smg_mp5\"
$cdmaterials "models\weapons\v_models\snip_awp\"
$cdmaterials "models\weapons\v_models\rif_aug\"
$cdmaterials "models\weapons\v_models\shot_m3super90\"
$cdmaterials "models\weapons\v_models\shot_xm1014\"
$cdmaterials "models\weapons\v_models\rif_garand2\"

$attachment "1" "W_Muz" 0 0 0 rotate -90 0 -90
$attachment "2" "W_Shell" 0 0 0 rotate 0 -135 0

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

$sequence "fire_slam" {
	"anims\fire_slam.smd"
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

$sequence "wet_308" {
	"anims\wet_308.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "dry_308" {
	"anims\dry_308.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}


$sequence "dry_slam" {
	"anims\dry_slam.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "load_slam" {
	"anims\load_slam.smd"	
	fadein 0.2
	fadeout 0.2
	loop	
	fps 40
}
$sequence "start_slam" {
	"anims\start_slam.smd"	
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "end_slam" {
	"anims\end_slam.smd"	
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

$collisionmodel "Garand.smd"

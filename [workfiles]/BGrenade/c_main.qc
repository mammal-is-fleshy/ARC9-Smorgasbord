// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/c_grenade_bundle.mdl"

$bodygroup "frame"
{
	studio "nade.smd"
	blank
}

$illumposition 0 0 0

$cdmaterials "arc9_css\"
$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\weapons\v_models\rif_garand2\"

$jigglebone "Nade1"
{
	is_flexible
	{
		length 20
		tip_mass 22
		pitch_stiffness 98
		pitch_damping 2
		yaw_stiffness 95
		yaw_damping 3
		along_stiffness 100
		along_damping 0
		angle_constraint 17
	}
}
$jigglebone "Nade2"
{
	is_flexible
	{
		length 20
		tip_mass 18
		pitch_stiffness 95
		pitch_damping 2
		yaw_stiffness 90
		yaw_damping 4
		along_stiffness 100
		along_damping 0
		angle_constraint 13
	}
}
$jigglebone "Nade3"
{
	is_flexible
	{
		length 20
		tip_mass 15
		pitch_stiffness 92
		pitch_damping 2
		yaw_stiffness 120
		yaw_damping 4
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "Nade4"
{
	is_flexible
	{
		length 20
		tip_mass 19
		pitch_stiffness 92
		pitch_damping 2
		yaw_stiffness 125
		yaw_damping 4
		along_stiffness 100
		along_damping 0
		angle_constraint 14
	}
}
$jigglebone "Nade5"
{
	is_flexible
	{
		length 20
		tip_mass 25
		pitch_stiffness 95
		pitch_damping 2
		yaw_stiffness 150
		yaw_damping 4
		along_stiffness 100
		along_damping 0
		angle_constraint 11
	}
}
$jigglebone "Nade6"
{
	is_flexible
	{
		length 20
		tip_mass 17
		pitch_stiffness 105
		pitch_damping 2
		yaw_stiffness 125
		yaw_damping 4
		along_stiffness 100
		along_damping 0
		angle_constraint 12
	}
}

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

$sequence "draw" {
	"anims\draw.smd"
	fadein 0.2
	fadeout 0.2
	fps 40
}
$sequence "prep" {
	"anims\prep.smd"
	fadein 0.5
	fadeout 0.5
	fps 40
}
$sequence "prep_idle" {
	"anims\prep_idle.smd"
	fadein 0.4
	fadeout 0.4
	fps 40
}
$sequence "throw" {
	"anims\throw.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "throw_full" {
	"anims\throw_full.smd"
	fadein 0.3
	fadeout 0.3
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

$collisionmodel "nade.smd"

// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/mag/m4a1_mag_21.mdl"

$bodygroup "mag"
{
	studio "m4a1_mag_21.smd"
}

$surfaceprop "item"

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "arc9_css\"
$cdmaterials "models\weapons\v_models\rif_garand2\"

$sequence "idle" {
	"anims\staticprop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "m4a1_mag_21.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
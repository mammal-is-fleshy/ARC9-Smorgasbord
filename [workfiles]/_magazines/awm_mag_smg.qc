// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/mag/awm_mag_smg.mdl"

$bodygroup "mag"
{
	studio "awm_mag_smg.smd"
}

$surfaceprop "item"

$cdmaterials "models\gekolt_css_vmt\"

$sequence "idle" {
	"anims\staticprop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "awm_mag_smg.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
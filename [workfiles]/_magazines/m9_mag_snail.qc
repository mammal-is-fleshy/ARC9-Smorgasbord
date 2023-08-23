// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/mag/m9_mag_snail.mdl"

$bodygroup "mag"
{
	studio "m9_mag_snail.smd"
}

$surfaceprop "item"

$cdmaterials "models\gekolt_css_vmt\"

$sequence "idle" {
	"anims\staticprop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "m9_mag_snail.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/mag/ak47_mag_9mm.mdl"

$bodygroup "mag"
{
	studio "ak47_mag_9mm.smd"
}

$surfaceprop "item"

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "arc9_css\"

$sequence "idle" {
	"anims\staticprop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "ak47_mag_9mm.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
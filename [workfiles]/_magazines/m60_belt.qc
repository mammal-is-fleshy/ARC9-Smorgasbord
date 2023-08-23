// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/mag/m60_belt.mdl"

$bodygroup "mag"
{
	studio "m60_belt.smd"
}

$surfaceprop "item"

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\gekolt_css_vmt\m60\"

$sequence "idle" {
	"anims\staticprop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "m60_belt.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
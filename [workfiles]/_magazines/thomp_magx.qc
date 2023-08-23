// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/mag/thomp_magx.mdl"

$bodygroup "mag"
{
	studio "thomp_magx.smd"
}

$surfaceprop "item"

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\gekolt_css_vmt\thompson\"

$sequence "idle" {
	"anims\staticprop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "thomp_magx.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
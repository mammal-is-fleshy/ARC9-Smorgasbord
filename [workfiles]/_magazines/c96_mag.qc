// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/mag/c96_mag.mdl"

$bodygroup "mag"
{
	studio "c96_mag.smd"
}

$surfaceprop "item"

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\weapons\v_models\pist_c962"

$sequence "idle" {
	"anims\staticprop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "c96_mag.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
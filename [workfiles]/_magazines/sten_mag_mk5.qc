// Created by Crowbar 0.12.0.0

$modelname "weapons/geckololt_css/mag/sten_mag_mk5.mdl"

$bodygroup "mag"
{
	studio "sten_mag_mk5_nobelt.smd"
	studio "sten_mag_mk5.smd"
}

$surfaceprop "item"

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\weapons\v_models\rif_garand2\"

$sequence "idle" {
	"anims\staticprop.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "sten_mag_mk5_nobelt.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
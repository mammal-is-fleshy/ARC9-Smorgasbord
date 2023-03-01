// Created by Crowbar 0.71

$modelname "weapons/geckololt_css/shell_garand_clip.mdl"

$bodygroup "studio"
{
	studio "En_Bloc.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\weapons\v_models\rif_garand2\"

$cbox 0 0 0 0 0 0

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0

$sequence "idle" {
	"En_Bloc.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "En_Bloc.smd"
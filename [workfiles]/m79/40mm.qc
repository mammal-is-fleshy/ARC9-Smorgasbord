// Created by Crowbar 0.71

$modelname "weapons/geckololt_css/shell_40mm.mdl"

$bodygroup "studio"
{
	studio "shell_model.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\gekolt_css_vmt\"
$cdmaterials "models\weapons\v_models\launch_m79_fas2\"

$cbox 0 0 0 0 0 0

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0

$sequence "idle_40mm" {
	"anims\idle_40mm.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "shell_model.smd"
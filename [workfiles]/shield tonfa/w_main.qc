// Created by Crowbar 0.72

$modelname "weapons/geckololt_css/remix/w_shield_tonfa.mdl"

$bodygroup "studio"
{
	studio "Shield_World.smd"
}


$surfaceprop "metal"

$contents "solid"

//$illumposition -0.127 -0.012 -0.11

$cdmaterials "models\gekolt_css_vmt\shield_tonfa"

//$attachment "weapon_holster_center" "v_melee_root" 0 0 0 rotate 0 0 0
//$attachment "weapon_hand_R" "v_melee_root" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

//$bbox -1.697 -1.756 -2.351 1.513 1.476 2.135

$bonemerge "root"
$bonemerge "up"
$bonemerge "left"
$bonemerge "right"



$sequence "dropped" {
	"Shield_World.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "Shield_World.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	//$concave 

}

/* $keyvalues
{
	prop_data 
	{
		"base" "Stone.Small"
		"allowstatic" "1"
		"health" "200"
	}
} */

$summon snowball ^$(distance) ^-.8 ^1.5 {NoGravity:1b,Tags:["not_mov","motion_spe","snc.projectile"],Passengers:[{id:"item_display",teleport_duration:1,item_display:"head",Tags:["snc.projectile","snc.spear"],item:{id:"minecraft:player_head", count:1, components:{"custom_model_data":4, "profile":{id:[I;1,1,1,0]}}}}],Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}}}

$execute if score @s odm_dmg_$(side) matches 66 run function snc:api/item_replace/survey_corps/odm/$(piece) {"slot":"weapon.$(hand)hand"}
$execute if score @s odm_dmg_$(side) matches 33 run function snc:api/item_replace/survey_corps/thunder/$(piece)_sp1 {"slot":"weapon.$(hand)hand"}
$execute if score @s odm_dmg_$(side) matches 0 run function snc:api/item_replace/survey_corps/thunder/$(piece)_sp2 {"slot":"weapon.$(hand)hand"}

execute anchored eyes positioned ^ ^ ^ run function snc:player/gun/spear/shoot
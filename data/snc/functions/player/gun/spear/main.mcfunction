# If more damaged then
execute if score @s odm_action matches -30 if predicate snc:odm/has_spear_r unless score @s odm_dmg_R > @s odm_dmg_L run function snc:player/odm/replace_weapon/thunder/main {"side":"R","distance":-1,"piece":"gas_trigger","hand":"main"}
execute if score @s odm_action matches -30 if predicate snc:odm/has_spear_l if score @s odm_dmg_R > @s odm_dmg_L run function snc:player/odm/replace_weapon/thunder/main {"side":"L","distance":1,"piece":"odm_gear","hand":"off"}

#say compare uses before shoot
execute if score @s odm_action matches -30 anchored eyes positioned ^ ^ ^ run function snc:player/gun/spear/shoot

scoreboard players add @s odm_action 1
execute if score @s odm_action matches -25 run scoreboard players set @s odm_action 0
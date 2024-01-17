scoreboard players operation @s odm_atk_R *= #4 constant

# If more damaged then
execute if score @s odm_action matches -30 if predicate snc:odm/has_spear_r unless score @s odm_atk_R > @s odm_atk_L run function snc:player/odm/replace_weapon/get_thunder/right/main
execute if score @s odm_action matches -30 if predicate snc:odm/has_spear_l if score @s odm_atk_R > @s odm_atk_L run function snc:player/odm/replace_weapon/get_thunder/left/main

#say compare uses before shoot
execute if score @s odm_action matches -30 anchored eyes positioned ^ ^ ^ run function snc:player/gun/spear/shoot

scoreboard players add @s odm_action 1
execute if score @s odm_action matches -25 run scoreboard players set @s odm_action 0
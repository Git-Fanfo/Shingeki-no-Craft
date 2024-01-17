#execute if score @s odm_atk_L matches ..99 unless score @s odm_atk_R matches ..24 run function snc:player/odm/replace_weapon/soldier/left
#execute if score @s odm_atk_R matches ..24 run function snc:player/odm/replace_weapon/soldier/right
execute if predicate snc:chance/41 run function snc:player/odm/replace_weapon/soldier/right
execute if predicate snc:chance/40 run function snc:player/odm/replace_weapon/soldier/left
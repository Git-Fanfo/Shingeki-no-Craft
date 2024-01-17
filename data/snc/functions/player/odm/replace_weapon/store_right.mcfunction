execute store result score @s odm_atk_R run data get entity @s SelectedItem.tag.Damage

execute if score @s odm_atk_R matches 0 run function snc:player/odm/replace_weapon/thunder_sp3_effects
execute if score @s odm_atk_R matches 8 run function snc:player/odm/replace_weapon/thunder_sp2_effects
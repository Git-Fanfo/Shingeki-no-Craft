execute store result score @s odm_atk_L run data get entity @s Inventory[{Slot:-106b}].tag.Damage

execute if score @s odm_atk_L matches 0 run function snc:player/odm/replace_weapon/thunder_sp3_effects
execute if score @s odm_atk_L matches 33 run function snc:player/odm/replace_weapon/thunder_sp2_effects
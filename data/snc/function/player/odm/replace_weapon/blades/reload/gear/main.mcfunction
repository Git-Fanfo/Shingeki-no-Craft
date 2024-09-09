execute store result score @s snc.bullets run \
    data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".snc_odm_blades

tag @s remove snc.reload.blade

execute if score @s snc.bullets matches 1.. run function snc:player/odm/replace_weapon/blades/reload/gear/full_gear
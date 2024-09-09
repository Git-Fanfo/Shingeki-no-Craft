execute store result score @s snc.bullets run \
    data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".snc_odm_blades

execute if predicate snc:odm/has_odm_blade run function snc:player/odm/replace_weapon/blades/load/full_odm_gear
execute unless predicate snc:odm/has_odm_blade run function snc:player/odm/replace_weapon/blades/load/null_odm_gear

execute unless score @s snc.bullets matches 4 run playsound minecraft:block.decorated_pot.insert player @s ~ ~ ~ 1 2
execute unless score @s snc.bullets matches 4 run clear @s *[custom_data~{snc.blade:1b}] 1
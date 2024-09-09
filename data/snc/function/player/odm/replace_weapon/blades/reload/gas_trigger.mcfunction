execute store result score @s snc.bullets run \
    data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".snc_odm_blades

tag @s remove snc.reload.blade

execute if score @s snc.bullets matches 1.. run item modify entity @s weapon.mainhand snc:odm/blades/gas_trigger_reload
execute if score @s snc.bullets matches 1.. if predicate snc:odm/has_odm_blade run function snc:player/odm/replace_weapon/blades/reload/gear/full_gear
execute if score @s snc.bullets matches 1.. unless predicate snc:odm/has_odm_blade run function snc:player/odm/replace_weapon/blades/reload/gear/null_gear
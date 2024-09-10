execute if entity @s[tag=spin] run function snc:player/odm/gyro/slash/select
execute unless predicate snc:odm/has_full_blade run tag @s remove spin

## DAMAGE
execute store result score @s odm_dmg_R run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score @s odm_dmg_L run data get entity @s Inventory[{Slot:-106b}].components."minecraft:damage"

execute if predicate snc:odm/mode/1 run function snc:player/odm/replace_weapon/blades/hold
execute if predicate snc:odm/mode/2 run function snc:player/odm/replace_weapon/thunder/hold
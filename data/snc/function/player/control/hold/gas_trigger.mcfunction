execute as @s[tag=spin] run function snc:player/odm/gyro/slash/select

# Spear They can have any
execute if score @s odm_action matches 0.. if block ~ ~-.5 ~ air if predicate snc:player/is_sneaking run function snc:player/odm/replace_weapon/thunder/trigger

execute unless predicate snc:odm/has_odm_blade run tag @s remove spin

## DAMAGE
execute store result score @s odm_dmg_R run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score @s odm_dmg_L run data get entity @s Inventory[{Slot:-106b}].components."minecraft:damage"

execute as @s[predicate=snc:odm/has_spear_r] run function snc:player/odm/replace_weapon/thunder/effects {"side":"R"}
execute as @s[predicate=snc:odm/has_spear_l] run function snc:player/odm/replace_weapon/thunder/effects {"side":"L"}
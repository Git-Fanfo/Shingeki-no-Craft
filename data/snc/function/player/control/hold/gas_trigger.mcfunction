advancement revoke @s only snc:human/hold/gas_trigger
## Effects
execute if score ticks clock matches 19 if predicate snc:odm/has_odm run function snc:player/odm/effects

execute as @s[tag=spin] run function snc:player/odm/gyro/slash/select
execute if score odm_legacy config matches 0 run function snc:player/odm/impulse/get_direction

# Spear They can have any
execute if score @s odm_action matches 0.. if block ~ ~-.5 ~ air if predicate snc:player/is_sneaking run function snc:player/odm/replace_weapon/thunder/trigger

execute store result score @s snc.rotation_x run data get entity @s Rotation[0]
execute store result score @s snc.rotation_y run data get entity @s Rotation[1]

execute unless predicate snc:odm/has_odm_blade run tag @s remove spin

## DAMAGE
execute store result score @s odm_dmg_R run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score @s odm_dmg_L run data get entity @s Inventory[{Slot:-106b}].components."minecraft:damage"

execute as @s[predicate=snc:odm/has_spear_r] run function snc:player/odm/replace_weapon/thunder/effects {"side":"R"}
execute as @s[predicate=snc:odm/has_spear_l] run function snc:player/odm/replace_weapon/thunder/effects {"side":"L"}

# Aux impulse
execute as @s[scores={odm_state=-1}] run scoreboard players set @s odm_state 1
execute as @s[scores={odm_state=1}] unless entity @s[scores={odm_state=2..}] run scoreboard players add @s odm_push 1
$attribute @s player.block_interaction_range base set $(block_range)
attribute @s player.block_break_speed base set 2.5

execute if predicate snc:shifters/has_destroy positioned ~ ~-6 ~ rotated ~ 0 run function snc:shifters/mobs/attack/action/movement/destroy

## Only Cart (For now)
execute if score @s shifter_vars matches 1 if predicate snc:shifters/has_farm positioned ~ ~-2 ~ rotated ~ 0 run function snc:shifters/utility/dirt

$execute if predicate snc:shifters/has_harvest on vehicle at @s positioned ~ ~.5 ~ run function snc:shifters/utility/harvest {"shifter":$(shifter)}

scoreboard players operation @s snc.ender += @s snc.chest
scoreboard players operation @s snc.ender += @s snc.barrel
scoreboard players operation @s snc.ender += @s snc.shulker
scoreboard players operation @s snc.ender += @s snc.trap

execute if score @s snc.ender matches 1.. anchored eyes positioned ^ ^ ^1 run function snc:shifters/human/inventory/container_check
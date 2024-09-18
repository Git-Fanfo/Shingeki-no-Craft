scoreboard players add @s snc.despawn 1
execute if score @s snc.despawn matches 1 run spreadplayers ~ ~ 25 64 false @s
execute unless score $titn_spwn_rate config matches 0 if score titan_count spawn <= $max_titans snc.despawn if score @s snc.despawn matches 10.. if block ~ ~-1 ~ #snc:can_spawn unless biome ~ ~ ~ snc:village unless entity @n[type=#snc:eldian,distance=..23] run function snc:titans/spawn/titan
execute if score @s snc.despawn matches 10.. run function snc:titans/spawn/remove

execute if score titan_count spawn matches 20.. run function snc:titans/spawn/remove
execute unless score @s colossal_vars matches 0.. run scoreboard players set @s colossal_vars 300
scoreboard players remove @s colossal_vars 1

particle minecraft:large_smoke ~ ~7 ~ .5 10 .5 0 100 force
particle minecraft:campfire_cosy_smoke ~ ~.2 ~ 15 0 15 0 300 force
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 7 1 7 0 100 force

particle minecraft:large_smoke ~ ~47 ~ .5 10 .5 0 100 force
particle minecraft:campfire_cosy_smoke ~ ~38 ~ 6 1 6 0 100 force

particle minecraft:campfire_cosy_smoke ~ ~70 ~ 10.5 1.5 10.5 0 300 force
particle minecraft:campfire_cosy_smoke ~ ~70 ~ 10 3 10 0 300 force

execute if score @s colossal_vars matches 0 run kill
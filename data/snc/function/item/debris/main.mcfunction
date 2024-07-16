particle campfire_cosy_smoke ~ ~-.5 ~ .4 .4 .4 0 5 force

execute as @e[distance=..4] run damage @s 20 minecraft:falling_block

execute unless block ~ ~-1.3 ~ air run function snc:item/debris/land
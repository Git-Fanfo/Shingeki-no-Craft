execute unless block ~ ~-45 ~ #snc:filter_shifter on vehicle run data merge entity @s {NoGravity:1b}
execute unless score @s colossal_vars matches ..3600 run scoreboard players set @s colossal_vars 3600
## Prevent 2 corpses at the same time
scoreboard players set $corpses colossal_vars 0
execute if score @s colossal_vars matches 3600 as @e[tag=shifter,tag=colossal,tag=dead] run scoreboard players add $corpses colossal_vars 1
execute if score $corpses colossal_vars matches 2.. as @e[tag=shifter,tag=colossal,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill_old

execute if score @s colossal_vars matches 3600 run bossbar remove minecraft:colossal_health

particle campfire_signal_smoke ~ ~-10 ~ 2 2 2 .01 2 force

execute if score @s[tag=half] colossal_vars matches 3600 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:502}}}

execute if score @s[tag=!half] colossal_vars matches 3600 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:454}}}
execute if score @s[tag=!half] colossal_vars matches 3590 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:455}}}
execute if score @s[tag=!half] colossal_vars matches 3580 run data merge entity @s {item:{id:'minecraft:scute',Count:1b,tag:{CustomModelData:456}}}

execute if score @s colossal_vars matches 2 run function snc:shifters/mobs/kill_old
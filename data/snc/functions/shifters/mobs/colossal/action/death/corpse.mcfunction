execute unless score @s colossal_vars matches ..1200 run scoreboard players set @s colossal_vars 1200
## Prevent 2 corpses at the same time
scoreboard players set $corpses colossal_vars 0
execute if score @s colossal_vars matches 1200 as @e[tag=shifter,tag=colossal,tag=dead] run scoreboard players add $corpses colossal_vars 1
execute if score $corpses colossal_vars matches 2.. as @e[tag=shifter,tag=colossal,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill
attribute @s generic.scale base set 1.3

## Reset
execute if score @s colossal_vars matches 1200 run bossbar remove minecraft:colossal_health
# execute if score @s colossal_vars matches 1200 run scoreboard players set state colossal_vars 0

execute if score @s colossal_vars matches 200.. run particle campfire_signal_smoke ^1.5 ^-2 ^ 2 3 2 .01 1 force
execute if score @s colossal_vars matches 200.. run fill ^-3 ^-1 ^-3 ^3 ^-1 ^3 minecraft:air replace barrier

## Change variant
execute if score @s colossal_vars matches 1200 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:48}}}
execute if score @s colossal_vars matches 1190 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:49}}}
execute if score @s colossal_vars matches 1180 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:50}}}
#4
execute if score @s colossal_vars matches 1176 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:51}}}
execute if score @s colossal_vars matches 1172 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:52}}}
execute if score @s colossal_vars matches 1168 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:53}}}
execute if score @s colossal_vars matches 1165 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:54}}}
execute if score @s colossal_vars matches 1162 on passengers run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,tag:{CustomModelData:55}}}
#8

execute if score @s colossal_vars matches 1100 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 1050 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 1000 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 950 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 900 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 850 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 800 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 750 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 700 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 650 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 600 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 550 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 450 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 400 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 350 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 300 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 250 run function snc:shifters/mobs/colossal/action/death/decay
execute if score @s colossal_vars matches 200 run function snc:shifters/mobs/colossal/action/death/decay

execute if score @s colossal_vars matches 0 run particle minecraft:cloud ~ ~4 ~ 2 2 2 .2 500 force
execute if score @s colossal_vars matches 0 run playsound minecraft:aot.steam player @a ~ ~ ~ 2 .9
execute if score @s colossal_vars matches 0 run function snc:shifters/mobs/kill
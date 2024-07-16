# Servere: execute in minecraft:sncraft_surv run 
#schedule function snc:logic/schedule/hour 3d
scoreboard players set 15m clock 0
tellraw FanfoYT ["Server: ",{"text":"Founding villages every 15 minutes...","color":"yellow"}]

## Eldian Growth Rate
scoreboard players add snc.curr.day clock 1

## Found village
execute as @e[type=villager] at @s if biome ~ ~ ~ #minecraft:is_overworld if entity @e[type=villager,distance=.1..5] unless entity @e[distance=..128, tag=village] align xyz positioned ~.5 ~ ~.5 run function snc:player/build/bell/found
tag @e[tag=village] add event
# Servere: execute in minecraft:sncraft_surv run 
#schedule function snc:logic/schedule/hour 3d
scoreboard players set 15m clock 0
tellraw FanfoYT ["Server: ",{"text":"Spawning villagers every 15 minutes...","color":"yellow"}]

## Eldian Growth Rate
scoreboard players add snc.curr.day clock 1
execute as @e[type=villager] at @s run function snc:logic/schedule/15m/villager
#execute as @e[tag=village] if entity @e[distance=..10,type=villager,limit=10]
tag @e[tag=village] add event
execute unless biome ~ ~ ~ snc:village run tag @s remove in_village

execute if score 15m clock matches 1 as @e[tag=village,sort=nearest,limit=1] if entity @s[tag=event] run function snc:logic/event/start
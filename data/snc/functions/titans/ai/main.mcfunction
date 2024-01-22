# Rotate model
execute on passengers store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
# Is moving?
execute store result score @s movx run data get entity @s Motion[0] 10000
execute store result score @s movz run data get entity @s Motion[2] 10000
execute if score @s movx matches ..-1 run scoreboard players operation @s movx *= #-1 constant
execute if score @s movz matches ..-1 run scoreboard players operation @s movz *= #-1 constant
scoreboard players operation @s movx *= @s movz 

execute if score @s movx matches 1.. on passengers run tag @s add walk

scoreboard players reset @s movx
scoreboard players reset @s movz

#  Clipped
##execute unless block ~ ~1 ~ air run tp ~ ~1 ~

## Despawn
function snc:titans/ai/despawn

## Attack
execute rotated ~ 0 positioned ^ ^ ^2 on passengers run function snc:titans/ai/attack

# Dont enter in houses
# execute unless block ^ ^2.5 ^.5 air if block ^ ^2.5 ^-.5 air run tp @s ^ ^ ^-1.5
# execute unless block ^ ^3.5 ^.5 air if block ^ ^3.5 ^-.5 air run tp @s ^ ^ ^-1.5

# Running in water (This is concerning)
execute if block ^ ^1 ^.5 water run function snc:titans/water

## Koniglich
execute if entity @s[tag=koniglich] run function snc:titans/ai/koniglich

# Kill if has no passengers
execute unless data entity @s Passengers run function snc:logic/kill_mob

scoreboard players add titan_count spawn 1

## Second functions
execute if score ticks clock matches 19 run function snc:titans/ai/seconds
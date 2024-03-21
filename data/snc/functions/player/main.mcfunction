## Died
execute if score @s death matches 1.. run function snc:logic/death

## Logic
execute if score @s earthquake matches 0.. run function snc:logic/earthquake/score
execute if score @s messages matches 1.. run function snc:player/messages
execute if score @s manual matches 1.. run function snc:logic/manual/trigger
execute if score @s manual matches ..-1 run function snc:logic/manual/config
# execute if score @s push_back matches 1.. run function snc:logic/push/back/main
## Team
function snc:logic/team/main

# Delte barrier blocks (DANGER)
execute as @s[tag=!barrier] unless entity @a[distance=1..7.5,tag=transform] rotated ~ 0 run \
    fill ^-5 ^-8 ^-5 ^5 ^3 ^5 minecraft:air replace barrier
tag @s remove barrier

## Titan
# Injection
execute if score @s idle matches 1.. unless predicate snc:shifters/has_injection_full run scoreboard players set @s idle -1

# Pure Titan
execute if entity @s[tag=titan] run function snc:player/titan/effects/pure
execute if entity @s[tag=handcuffs] unless predicate snc:is_riding run ride @s mount @e[tag=handcuffs,type=!#snc:eldian,sort=nearest,limit=1]

## Using right click
execute if score @s using_carrot matches 1.. run function snc:player/using_carrot
execute if score @s hold_carrot matches 1.. run scoreboard players remove @s hold_carrot 1

## ODM
#execute if predicate snc:odm/has_gas_trigger run function snc:player/odm/has_trigger

## Reset scan
execute if score @s man_cool matches 1.. run scoreboard players remove @s man_cool 1
execute as @s[predicate=!snc:odm/has_gas_trigger] run function snc:player/odm/reset

## Second functions
execute if score ticks clock matches 9 run function snc:player/seconds_0
execute if score ticks clock matches 19 run function snc:player/seconds_1
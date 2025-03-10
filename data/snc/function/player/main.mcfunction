## Died
execute if score @s death matches 1 run function snc:player/death

## Logic
execute if score @s earthquake matches 0.. run function snc:logic/earthquake/score
execute if score @s messages matches 1.. run function snc:player/messages
execute if score @s manual matches 1.. run function snc:logic/manual/trigger
execute if score @s manual matches ..-1 run function snc:logic/manual/config
# execute if score @s snc.knockback matches 1.. run function snc:logic/push/back/main
execute if score @s odm_action matches -20..-1 run function snc:player/odm/gyro/dash/main
execute if score @s odm_action matches -25..-21 run function snc:player/odm/gyro/slash/main
execute if score @s snc.leave matches 1..3 run function snc:logic/broadcast/leave

## Team
function snc:logic/team/main

# Delte barrier blocks (DANGER)
# execute as @s[tag=!barrier] unless entity @a[distance=1..7.5,tag=transform] rotated ~ 0 run fill ^-5 ^-8 ^-5 ^5 ^3 ^5 minecraft:air replace barrier
execute as @s[tag=!barrier] rotated ~ 0 run fill ^-5 ^-8 ^-5 ^5 ^3 ^5 minecraft:air replace barrier
tag @s remove barrier

## Titan
# Injection
execute if score @s snc.hold matches 1.. unless predicate snc:player/has_hold run scoreboard players set @s snc.hold -1

# Pure Titan
execute if entity @s[tag=titan] run function snc:player/titan/effects/pure
execute if entity @s[tag=snc.handcuffs] unless predicate snc:is_riding run function snc:interact/handcuffs/player/respawn

## Using right click
execute if score @s using_carrot matches 1.. run function snc:player/control/right_click
execute if score @s snc.hold.rc matches 1.. run scoreboard players remove @s snc.hold.rc 1

## ODM
#execute if predicate snc:odm/has_gas_trigger run function snc:player/odm/has_trigger

## Reset scan
execute unless predicate snc:odm/has_gas_trigger run scoreboard players set @s odm_state 0

## Second functions
execute if score ticks clock matches 9 run function snc:player/seconds_0
# Show kills
scoreboard players operation @s Visib_Kill_Count = @s Titan_Kill_Count
execute if score ticks clock matches 19 run function snc:player/seconds_1
## Rotate
execute if score ticks clock matches 3 on passengers store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
execute as @s[type=villager] run function snc:eldia/villager/main
execute as @s[type=wandering_trader] run function snc:eldia/wandering_trader/main
execute if entity @s[tag=follow] run function snc:eldia/follow
scoreboard players add #villager_c spawn 1
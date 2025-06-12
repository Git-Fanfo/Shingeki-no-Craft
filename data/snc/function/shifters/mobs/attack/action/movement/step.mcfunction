playsound minecraft:aot.footsteps player @a ~ ~ ~ 2 1

execute as @e[distance=..12,tag=!attack] run function snc:shifters/combat/step with storage minecraft:attack

particle minecraft:block{block_state:"dirt"} ^ ^ ^2 1 0 1 0 30 force
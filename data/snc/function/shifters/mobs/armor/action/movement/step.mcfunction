playsound minecraft:aot.footsteps player @a ~ ~ ~ 2 1

execute positioned ~ ~ ~ as @e[distance=..12,tag=!armor] run function snc:shifters/combat/step with storage minecraft:armor

particle minecraft:block{block_state:"dirt"} ^ ^ ^2 1 0 1 0 30 force
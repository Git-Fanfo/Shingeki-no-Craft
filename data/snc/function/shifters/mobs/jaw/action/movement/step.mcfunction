playsound minecraft:aot.footsteps player @a ~ ~-8.5 ~ 2 1

execute positioned ~ ~-.5 ~ as @e[distance=..12,tag=!jaw] run function snc:shifters/combat/step with storage minecraft:jaw
particle minecraft:block{block_state:"dirt"} ^ ^ ^1 1 0 1 0 30 force
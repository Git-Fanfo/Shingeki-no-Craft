playsound minecraft:aot.footsteps player @a ~ ~-8.5 ~ 2 1

execute positioned ~ ~-8.5 ~ as @e[distance=..12,tag=!attack] run function snc:shifters/combat/step with storage minecraft:attack

particle minecraft:block{block_state:"dirt"} ^ ^-8.5 ^2 1 0 1 0 30 force
playsound minecraft:aot.footsteps player @a ~ ~ ~ 2 1

execute positioned ~ ~-12 ~ as @e[distance=..12] run function snc:shifters/combat/step with storage minecraft:armor

particle block{block_state:"dirt"} ~ ~-11 ~ 1 0 1 0 30 force
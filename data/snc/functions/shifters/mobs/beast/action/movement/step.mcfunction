playsound minecraft:aot.footsteps player @a ~ ~-12 ~ 2 1

execute positioned ~ ~-12 ~ as @e[distance=..12] run function snc:shifters/combat/step with storage minecraft:beast

particle block{block_state:"dirt"} ~ ~-12 ~ 1 0 1 0 30 force
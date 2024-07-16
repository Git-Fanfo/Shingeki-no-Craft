playsound minecraft:aot.footsteps player @a ~ ~-35 ~ 4.5 0

execute positioned ~ ~-35 ~ as @e[distance=..40] run function snc:shifters/combat/step with storage minecraft:colossal

particle minecraft:block{block_state:"dirt"} ~ ~-35 ~ 2 0 2 0 70 force
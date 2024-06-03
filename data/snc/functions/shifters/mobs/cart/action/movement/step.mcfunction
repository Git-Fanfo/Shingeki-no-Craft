playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .1

execute positioned ~ ~ ~ as @e[distance=..12] run function snc:shifters/combat/step with storage minecraft:cart

particle minecraft:block{block_state:"dirt"} ~ ~ ~ 1 0 1 0 30 force
playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .1

execute positioned ~ ~ ~ as @e[distance=..3,tag=!cart] unless predicate snc:is_riding run function snc:shifters/combat/step with storage minecraft:cart

particle minecraft:block{block_state:"dirt"} ~ ~ ~ 1 0 1 0 30 force
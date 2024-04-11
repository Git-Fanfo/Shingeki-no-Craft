playsound minecraft:aot.footsteps player @a ~ ~-8.5 ~ 2 1
execute positioned ~ ~-8.5 ~ as @e[distance=..12] run function snc:shifters/mobs/attack/action/movement/damage with storage minecraft:attack
particle block{block_state:"dirt"} ^ ^-8.5 ^2 1 0 1 0 30 force
particle minecraft:block{block_state:"dirt"} ~ ~.5 ~ .25 .5 .25 0 15 force
particle minecraft:block{block_state:"iron_block"} ~ ~.5 ~ .25 .5 .25 0 10 force
particle minecraft:dripping_honey ~ ~ ~ 0 0 0 1 1 force
particle minecraft:bubble_pop ~ ~ ~ 0 0 0 1 1 force

playsound minecraft:entity.wither.break_block block @a ~ ~ ~ 1 1.7
execute if predicate snc:chance/20 run effect give @n[tag=hurtbox,distance=..8] water_breathing 1 0 true
kill
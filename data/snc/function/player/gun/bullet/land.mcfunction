particle minecraft:block{block_state:"dirt"} ~ ~.1 ~ .25 .1 .25 0 5 force
playsound minecraft:entity.wither.break_block block @a ~ ~ ~ 1 1.7
execute if predicate snc:chance/20 run effect give @n[tag=hurtbox,distance=..8] water_breathing 1 0 true
kill
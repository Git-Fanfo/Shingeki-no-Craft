execute if block ~ ~-1 ~ #snc:touch_grass run tag @s add grass
execute if predicate snc:villager/light run tag @s add light
execute if predicate snc:villager/sunlight run tag @s add sun
execute if entity @s[tag=handcuffs] run particle block{block_state:"chain"} ~ ~1 ~ .5 .5 .5 1 50 force

execute if score time clock matches 1005..1025 run function snc:eldia/villager/reputation/check
execute if score time clock matches 13005..13025 run function snc:eldia/villager/reputation/check
particle block{block_state:"stone"} ~ ~ ~ .5 .5 .5 0 10 force
execute positioned ~-4.5 ~-4.5 ~-4.5 as @e[dx=8,dy=8,dz=8,type=!#snc:pivot,tag=!beast] unless score @s shifter_vars matches 4 run function snc:shifters/mobs/beast/action/throw_area/damage with storage minecraft:beast

execute unless predicate snc:is_riding run particle crit ~ ~-.5 ~ 3 0 3 0 100 force
execute unless predicate snc:is_riding run particle block{block_state:"deepslate"} ~ ~-.5 ~ 2 0 2 0 20 force
execute unless predicate snc:is_riding run particle campfire_cosy_smoke ~ ~1 ~ 1 2 1 .02 50 force
execute unless predicate snc:is_riding run particle large_smoke ~ ~-.5 ~ 0 0 0 .3 100 force
execute unless predicate snc:is_riding run playsound minecraft:entity.wither.break_block player @a ~ ~ ~ 6 .8

execute unless predicate snc:is_riding run kill
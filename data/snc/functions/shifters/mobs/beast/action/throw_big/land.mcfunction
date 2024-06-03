## Crater
execute if score $shifter_destroy config matches 1 if score $rock beast_vars matches 1 align xyz positioned ~.5 ~1 ~.5 run function snc:shifters/mobs/beast/action/throw_big/summon

execute as @e[distance=..8,tag=!beast] run function snc:shifters/mobs/beast/action/throw_big/damage with storage minecraft:beast
particle large_smoke ~ ~ ~ 0 0 0 1 100 force
playsound minecraft:entity.wither.break_block player @a ~ ~ ~ 6 .5
playsound aot.rock_smash player @a ~ ~ ~ 6

kill
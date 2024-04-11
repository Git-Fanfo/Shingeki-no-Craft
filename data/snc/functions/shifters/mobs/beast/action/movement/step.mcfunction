playsound minecraft:aot.footsteps player @a ~ ~ ~ 2 1
execute positioned ~ ~-2 ~ as @a[distance=..12] unless score @s beast_vars matches 1 unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
particle block{block_state:"dirt"} ~ ~-2 ~ 1 0 1 0 30 force
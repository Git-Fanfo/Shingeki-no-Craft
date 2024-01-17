execute if score @s atk matches 240 run tag @s add snc.infct
execute if score @s atk matches 240 run scoreboard players reset @s atk

execute if score @s atk matches 120 run tag @s remove snc.infct
execute if score @s atk matches 120 run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force
execute if score @s atk matches 120 run playsound aot.heart player @a ~ ~ ~ 1 .8

execute if score @s atk matches 100 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 100 run particle dust_color_transition 1 0.941 0.098 1 1 1 1 ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 82 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 82 run particle dust_color_transition 1 0.941 0.098 1 1 1 1 ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 66 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 66 run particle dust_color_transition 1 0.941 0.098 1 1 1 1 ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 52 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 52 run particle dust_color_transition 1 0.941 0.098 1 1 1 1 ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 40 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 40 run particle dust_color_transition 1 0.941 0.098 1 1 1 1 ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 30 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 30 run particle dust_color_transition 1 0.941 0.098 1 1 1 1 ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 22 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 22 run particle dust_color_transition 1 0.941 0.098 1 1 1 1 ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 1 if score @s shifter_vars matches 1.. run particle poof ~ ~1 ~ .5 .5 .5 .05 20 force
execute if score @s atk matches 1 if score @s shifter_vars matches 1.. run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1 1
execute if score @s atk matches 1 unless score @s shifter_vars matches 1.. run function snc:player/titan/injection/normal

scoreboard players remove @s atk 1
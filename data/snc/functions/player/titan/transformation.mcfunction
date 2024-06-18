## Transform
execute if score @s atk matches 300 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1
execute if score @s atk matches 300 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force
execute if score @s atk matches 289 run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force
execute if score @s atk matches 289 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1
execute if score @s atk matches 289 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force
execute if score @s atk matches 280 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1
execute if score @s atk matches 280 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force
execute if score @s atk matches 273 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1.15
execute if score @s atk matches 273 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force
execute if score @s atk matches 266 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1.2
execute if score @s atk matches 266 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 265 run playsound minecraft:aot.shifters.trigger master @a ~ ~ ~ 10 1
execute if score @s atk matches 260..266 run function snc:shifters/function/unique {"pre":"function snc:shifters/human/trigger/main with storage minecraft:","post":""}

## Royal Blood
execute if score @s atk matches 240 run tag @s add snc.infct
execute if score @s atk matches 240 run scoreboard players reset @s atk

## Inject
execute if score @s atk matches 120 run tag @s remove snc.infct
execute if score @s atk matches 120 run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force
execute if score @s atk matches 120 run playsound aot.heart player @a ~ ~ ~ 1 .8

execute if score @s atk matches 100 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 100 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force
execute if score @s atk matches 82 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 82 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 66 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 66 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 52 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 52 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 40 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 40 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 30 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 30 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 22 run playsound aot.heart player @a ~ ~ ~ 1 1
execute if score @s atk matches 22 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s atk matches 1 if score @s shifter_vars matches 1.. run particle poof ~ ~1 ~ .5 .5 .5 .05 20 force
execute if score @s atk matches 1 if score @s shifter_vars matches 1.. run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1 1
execute if score @s atk matches 1 unless score @s shifter_vars matches 1.. run function snc:player/titan/injection/normal

scoreboard players remove @s atk 1
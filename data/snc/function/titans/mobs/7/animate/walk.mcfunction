execute if score @s walk matches 58 run data modify entity @s item.components.minecraft:custom_model_data set value 202
execute if score @s walk matches 55 run data modify entity @s item.components.minecraft:custom_model_data set value 203
execute if score @s walk matches 53 run data modify entity @s item.components.minecraft:custom_model_data set value 204
execute if score @s walk matches 51 run data modify entity @s item.components.minecraft:custom_model_data set value 205
execute if score @s walk matches 49 run data modify entity @s item.components.minecraft:custom_model_data set value 206
execute if score @s walk matches 47 run data modify entity @s item.components.minecraft:custom_model_data set value 207
execute if score @s walk matches 44 run data modify entity @s item.components.minecraft:custom_model_data set value 208

execute if score @s walk matches 51 as @a[distance=..8] run scoreboard players add @s earthquake 4
execute if score @s walk matches 41 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1

execute if score @s walk matches 41 run data modify entity @s item.components.minecraft:custom_model_data set value 209
execute if score @s walk matches 39 run data modify entity @s item.components.minecraft:custom_model_data set value 210
execute if score @s walk matches 37 run data modify entity @s item.components.minecraft:custom_model_data set value 211
execute if score @s walk matches 35 run data modify entity @s item.components.minecraft:custom_model_data set value 212
execute if score @s walk matches 33 run data modify entity @s item.components.minecraft:custom_model_data set value 213
execute if score @s walk matches 31 run data modify entity @s item.components.minecraft:custom_model_data set value 214
execute if score @s walk matches 29 run data modify entity @s item.components.minecraft:custom_model_data set value 215

execute if score @s walk matches 35 as @a[distance=..8] run scoreboard players add @s earthquake 4
execute if score @s walk matches 25 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1

execute if score @s walk matches 27 run data modify entity @s item.components.minecraft:custom_model_data set value 202
execute if score @s walk matches 25 run data modify entity @s item.components.minecraft:custom_model_data set value 203
execute if score @s walk matches 23 run data modify entity @s item.components.minecraft:custom_model_data set value 204
execute if score @s walk matches 21 run data modify entity @s item.components.minecraft:custom_model_data set value 205
execute if score @s walk matches 19 run data modify entity @s item.components.minecraft:custom_model_data set value 206
execute if score @s walk matches 17 run data modify entity @s item.components.minecraft:custom_model_data set value 207
execute if score @s walk matches 15 run data modify entity @s item.components.minecraft:custom_model_data set value 208

execute if score @s walk matches 21 as @a[distance=..8] run scoreboard players add @s earthquake 4
execute if score @s walk matches 11 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1

execute if score @s walk matches 13 run data modify entity @s item.components.minecraft:custom_model_data set value 209
execute if score @s walk matches 11 run data modify entity @s item.components.minecraft:custom_model_data set value 210
execute if score @s walk matches 9 run data modify entity @s item.components.minecraft:custom_model_data set value 211
execute if score @s walk matches 7 run data modify entity @s item.components.minecraft:custom_model_data set value 212
execute if score @s walk matches 5 run data modify entity @s item.components.minecraft:custom_model_data set value 213
execute if score @s walk matches 3 run data modify entity @s item.components.minecraft:custom_model_data set value 214
execute if score @s walk matches 1 run data modify entity @s item.components.minecraft:custom_model_data set value 215

execute if score @s walk matches 7 as @a[distance=..8] run scoreboard players add @s earthquake 4
execute if score @s walk matches 1 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1

execute if score @s walk matches 1 run tag @s remove walk

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-2.5 ^1 run function snc:titans/ai/destroy/check
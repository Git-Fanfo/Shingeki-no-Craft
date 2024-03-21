execute if score @s walk matches 58 run data modify entity @s item.components.minecraft:custom_model_data set value 10
execute if score @s walk matches 53 run data modify entity @s item.components.minecraft:custom_model_data set value 11
execute if score @s walk matches 47 run data modify entity @s item.components.minecraft:custom_model_data set value 12
execute if score @s walk matches 41 run data modify entity @s item.components.minecraft:custom_model_data set value 13

execute if score @s walk matches 49 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
execute if score @s walk matches 42 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .7
execute if score @s walk matches 35 run data modify entity @s item.components.minecraft:custom_model_data set value 14

execute if score @s walk matches 29 run data modify entity @s item.components.minecraft:custom_model_data set value 15
execute if score @s walk matches 24 run data modify entity @s item.components.minecraft:custom_model_data set value 16
execute if score @s walk matches 18 run data modify entity @s item.components.minecraft:custom_model_data set value 17
execute if score @s walk matches 12 run data modify entity @s item.components.minecraft:custom_model_data set value 18

execute if score @s walk matches 18 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 8, Ex 1 - 0.7 means 0.3 * 10 + 8 = 11
execute if score @s walk matches 11 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 5 .1
execute if score @s walk matches 6 run data modify entity @s item.components.minecraft:custom_model_data set value 19

execute if score @s walk matches 1 run tag @s remove walk

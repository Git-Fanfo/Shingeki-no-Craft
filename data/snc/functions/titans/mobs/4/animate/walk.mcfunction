execute if score @s walk matches 58 run data modify entity @s item.components.minecraft:custom_model_data set value 86
execute if score @s walk matches 53 run data modify entity @s item.components.minecraft:custom_model_data set value 87
execute if score @s walk matches 47 run data modify entity @s item.components.minecraft:custom_model_data set value 88
execute if score @s walk matches 41 run data modify entity @s item.components.minecraft:custom_model_data set value 89

execute if score @s walk matches 49 run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
execute if score @s walk matches 39 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if score @s walk matches 35 run data modify entity @s item.components.minecraft:custom_model_data set value 90

execute if score @s walk matches 29 run data modify entity @s item.components.minecraft:custom_model_data set value 91
execute if score @s walk matches 24 run data modify entity @s item.components.minecraft:custom_model_data set value 92
execute if score @s walk matches 18 run data modify entity @s item.components.minecraft:custom_model_data set value 93
execute if score @s walk matches 12 run data modify entity @s item.components.minecraft:custom_model_data set value 94

execute if score @s walk matches 18 run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
# 1 -> 8, Ex 1 - 0.7 means 0.3 * 10 + 8 = 11
execute if score @s walk matches 8 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if score @s walk matches 6 run data modify entity @s item.components.minecraft:custom_model_data set value 95

execute if score @s walk matches 1 run tag @s remove walk


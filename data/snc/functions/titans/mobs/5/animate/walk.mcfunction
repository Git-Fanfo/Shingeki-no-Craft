execute if score @s atk matches 58 run data modify entity @s item.components.minecraft:custom_model_data set value 119
execute if score @s atk matches 53 run data modify entity @s item.components.minecraft:custom_model_data set value 120
execute if score @s atk matches 47 run data modify entity @s item.components.minecraft:custom_model_data set value 121
execute if score @s atk matches 41 run data modify entity @s item.components.minecraft:custom_model_data set value 122

execute if score @s atk matches 49 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
execute if score @s atk matches 42 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .7
execute if score @s atk matches 35 run data modify entity @s item.components.minecraft:custom_model_data set value 123

execute if score @s atk matches 29 run data modify entity @s item.components.minecraft:custom_model_data set value 124
execute if score @s atk matches 24 run data modify entity @s item.components.minecraft:custom_model_data set value 125
execute if score @s atk matches 18 run data modify entity @s item.components.minecraft:custom_model_data set value 126
execute if score @s atk matches 12 run data modify entity @s item.components.minecraft:custom_model_data set value 127

execute if score @s atk matches 18 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 8, Ex 1 - 0.7 means 0.3 * 10 + 8 = 11
execute if score @s atk matches 11 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .7
execute if score @s atk matches 6 run data modify entity @s item.components.minecraft:custom_model_data set value 128

execute if score @s atk matches 1 run tag @s remove walk

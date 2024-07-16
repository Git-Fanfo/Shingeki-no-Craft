execute if score @s walk matches 58 run data modify entity @s item.components.minecraft:custom_model_data set value 31
execute if score @s walk matches 53 run data modify entity @s item.components.minecraft:custom_model_data set value 32
execute if score @s walk matches 47 run data modify entity @s item.components.minecraft:custom_model_data set value 33
execute if score @s walk matches 41 run data modify entity @s item.components.minecraft:custom_model_data set value 34

execute if entity @s[scores={walk=49}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
execute if entity @s[scores={walk=36}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.2 1.3
execute if score @s walk matches 35 run data modify entity @s item.components.minecraft:custom_model_data set value 35

execute if score @s walk matches 29 run data modify entity @s item.components.minecraft:custom_model_data set value 36
execute if score @s walk matches 24 run data modify entity @s item.components.minecraft:custom_model_data set value 37
execute if score @s walk matches 18 run data modify entity @s item.components.minecraft:custom_model_data set value 38
execute if score @s walk matches 12 run data modify entity @s item.components.minecraft:custom_model_data set value 39

execute if entity @s[scores={walk=18}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
# 1 -> 8, Ex 1 - 0.7 means 0.3 * 10 + 8 = 11
execute if entity @s[scores={walk=5}] at @s run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.2 1.3
execute if score @s walk matches 6 run data modify entity @s item.components.minecraft:custom_model_data set value 40

execute if score @s walk matches ..1 run tag @s remove walk

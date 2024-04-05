execute if score @s walk matches 58 run data modify entity @s item.components.minecraft:custom_model_data set value 119
execute if score @s walk matches 53 run data modify entity @s item.components.minecraft:custom_model_data set value 120
execute if score @s walk matches 47 run data modify entity @s item.components.minecraft:custom_model_data set value 121
execute if score @s walk matches 41 run data modify entity @s item.components.minecraft:custom_model_data set value 122

execute if score @s walk matches 49 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
execute if score @s walk matches 42 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .7
execute if score @s walk matches 35 run data modify entity @s item.components.minecraft:custom_model_data set value 123

execute if score @s walk matches 29 run data modify entity @s item.components.minecraft:custom_model_data set value 124
execute if score @s walk matches 24 run data modify entity @s item.components.minecraft:custom_model_data set value 125
execute if score @s walk matches 18 run data modify entity @s item.components.minecraft:custom_model_data set value 126
execute if score @s walk matches 12 run data modify entity @s item.components.minecraft:custom_model_data set value 127

execute if score @s walk matches 18 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 8, Ex 1 - 0.7 means 0.3 * 10 + 8 = 11
execute if score @s walk matches 11 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .7
execute if score @s walk matches 6 run data modify entity @s item.components.minecraft:custom_model_data set value 128

execute if score @s walk matches 1 run tag @s remove walk

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^2 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-5.5 ^2 run function snc:titans/ai/destroy/check
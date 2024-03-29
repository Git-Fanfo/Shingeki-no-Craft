execute if score action colossal_vars matches 50 run data modify entity @s item.components.minecraft:custom_model_data set value 480
execute if score action colossal_vars matches 48 run data modify entity @s item.components.minecraft:custom_model_data set value 481
execute if score action colossal_vars matches 46 run data modify entity @s item.components.minecraft:custom_model_data set value 482
execute if score action colossal_vars matches 44 run data modify entity @s item.components.minecraft:custom_model_data set value 483
execute if score action colossal_vars matches 42 run data modify entity @s item.components.minecraft:custom_model_data set value 484
execute if score action colossal_vars matches 40 run data modify entity @s item.components.minecraft:custom_model_data set value 485
execute if score action colossal_vars matches 38 run data modify entity @s item.components.minecraft:custom_model_data set value 486
execute if score action colossal_vars matches 36 run data modify entity @s item.components.minecraft:custom_model_data set value 487
execute if score action colossal_vars matches 34 run data modify entity @s item.components.minecraft:custom_model_data set value 488
execute if score action colossal_vars matches 32 run data modify entity @s item.components.minecraft:custom_model_data set value 489
execute if score action colossal_vars matches 30 run data modify entity @s item.components.minecraft:custom_model_data set value 490
execute if score action colossal_vars matches 28 run data modify entity @s item.components.minecraft:custom_model_data set value 491
execute if score action colossal_vars matches 26 run data modify entity @s item.components.minecraft:custom_model_data set value 492
execute if score action colossal_vars matches 24 run data modify entity @s item.components.minecraft:custom_model_data set value 493
execute if score action colossal_vars matches 22 run data modify entity @s item.components.minecraft:custom_model_data set value 494
execute if score action colossal_vars matches 20 run data modify entity @s item.components.minecraft:custom_model_data set value 495
execute if score action colossal_vars matches 18 run data modify entity @s item.components.minecraft:custom_model_data set value 496
execute if score action colossal_vars matches 16 run data modify entity @s item.components.minecraft:custom_model_data set value 497
execute if score action colossal_vars matches 14 run data modify entity @s item.components.minecraft:custom_model_data set value 498
execute if score action colossal_vars matches 12 run data modify entity @s item.components.minecraft:custom_model_data set value 499
execute if score action colossal_vars matches 10 run data modify entity @s item.components.minecraft:custom_model_data set value 500
execute if score action colossal_vars matches 8 run data modify entity @s item.components.minecraft:custom_model_data set value 501

execute if score action colossal_vars matches 16 on vehicle rotated ~ 0 positioned ^5 ^1 ^13.5 as @e[type=!item,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/jaw/tp
execute if score action colossal_vars matches 14 on vehicle rotated ~ 0 positioned ^5 ^9 ^13 as @e[type=!item,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/jaw/tp
execute if score action colossal_vars matches 12 on vehicle rotated ~ 0 positioned ^5 ^12 ^10.5 as @e[type=!item,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/jaw/tp
execute if score action colossal_vars matches 10 on vehicle rotated ~ 0 positioned ^3 ^14 ^5 as @e[type=!item,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/jaw/tp
execute if score action colossal_vars matches 8 on vehicle rotated ~ 0 positioned ^1.5 ^19 ^4 as @e[type=!item,distance=..10] unless entity @s[tag=colossal] unless score @s colossal_vars matches 1 run function snc:shifters/mobs/colossal/action/jaw/tp

execute if score action colossal_vars matches 21 run tag @s add consume
execute if score action colossal_vars matches 21 run scoreboard players set consume colossal_vars 20

execute if score action colossal_vars matches ..1 run scoreboard players set state colossal_vars 3

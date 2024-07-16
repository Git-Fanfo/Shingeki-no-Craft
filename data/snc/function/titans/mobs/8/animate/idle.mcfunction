execute if score @s idle matches 40 if predicate snc:chance/30 run tag @s add creepy_tick_1
execute if score @s[tag=creepy_tick_1] idle matches 40 run data modify entity @s item.components.minecraft:custom_model_data set value 218
execute if score @s[tag=creepy_tick_1] idle matches 39 run data modify entity @s item.components.minecraft:custom_model_data set value 219
execute if score @s[tag=creepy_tick_1] idle matches 38 run data modify entity @s item.components.minecraft:custom_model_data set value 220
execute if score @s[tag=creepy_tick_1] idle matches 37 run data modify entity @s item.components.minecraft:custom_model_data set value 217
execute if score @s idle matches 37 run tag @s remove creepy_tick_1

execute if score @s idle matches 30 if predicate snc:chance/30 run tag @s add creepy_tick_2
execute if score @s[tag=creepy_tick_2] idle matches 30 run data modify entity @s item.components.minecraft:custom_model_data set value 220
execute if score @s[tag=creepy_tick_2] idle matches 29 run data modify entity @s item.components.minecraft:custom_model_data set value 218
execute if score @s[tag=creepy_tick_2] idle matches 28 run data modify entity @s item.components.minecraft:custom_model_data set value 219
execute if score @s[tag=creepy_tick_2] idle matches 27 run data modify entity @s item.components.minecraft:custom_model_data set value 217
execute if score @s idle matches 27 run tag @s remove creepy_tick_2

execute if score @s idle matches 20 if predicate snc:chance/30 run tag @s add creepy_tick_3
execute if score @s[tag=creepy_tick_3] idle matches 20 run data modify entity @s item.components.minecraft:custom_model_data set value 218
execute if score @s[tag=creepy_tick_3] idle matches 19 run data modify entity @s item.components.minecraft:custom_model_data set value 220
execute if score @s[tag=creepy_tick_3] idle matches 18 run data modify entity @s item.components.minecraft:custom_model_data set value 219
execute if score @s[tag=creepy_tick_3] idle matches 17 run data modify entity @s item.components.minecraft:custom_model_data set value 217
execute if score @s idle matches 17 run tag @s remove creepy_tick_3

execute if score @s idle matches 10 if predicate snc:chance/30 run tag @s add creepy_tick_4
execute if score @s[tag=creepy_tick_4] idle matches 10 run data modify entity @s item.components.minecraft:custom_model_data set value 220
execute if score @s[tag=creepy_tick_4] idle matches 9 run data modify entity @s item.components.minecraft:custom_model_data set value 219
execute if score @s[tag=creepy_tick_4] idle matches 8 run data modify entity @s item.components.minecraft:custom_model_data set value 218
execute if score @s[tag=creepy_tick_4] idle matches 7 run data modify entity @s item.components.minecraft:custom_model_data set value 217
execute if score @s idle matches 7 run tag @s remove creepy_tick_4
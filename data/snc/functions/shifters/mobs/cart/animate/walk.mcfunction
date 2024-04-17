execute if score walk cart_vars matches 20 run data modify entity @s item.components.minecraft:custom_model_data set value 4
execute if score walk cart_vars matches 17 run data modify entity @s item.components.minecraft:custom_model_data set value 5
execute if score walk cart_vars matches 15 run data modify entity @s item.components.minecraft:custom_model_data set value 6
execute if score walk cart_vars matches 12 run data modify entity @s item.components.minecraft:custom_model_data set value 7

execute if score walk cart_vars matches 10 run data modify entity @s item.components.minecraft:custom_model_data set value 4
execute if score walk cart_vars matches 7 run data modify entity @s item.components.minecraft:custom_model_data set value 5
execute if score walk cart_vars matches 5 run data modify entity @s item.components.minecraft:custom_model_data set value 6
execute if score walk cart_vars matches 2 run data modify entity @s item.components.minecraft:custom_model_data set value 7

execute if score walk cart_vars matches 20 run function snc:shifters/mobs/cart/action/movement/step
execute if score walk cart_vars matches 10 run function snc:shifters/mobs/cart/action/movement/step

execute if score walk cart_vars matches 20 run playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .1
execute if score walk cart_vars matches 10 run playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .1

execute if score walk cart_vars matches 5 run scoreboard players set state cart_vars 3
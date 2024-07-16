execute if score action cart_vars matches 10 run data modify entity @s item.components.minecraft:custom_model_data set value 28
execute if score action cart_vars matches 10 on vehicle run attribute @s minecraft:generic.scale base set 1.13
execute if score action cart_vars matches 7 run data modify entity @s item.components.minecraft:custom_model_data set value 29
execute if score action cart_vars matches 7 on vehicle run attribute @s minecraft:generic.scale base set .8
execute if score action cart_vars matches 5 run data modify entity @s item.components.minecraft:custom_model_data set value 30
execute if score action cart_vars matches 7 on vehicle run attribute @s minecraft:generic.scale base set .5
execute if score action cart_vars matches 0 run scoreboard players set $moving cart_vars 0
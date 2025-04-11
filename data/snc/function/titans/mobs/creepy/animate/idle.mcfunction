execute if score @s idle matches 40 store result score @s random run random value 1..100
execute if score @s random matches ..30 if score @s idle matches 40 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/2"
execute if score @s random matches ..30 if score @s idle matches 39 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/3"
execute if score @s random matches ..30 if score @s idle matches 38 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/4"
execute if score @s random matches ..30 if score @s idle matches 37 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/1"

execute if score @s idle matches 30 store result score @s random run random value 1..100
execute if score @s random matches ..30 if score @s idle matches 30 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/4"
execute if score @s random matches ..30 if score @s idle matches 29 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/2"
execute if score @s random matches ..30 if score @s idle matches 28 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/3"
execute if score @s random matches ..30 if score @s idle matches 27 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/1"

execute if score @s idle matches 20 store result score @s random run random value 1..100
execute if score @s random matches ..30 if score @s idle matches 20 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/2"
execute if score @s random matches ..30 if score @s idle matches 19 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/4"
execute if score @s random matches ..30 if score @s idle matches 18 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/3"
execute if score @s random matches ..30 if score @s idle matches 17 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/1"

execute if score @s idle matches 10 store result score @s random run random value 1..100
execute if score @s random matches ..30 if score @s idle matches 10 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/4"
execute if score @s random matches ..30 if score @s idle matches 9 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/3"
execute if score @s random matches ..30 if score @s idle matches 8 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/2"
execute if score @s random matches ..30 if score @s idle matches 7 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/1"

execute unless score @s random matches ..30 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/idle/2"
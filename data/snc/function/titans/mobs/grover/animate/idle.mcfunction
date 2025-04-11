execute if score @s idle matches 40 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/idle/1"
execute if score @s idle matches 38 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/idle/2"
execute if score @s idle matches 26 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/idle/3"
execute if score @s idle matches 24 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/idle/4"

execute if score @s idle matches ..16 run scoreboard players set @s idle 41
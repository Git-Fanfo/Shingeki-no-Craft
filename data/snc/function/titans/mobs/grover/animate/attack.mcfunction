# ATTACK
#execute if score @s atk matches 69 run playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 2 0
execute if score @s atk matches 70 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/1"
execute if score @s atk matches 70 on vehicle run effect give @s slowness 2 127 true
execute if score @s atk matches 68 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/2"
execute if score @s atk matches 62 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/3"
execute if score @s atk matches 60 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/4"
execute if score @s atk matches 54 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/5"
execute if score @s atk matches 52 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/6"
execute if score @s atk matches 44 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/7"
execute if score @s atk matches 42 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/8"
execute if score @s atk matches 40 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/9"
execute if score @s atk matches 38 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/10"
execute if score @s atk matches 36 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/11"
execute if score @s atk matches 34 run data modify entity @s item.components.minecraft:item_model set value "titan/grover/attack/12"

execute if score @s atk matches 24 run tag @s remove attack
execute if score @s atk matches 24 run tag @s add walk
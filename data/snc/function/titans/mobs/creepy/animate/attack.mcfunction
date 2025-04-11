# ATTACK
execute if score @s atk matches 69 run playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 2 0
execute if score @s atk matches 69 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/attack_2/1"
execute if score @s atk matches 68 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/attack_2/2"
execute if score @s atk matches 67 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/attack_2/3"
execute if score @s atk matches 66 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/attack_2/4"
execute if score @s atk matches 65 run tag @s remove attack
execute if score @s atk matches 65 run tag @s add attack_2
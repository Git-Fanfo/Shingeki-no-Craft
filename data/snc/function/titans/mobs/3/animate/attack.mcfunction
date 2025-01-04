# ATTACK
execute if score @s atk matches 70 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/1"
execute if score @s atk matches 67 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/2"
execute if score @s atk matches 64 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/3"
execute if score @s atk matches 61 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/4"
execute if score @s atk matches 56 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/5"
execute if score @s atk matches 50 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/6"
execute if score @s atk matches 44 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/7"
execute if score @s atk matches 38 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/8"
execute if score @s atk matches 18 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/6"
execute if score @s atk matches 15 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/5"
execute if score @s atk matches 12 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/4"
execute if score @s atk matches 9 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/3"
execute if score @s atk matches 6 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/2"
execute if score @s atk matches 3 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack_2/1"

execute if score @s atk matches 2 run tag @s remove attack

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-3.5 ^1 run function snc:titans/ai/destroy/check
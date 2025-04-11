execute if score @s atk matches 68 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/1"
execute if score @s atk matches 67 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/2"
execute if score @s atk matches 66 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/3"
execute if score @s atk matches 65 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/4"
execute if score @s atk matches 64 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/5"
execute if score @s atk matches 63 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/6"
execute if score @s atk matches 59 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/7"
execute if score @s atk matches 55 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/8"
execute if score @s atk matches 51 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/7"
execute if score @s atk matches 47 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/6"
execute if score @s atk matches 43 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/7"
execute if score @s atk matches 39 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack_2/8"
execute if score @s atk matches ..40 run tag @s remove attack

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-2.5 ^1 run function snc:titans/ai/destroy/check
execute if score @s atk matches 70 run data modify entity @s item.components.minecraft:item_model set value "titan/ameer/attack_2/1"
execute if score @s atk matches 68 run data modify entity @s item.components.minecraft:item_model set value "titan/ameer/attack_2/2"
execute if score @s atk matches 66 run data modify entity @s item.components.minecraft:item_model set value "titan/ameer/attack_2/3"
execute if score @s atk matches 64 run data modify entity @s item.components.minecraft:item_model set value "titan/ameer/attack_2/4"
execute if score @s atk matches 62 run data modify entity @s item.components.minecraft:item_model set value "titan/ameer/attack_2/5"
execute if score @s atk matches 60 run data modify entity @s item.components.minecraft:item_model set value "titan/ameer/attack_2/6"
execute if score @s atk matches 58 run data modify entity @s item.components.minecraft:item_model set value "titan/ameer/attack_2/7"
execute if score @s atk matches 56 run data modify entity @s item.components.minecraft:item_model set value "titan/ameer/attack_2/8"
execute if score @s atk matches 54 run data modify entity @s item.components.minecraft:item_model set value "titan/ameer/attack_2/9"

execute if score @s atk matches ..53 run tag @s remove attack

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-3.5 ^1 run function snc:titans/ai/destroy/check
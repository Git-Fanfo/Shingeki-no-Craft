execute if score @s atk matches 140 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/1"
execute if score @s atk matches 136 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/2"
execute if score @s atk matches 132 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/3"
execute if score @s atk matches 128 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/4"
execute if score @s atk matches 124 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/5"
execute if score @s atk matches 120 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/6"
execute if score @s atk matches 116 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/7"
execute if score @s atk matches 112 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/8"
execute if score @s atk matches 108 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/9"
execute if score @s atk matches 105 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/10"
execute if score @s atk matches 102 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/11"
execute if score @s atk matches 99 run data modify entity @s item.components.minecraft:item_model set value "titan/valentina/attack/10"
execute if score @s atk matches 71..97 run tag @s remove attack

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-2.5 ^1 run function snc:titans/ai/destroy/check
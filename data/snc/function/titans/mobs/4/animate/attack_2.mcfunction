execute if score @s atk matches 140 run data modify entity @s item.components.minecraft:custom_model_data set value 96
execute if score @s atk matches 136 run data modify entity @s item.components.minecraft:custom_model_data set value 97
execute if score @s atk matches 132 run data modify entity @s item.components.minecraft:custom_model_data set value 98
execute if score @s atk matches 128 run data modify entity @s item.components.minecraft:custom_model_data set value 99
execute if score @s atk matches 124 run data modify entity @s item.components.minecraft:custom_model_data set value 100
execute if score @s atk matches 120 run data modify entity @s item.components.minecraft:custom_model_data set value 101
execute if score @s atk matches 116 run data modify entity @s item.components.minecraft:custom_model_data set value 102
execute if score @s atk matches 112 run data modify entity @s item.components.minecraft:custom_model_data set value 103
execute if score @s atk matches 108 run data modify entity @s item.components.minecraft:custom_model_data set value 104
execute if score @s atk matches 105 run data modify entity @s item.components.minecraft:custom_model_data set value 105
execute if score @s atk matches 102 run data modify entity @s item.components.minecraft:custom_model_data set value 106
execute if score @s atk matches 99 run data modify entity @s item.components.minecraft:custom_model_data set value 105
execute if score @s atk matches 71..97 run tag @s remove attack

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-2.5 ^1 run function snc:titans/ai/destroy/check
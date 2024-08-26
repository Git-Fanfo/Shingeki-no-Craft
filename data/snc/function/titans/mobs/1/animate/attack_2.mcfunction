execute if score @s atk matches 139 run data modify entity @s item.components.minecraft:custom_model_data set value 22
execute if score @s atk matches 137 run data modify entity @s item.components.minecraft:custom_model_data set value 23
execute if score @s atk matches 135 run data modify entity @s item.components.minecraft:custom_model_data set value 24
execute if score @s atk matches 133 run data modify entity @s item.components.minecraft:custom_model_data set value 25
execute if score @s atk matches 132 run data modify entity @s item.components.minecraft:custom_model_data set value 26
execute if score @s atk matches 130 run data modify entity @s item.components.minecraft:custom_model_data set value 27

execute if score @s atk matches ..120 run tag @s remove attack

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-3.5 ^1 run function snc:titans/ai/destroy/check
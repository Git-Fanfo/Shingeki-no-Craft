execute if score @s atk matches 69 run data modify entity @s item.components.minecraft:custom_model_data set value 4
execute if score @s atk matches 67 run data modify entity @s item.components.minecraft:custom_model_data set value 5
execute if score @s atk matches 65 run data modify entity @s item.components.minecraft:custom_model_data set value 6
execute if score @s atk matches 63 run data modify entity @s item.components.minecraft:custom_model_data set value 7
execute if score @s atk matches 61 run data modify entity @s item.components.minecraft:custom_model_data set value 8
execute if score @s atk matches 59 run data modify entity @s item.components.minecraft:custom_model_data set value 9
execute if score @s atk matches 57 run data modify entity @s item.components.minecraft:custom_model_data set value 8
execute if score @s atk matches 55 run data modify entity @s item.components.minecraft:custom_model_data set value 7
execute if score @s atk matches 53 run data modify entity @s item.components.minecraft:custom_model_data set value 6
execute if score @s atk matches 51 run data modify entity @s item.components.minecraft:custom_model_data set value 5
execute if score @s atk matches 49 run data modify entity @s item.components.minecraft:custom_model_data set value 4

execute if score @s atk matches ..48 run tag @s remove attack

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-3.5 ^1 run function snc:titans/ai/destroy/check
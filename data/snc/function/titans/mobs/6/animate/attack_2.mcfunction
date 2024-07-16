execute if score @s atk matches 70 run data modify entity @s item.components.minecraft:custom_model_data set value 189
execute if score @s atk matches 68 run data modify entity @s item.components.minecraft:custom_model_data set value 190
execute if score @s atk matches 66 run data modify entity @s item.components.minecraft:custom_model_data set value 191
execute if score @s atk matches 64 run data modify entity @s item.components.minecraft:custom_model_data set value 192
execute if score @s atk matches 62 run data modify entity @s item.components.minecraft:custom_model_data set value 193
execute if score @s atk matches 60 run data modify entity @s item.components.minecraft:custom_model_data set value 194
execute if score @s atk matches 58 run data modify entity @s item.components.minecraft:custom_model_data set value 195
execute if score @s atk matches 56 run data modify entity @s item.components.minecraft:custom_model_data set value 196
execute if score @s atk matches 54 run data modify entity @s item.components.minecraft:custom_model_data set value 197

execute if score @s atk matches ..54 run tag @s remove attack

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-3.5 ^1 run function snc:titans/ai/destroy/check
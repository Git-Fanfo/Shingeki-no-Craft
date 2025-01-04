# ATTACK
execute if score @s atk matches 140 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/1"
execute if score @s atk matches 137 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/2"
execute if score @s atk matches 134 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/3"
execute if score @s atk matches 131 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/4"
execute if score @s atk matches 126 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/5"
execute if score @s atk matches 120 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/6"
execute if score @s atk matches 114 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/7"
execute if score @s atk matches 108 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/8"
execute if score @s atk matches 88 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/6"
execute if score @s atk matches 85 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/5"
execute if score @s atk matches 82 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/4"
execute if score @s atk matches 79 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/3"
execute if score @s atk matches 76 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/2"
execute if score @s atk matches 73 run data modify entity @s item.components.minecraft:item_model set value "titan/michelle/attack/1"

execute if score @s atk matches 72 run tag @s remove attack

#tellraw @a {"score":{"name":"@s","objective":"atk"}}
## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-3.5 ^1 run function snc:titans/ai/destroy/check
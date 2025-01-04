execute if score @s atk matches 70 run data modify entity @s item.components.minecraft:item_model set value "titan/zwei/attack/1"

execute if score @s atk matches 67 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 .85
execute if score @s atk matches 67 on vehicle at @s run particle minecraft:cloud ~ ~.5 ~ 1 0 1 .05 10

execute if score @s atk matches 67 run data modify entity @s item.components.minecraft:item_model set value "titan/zwei/attack/2"
execute if score @s atk matches 64 run data modify entity @s item.components.minecraft:item_model set value "titan/zwei/attack/3"
execute if score @s atk matches 61 run data modify entity @s item.components.minecraft:item_model set value "titan/zwei/attack/4"
execute if score @s atk matches 59 run data modify entity @s item.components.minecraft:item_model set value "titan/zwei/attack/5"
execute if score @s atk matches 55 run data modify entity @s item.components.minecraft:item_model set value "titan/zwei/attack/6"
execute if score @s atk matches ..45 run tag @s remove attack

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^ run function snc:titans/ai/destroy/check
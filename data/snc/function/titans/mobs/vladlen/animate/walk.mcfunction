execute if score @s walk matches 58 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/1"
execute if score @s walk matches 53 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/2"
execute if score @s walk matches 47 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/3"
execute if score @s walk matches 41 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/4"

execute if score @s walk matches 49 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
execute if score @s walk matches 42 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .7
execute if score @s walk matches 35 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/5"

execute if score @s walk matches 29 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/6"
execute if score @s walk matches 24 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/7"
execute if score @s walk matches 18 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/8"
execute if score @s walk matches 12 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/9"

execute if score @s walk matches 18 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 8, Ex 1 - 0.7 means 0.3 * 10 + 8 = 11
execute if score @s walk matches 11 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .7
execute if score @s walk matches 6 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/walk/10"

execute if score @s walk matches 1 run tag @s remove walk

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^2 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-5.5 ^2 run function snc:titans/ai/destroy/check
execute if score @s walk matches 58 run playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 2 .1
execute if score @s walk matches 58 run playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .4
execute if score @s walk matches 58 run playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .4
execute if score @s walk matches 48 run playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .4
execute if score @s walk matches 48 run playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 2 .4

execute if score @s walk matches 58 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/walk/1"
execute if score @s walk matches 57 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/walk/2"
execute if score @s walk matches 56 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/walk/3"
execute if score @s walk matches 55 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/walk/4"
execute if score @s walk matches 54 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/walk/5"
execute if score @s walk matches 52 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/walk/6"
execute if score @s walk matches 51 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/walk/7"
execute if score @s walk matches 50 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/walk/8"
execute if score @s walk matches 49 run data modify entity @s item.components.minecraft:item_model set value "titan/creepy/walk/9"

execute if score @s walk matches 48 run tag @s remove walk
execute if score @s walk matches ..48 run scoreboard players set @s walk 59

## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^1.5 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-2.5 ^1.5 run function snc:titans/ai/destroy/check
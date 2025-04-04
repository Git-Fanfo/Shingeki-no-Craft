execute if score @s walk matches 58 run data modify entity @s item.components.minecraft:item_model set value "titan/guido/walk/1"
execute if score @s walk matches 56 run data modify entity @s item.components.minecraft:item_model set value "titan/guido/walk/2"
execute if score @s walk matches 49 run data modify entity @s item.components.minecraft:item_model set value "titan/guido/walk/3"
execute if score @s walk matches 47 run data modify entity @s item.components.minecraft:item_model set value "titan/guido/walk/4"

#execute if score @s walk matches 49 as @a[distance=..7] run scoreboard players add @s earthquake 4
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
#execute if score @s walk matches 39 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1

execute if score @s walk matches 44 run tag @s remove walk
execute if score @s walk matches ..44 run scoreboard players set @s walk 59
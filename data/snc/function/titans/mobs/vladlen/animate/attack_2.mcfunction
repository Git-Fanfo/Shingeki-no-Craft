# ATTACK
execute if score @s atk matches 140 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/1"
execute if score @s atk matches 138 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/2"
execute if score @s atk matches 136 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/3"
execute if score @s atk matches 134 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/4"
execute if score @s atk matches 132 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/5"
execute if score @s atk matches 130 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/6"
execute if score @s atk matches 128 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/7"
execute if score @s atk matches 126 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/8"
execute if score @s atk matches 124 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/9"
execute if score @s atk matches 122 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/10"
execute if score @s atk matches 120 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/11"
execute if score @s atk matches 118 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/12"

execute if score @s atk matches 118 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 2 .75
execute if score @s atk matches 118 on vehicle at @s run particle minecraft:cloud ~ ~.5 ~ 2 0 2 .05 20

execute if score @s atk matches 116 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/13"
execute if score @s atk matches 113 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/14"
execute if score @s atk matches 109 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/15"
execute if score @s atk matches 105 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/16"
execute if score @s atk matches 108 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/17"
execute if score @s atk matches 104 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/18"
execute if score @s atk matches 99 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/19"
execute if score @s atk matches 95 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/20"

execute if score @s atk matches 92 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/21"

# I made a system to generalize it
execute if score @s atk matches 99 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 8

execute if score @s atk matches 90 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/22"
execute if score @s atk matches 88 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/23"
execute if score @s atk matches 86 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/24"
execute if score @s atk matches 84 run data modify entity @s item.components.minecraft:item_model set value "titan/vladlen/attack/25"

execute if score @s atk matches ..80 run tag @s remove attack
# Range
execute if score @s atk matches 140 on vehicle unless function snc:titans/mobs/5/attack/1_trigger run return -1
tag @s add attack

execute if score @s atk matches 140 on vehicle run effect give @s slowness 1 5 true

execute if score @s atk matches 118 on vehicle at @s run function snc:logic/apply_motion/titan/vladlen

# Apply dmg
execute if score @s atk matches 118 as @e[type=!item,tag=!titan,distance=..4] at @s run function snc:titans/ai/damage_1 with storage minecraft:titan_5

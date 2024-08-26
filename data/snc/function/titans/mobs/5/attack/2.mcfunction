# Range
execute if score @s atk matches 70 on vehicle unless function snc:titans/mobs/5/attack/2_trigger run return -1
execute if score @s atk matches 70 run tag @s add attack

# Attack
execute if score @s atk matches 70 on vehicle run effect give @s slowness 2 6 true

# Apply dmg
execute if score @s atk matches 44 as @e[type=!item,tag=!titan,distance=..5] at @s run function snc:titans/ai/damage_2 with storage minecraft:titan_5
execute if score @s atk matches 44 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 .7
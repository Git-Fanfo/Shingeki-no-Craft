# Range
execute if score @s atk matches 70 on vehicle unless function snc:titans/mobs/2/attack/1_trigger run return -1
execute if score @s atk matches 70 run tag @s add attack
# Attack
execute if score @s[tag=attack] atk matches 67 on vehicle run effect give @s speed 1 3 true
# Apply dmg
execute if score @s[tag=attack] atk matches 50 as @e[type=!item,tag=!titan,distance=..3] at @s run function snc:titans/ai/damage_1 with storage minecraft:titan_2
execute if score @s[tag=attack] atk matches 50 run playsound minecraft:aot.shifters.bite hostile @a ~ ~ ~ 1.5 1.5
# Range
execute if score @s atk matches 70 run function snc:titans/model/attack {"distance" : 10}

# Attack
execute if score @s atk matches 67 on vehicle run effect give @s speed 1 3 true
# Apply dmg
execute if score @s atk matches 40 as @e[type=!item,tag=!titan,distance=..4] at @s run function snc:titans/ai/damage_1 with storage minecraft:titan_2
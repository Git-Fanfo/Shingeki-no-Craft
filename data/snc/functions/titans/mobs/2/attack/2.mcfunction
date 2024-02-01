# Range
execute if score @s atk matches 140 run function snc:titans/model/attack {"distance" : 4}

# Attack
execute if score @s atk matches 140 run effect give @p[tag=wrap,distance=..4] levitation 2 0 true
execute as @p[tag=wrap,distance=..4] run function snc:titans/model/grab
# Apply dmg
execute if score @s atk matches 105 as @e[type=!item,tag=!titan,distance=..3] at @s run function snc:titans/ai/damage_2 with storage minecraft:titan_2
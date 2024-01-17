# Range
execute if score @s atk matches 70 run function snc:titans/model/attack {"distance" : 5}
# Look Titan
#execute if score @s atk matches 38..70 as @p[tag=wrap,distance=..5] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest, tag=collision,limit=1] feet
# Attack
execute if score @s atk matches 70 run effect give @p[tag=wrap,distance=..5] levitation 2 0 true
execute as @p[tag=wrap,distance=..5] run function snc:titans/model/grab

# Apply dmg
execute if score @s atk matches 38 as @e[type=!item,tag=!titan,distance=..3] at @s run function snc:titans/ai/damage_2 with storage minecraft:titan_3
# Range
execute if score @s atk matches 70 run function snc:titans/model/attack {"distance" : 6}
# Attack
#execute if score @s atk matches 64..70 as @p[tag=wrap,distance=..6] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest, tag=ai,limit=1] feet

# Apply dmg
execute if score @s atk matches 64 as @e[type=!item,tag=!titan,distance=..4] at @s run function snc:titans/ai/damage_2 with storage minecraft:titan_4
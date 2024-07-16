# Range
execute if score @s atk matches 70 run function snc:titans/model/attack {"distance" : 9}
# Look Titan
#execute if score @s atk matches 50..70 as @p[tag=wrap,distance=..9] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest, tag=collision,limit=1] feet

# Attack
execute if score @s atk matches 70 run effect give @p[tag=wrap,distance=..9] levitation 2 0 true
execute as @p[tag=wrap,distance=..4] run function snc:titans/model/grab

# To see an example, look for DeathExample
# Apply dmg
execute if score @s atk matches 54 as @e[type=!item,tag=!titan,distance=..4] at @s run function snc:titans/ai/damage_2 with storage minecraft:titan_6
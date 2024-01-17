# Range
execute if score @s atk matches 140 run function snc:titans/model/attack {"distance" : 4}
# Look Titan
#execute if score @s atk matches 105..140 as @p[tag=wrap,distance=..4] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest, tag=hurtbox,limit=1] feet
# Attack
execute if score @s atk matches 140 on vehicle run effect give @s slowness 3 6 true
execute if score @s atk matches 140 run effect give @p[tag=,distance=..4] levitation 2 255 true
execute as @p[tag=wrap,distance=..4] run function snc:titans/model/grab

# Apply dmg
execute if score @s atk matches 105 as @e[type=!item,tag=!titan,distance=..3.5] at @s run function snc:titans/ai/damage_1 with storage minecraft:titan_4
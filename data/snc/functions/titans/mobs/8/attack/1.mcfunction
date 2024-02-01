# Range
execute if score @s atk matches 140 run function snc:titans/model/attack {"distance" : 5}
execute on vehicle run effect give @s slowness 1 6 true
# Look Titan
# execute if score @s atk matches ..140 as @p[tag=wrap] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest, tag=hurtbox,limit=1] feet

# Attack
execute if score @s atk matches 137 run effect give @p[tag=wrap,distance=..5] levitation 2 0 true
execute as @p[tag=wrap,distance=..5] run function snc:titans/model/grab

# Apply dmg
execute if score @s atk matches 124 as @e[type=!item,tag=!titan,distance=..4] at @s run function snc:titans/ai/damage_1 with storage minecraft:titan_8
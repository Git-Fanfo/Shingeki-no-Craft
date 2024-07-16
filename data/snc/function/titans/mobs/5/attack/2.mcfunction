# Range
execute if score @s atk matches 70 run function snc:titans/model/attack {"distance" : 7}
# Attack
execute as @s[scores={atk=70}] if entity @s[tag=attack] on vehicle run effect give @s slowness 2 6 true

# Apply dmg
execute as @s[scores={atk=43}] run execute as @e[type=!item,tag=!titan,distance=..5] at @s run function snc:titans/ai/damage_2 with storage minecraft:titan_5
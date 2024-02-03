# Range
execute if score @s atk matches 140 run function snc:titans/model/attack {"distance" : 25}
# Attack
execute as @s[scores={atk=139}] if entity @s[tag=attack] on vehicle run effect give @s slowness 1 5 true
execute as @s[scores={atk=118}] if entity @s[tag=attack] on vehicle run data modify entity @s Motion[1] set value 1.5d

# Apply dmg
execute as @s[scores={atk=85}] as @e[type=!item,tag=!titan,distance=..4] at @s run function snc:titans/ai/damage_1 with storage minecraft:titan_5

## Move the pivot between frames
execute if score @s atk matches 140 positioned ^.5 ^1.5 ^2.5 run function snc:titans/mobs/8/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 137..139 if entity @s[tag=attack] positioned ^.5 ^1.5 ^2.5 run function snc:titans/mobs/8/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 135..136 if entity @s[tag=attack] positioned ^.5 ^3 ^2.5 run function snc:titans/mobs/8/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 133..134 if entity @s[tag=attack] positioned ^.5 ^4.5 ^1.5 run function snc:titans/mobs/8/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 131..132 if entity @s[tag=attack] positioned ^.5 ^4.9 ^.7 run function snc:titans/mobs/8/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 128..130 if entity @s[tag=attack] positioned ^.4 ^5.2 ^ run function snc:titans/mobs/8/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 71..127 if entity @s[tag=attack] positioned ^.3 ^5.5 ^-1 run function snc:titans/mobs/8/attack/1 with entity @s item.components."minecraft:custom_data"

execute if score @s atk matches 70 positioned ^ ^1 ^6.5 run function snc:titans/mobs/8/attack/2
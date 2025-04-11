## Move the pivot between frames
## Always do the animation first
# Set distance at the end Use the heart particle to know there the pivot is
execute if score @s atk matches 134..140 positioned ^ ^ ^-.6 run function snc:titans/mobs/zwei/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 127..133 if entity @s[tag=attack] positioned ^ ^.1 ^-.3 run function snc:titans/mobs/zwei/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 122..126 if entity @s[tag=attack] positioned ^ ^.3 ^-.2 run function snc:titans/mobs/zwei/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 117..121 if entity @s[tag=attack] positioned ^ ^1.4 ^-.3 run function snc:titans/mobs/zwei/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 111..116 if entity @s[tag=attack] positioned ^ ^1.7 ^-.5 run function snc:titans/mobs/zwei/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 104..110 if entity @s[tag=attack] positioned ^ ^1.8 ^-.6 run function snc:titans/mobs/zwei/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 105 if entity @s[tag=attack] positioned ^ ^1.7 ^-.6 run function snc:titans/mobs/zwei/attack/2 with entity @s item.components."minecraft:custom_data"

execute if score @s atk matches 40..70 run function snc:titans/mobs/zwei/attack/1
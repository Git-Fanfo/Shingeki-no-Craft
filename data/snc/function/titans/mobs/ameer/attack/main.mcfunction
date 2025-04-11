## Move the pivot between frames
## Always do the animation first
# Set distance at the end
# Use the heart particle to know there the pivot is
execute if score @s atk matches 140 positioned ^ ^.2 ^3 run function snc:titans/mobs/ameer/attack/1

execute if score @s atk matches 69..70 positioned ^ ^7.7 ^1 run function snc:titans/mobs/ameer/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 67..68 if entity @s[tag=attack] positioned ^ ^7.7 ^.8 run function snc:titans/mobs/ameer/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 65..66 if entity @s[tag=attack] positioned ^ ^7.9 ^.7 run function snc:titans/mobs/ameer/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 63..64 if entity @s[tag=attack] positioned ^ ^7.9 ^.5 run function snc:titans/mobs/ameer/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 61..62 if entity @s[tag=attack] positioned ^ ^8 ^-.1 run function snc:titans/mobs/ameer/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 59..60 if entity @s[tag=attack] positioned ^ ^8.1 ^-.3 run function snc:titans/mobs/ameer/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 57..58 if entity @s[tag=attack] positioned ^ ^8.5 ^-.7 run function snc:titans/mobs/ameer/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 55..56 if entity @s[tag=attack] positioned ^ ^8.6 ^-.8 run function snc:titans/mobs/ameer/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 54 if entity @s[tag=attack] positioned ^ ^8.6 ^-.8 run function snc:titans/mobs/ameer/attack/2 with entity @s item.components."minecraft:custom_data"
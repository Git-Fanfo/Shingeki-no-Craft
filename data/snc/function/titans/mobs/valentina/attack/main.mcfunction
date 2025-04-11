## Move the pivot between frames
## Always do the animation first
# Set distance at the end
# Use the heart particle to know there the pivot is
execute if score @s atk matches 137..140 positioned ^ ^.2 ^-.5 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 133..136 if entity @s[tag=attack] positioned ^ ^1 ^-1 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 129..132 if entity @s[tag=attack] positioned ^ ^1.8 ^-1.3 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 125..128 if entity @s[tag=attack] positioned ^ ^2.5 ^-.4 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 121..124 if entity @s[tag=attack] positioned ^ ^3.5 ^-1 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 117..120 if entity @s[tag=attack] positioned ^ ^4.7 ^-1 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 113..116 if entity @s[tag=attack] positioned ^ ^5.3 ^-.5 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 109..112 if entity @s[tag=attack] positioned ^ ^6.3 ^-.9 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 106..108 if entity @s[tag=attack] positioned ^ ^6.5 ^-1.2 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 105 if entity @s[tag=attack] positioned ^ ^6.6 ^-1.6 run function snc:titans/mobs/valentina/attack/1 with entity @s item.components."minecraft:custom_data"

execute if score @s atk matches 64..70 positioned ^ ^-.2 ^ run function snc:titans/mobs/valentina/attack/2
## Move the pivot between frames
## Always do the animation first
# Set distance at the end
# Use the heart particle to know there the pivot is
execute if score @s atk matches 140 positioned ^.5 ^1.5 ^2.5 run function snc:titans/mobs/8/attack/1
execute if score @s atk matches 137 if entity @s[tag=attack] positioned ^.5 ^1.5 ^2.5 run function snc:titans/mobs/8/attack/1
execute if score @s atk matches 135 if entity @s[tag=attack] positioned ^.5 ^3 ^2.5 run function snc:titans/mobs/8/attack/1
execute if score @s atk matches 133 if entity @s[tag=attack] positioned ^.5 ^4.5 ^1.5 run function snc:titans/mobs/8/attack/1
execute if score @s atk matches 131 if entity @s[tag=attack] positioned ^.5 ^4.9 ^.7 run function snc:titans/mobs/8/attack/1
execute if score @s atk matches 129 if entity @s[tag=attack] positioned ^.4 ^5.2 ^ run function snc:titans/mobs/8/attack/1
execute if score @s atk matches 71..127 if entity @s[tag=attack] positioned ^.3 ^5.5 ^-1 run function snc:titans/mobs/8/attack/1

execute if score @s atk matches 70 positioned ^ ^1 ^6.5 run function snc:titans/mobs/8/attack/2
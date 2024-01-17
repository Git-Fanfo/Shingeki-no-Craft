## Move the pivot between frames
## Always do the animation first
# Set distance at the end
# Use the heart particle to know there the pivot is
execute if score @s atk matches 138..140 positioned ^-3 ^10 ^-1 run function snc:titans/mobs/3/attack/1
execute if score @s atk matches 135..137 if entity @s[tag=attack] positioned ^-3 ^9.5 ^-1 run function snc:titans/mobs/3/attack/1
execute if score @s atk matches 132..134 if entity @s[tag=attack] positioned ^-2.9 ^8.5 ^ run function snc:titans/mobs/3/attack/1
execute if score @s atk matches 127..131 if entity @s[tag=attack] positioned ^-2.4 ^8 ^-.4 run function snc:titans/mobs/3/attack/1
execute if score @s atk matches 121..126 if entity @s[tag=attack] positioned ^-1 ^8 ^-.2 run function snc:titans/mobs/3/attack/1
execute if score @s atk matches 115..120 if entity @s[tag=attack] positioned ^-.2 ^8.2 ^-1 run function snc:titans/mobs/3/attack/1
execute if score @s atk matches 109..114 if entity @s[tag=attack] positioned ^-.2 ^8.3 ^-1.4 run function snc:titans/mobs/3/attack/1
execute if score @s atk matches 108 if entity @s[tag=attack] positioned ^-.2 ^8.4 ^-2.5 run function snc:titans/mobs/3/attack/1

execute if score @s atk matches 68..70 positioned ^3 ^10 ^-1 run function snc:titans/mobs/3/attack/2
execute if score @s atk matches 65..67 if entity @s[tag=attack] positioned ^3 ^9.5 ^-1 run function snc:titans/mobs/3/attack/2
execute if score @s atk matches 62..64 if entity @s[tag=attack] positioned ^2.9 ^8.5 ^ run function snc:titans/mobs/3/attack/2
execute if score @s atk matches 57..61 if entity @s[tag=attack] positioned ^2.4 ^8 ^-.4 run function snc:titans/mobs/3/attack/2
execute if score @s atk matches 51..56 if entity @s[tag=attack] positioned ^1 ^8 ^-.2 run function snc:titans/mobs/3/attack/2
execute if score @s atk matches 45..50 if entity @s[tag=attack] positioned ^.2 ^8.2 ^-1 run function snc:titans/mobs/3/attack/2
execute if score @s atk matches 39..44 if entity @s[tag=attack] positioned ^.2 ^8.3 ^-1.4 run function snc:titans/mobs/3/attack/2
execute if score @s atk matches 38 if entity @s[tag=attack] positioned ^.2 ^8.4 ^-1.5 run function snc:titans/mobs/3/attack/2


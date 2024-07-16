## Move the pivot between frames
## Always do the animation first
# Set distance at the end
# Use the heart particle to know there the pivot is
execute if score @s atk matches 60..70 positioned ^ ^6.5 ^-.5 run function snc:titans/mobs/1/attack/1

execute if score @s atk matches 139..140 positioned ^ ^7 ^1 run function snc:titans/mobs/1/attack/2
execute if score @s atk matches 137..138 if entity @s[tag=attack] positioned ^ ^6.8 ^.4 run function snc:titans/mobs/1/attack/2
execute if score @s atk matches 135..136 if entity @s[tag=attack] positioned ^ ^6.5 ^-.2 run function snc:titans/mobs/1/attack/2
execute if score @s atk matches 133..134 if entity @s[tag=attack] positioned ^ ^6.4 ^-1 run function snc:titans/mobs/1/attack/2
execute if score @s atk matches 132..132 if entity @s[tag=attack] positioned ^ ^6.4 ^-1 run function snc:titans/mobs/1/attack/2
execute if score @s atk matches 125..130 if entity @s[tag=attack] positioned ^ ^6.4 ^-1 run function snc:titans/mobs/1/attack/2
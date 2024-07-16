## Move the pivot between frames
## Always do the animation first
# Set distance at the end
# Use the heart particle to know there the pivot is
execute if score @s atk matches 40..70 run function snc:titans/mobs/2/attack/1

execute if score @s atk matches 133..140 positioned ^ ^-.2 ^-.5 run function snc:titans/mobs/2/attack/2
execute if score @s atk matches 126..132 if entity @s[tag=attack] positioned ^ ^-.1 ^-.3 run function snc:titans/mobs/2/attack/2
execute if score @s atk matches 121..125 if entity @s[tag=attack] positioned ^ ^.4 ^ run function snc:titans/mobs/2/attack/2
execute if score @s atk matches 117..120 if entity @s[tag=attack] positioned ^ ^1.4 ^-.2 run function snc:titans/mobs/2/attack/2
execute if score @s atk matches 111..116 if entity @s[tag=attack] positioned ^ ^1.7 ^-.4 run function snc:titans/mobs/2/attack/2
execute if score @s atk matches 104..110 if entity @s[tag=attack] positioned ^ ^1.8 ^-.4 run function snc:titans/mobs/2/attack/2
execute if score @s atk matches 105 if entity @s[tag=attack] positioned ^ ^1.7 ^-.5 run function snc:titans/mobs/2/attack/2
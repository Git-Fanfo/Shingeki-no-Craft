## Move the pivot between frames
## Always do the animation first
# Set distance at the end
# Use the heart particle to know there the pivot is

execute if score @s atk matches 85..140 positioned ^ ^1 ^-3.8 run function snc:titans/mobs/5/attack/1
execute if score @s atk matches 43..70 positioned ^ ^3 ^2.5 run function snc:titans/mobs/5/attack/2
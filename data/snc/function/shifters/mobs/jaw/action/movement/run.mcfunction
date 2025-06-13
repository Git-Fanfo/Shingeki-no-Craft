execute on vehicle at @s rotated ~ 0 run function snc:shifters/mobs/jaw/action/movement/check_wall
execute if score $wall jaw_vars matches 1 run function snc:shifters/mobs/jaw/action/movement/wall {"angle":40,"side":"front"}
execute if score $wall jaw_vars matches 2..3 run function snc:shifters/mobs/jaw/action/movement/wall {"angle":60,"side":"front"}

execute if entity @s[tag=!snc.jaw.wall] on vehicle at @s rotated ~-90 0 run function snc:shifters/mobs/jaw/action/movement/check_wall
execute if entity @s[tag=!snc.jaw.wall] if score $wall jaw_vars matches 1.. run function snc:shifters/mobs/jaw/action/movement/wall {"angle":0,"side":"left"}
execute if entity @s[tag=!snc.jaw.wall] on vehicle at @s rotated ~90 0 run function snc:shifters/mobs/jaw/action/movement/check_wall
execute if entity @s[tag=!snc.jaw.wall] if score $wall jaw_vars matches 1.. run function snc:shifters/mobs/jaw/action/movement/wall {"angle":0,"side":"right"}

#tellraw @a {"score":{"name":"$wall","objective":"jaw_vars"},"color":"yellow","italic": true}
#execute if entity @s[tag=!snc.jaw.wall] rotated ~ 0 if block ^4 ^2 ^-4 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"angle":0,"side":"left"}
#execute if entity @s[tag=!snc.jaw.wall] rotated ~ 0 if block ^-4 ^2 ^-4 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"angle":0,"side":"right"}

execute if entity @s[tag=snc.jaw.wall.front,tag=!aj.jaw.animation.climb_front.playing] run function snc:shifters/mobs/jaw/animate/climb_front
execute if entity @s[tag=snc.jaw.wall.left,tag=!aj.jaw.animation.walk_left.playing] run function snc:shifters/mobs/jaw/animate/climb_left
execute if entity @s[tag=snc.jaw.wall.right,tag=!aj.jaw.animation.walk_right.playing] run function snc:shifters/mobs/jaw/animate/climb_right

execute if entity @s[tag=!snc.jaw.wall] run function snc:shifters/mobs/jaw/animate/run

tag @s remove snc.jaw.wall
tag @s remove snc.jaw.wall.left
tag @s remove snc.jaw.wall.right
tag @s remove snc.jaw.wall.front
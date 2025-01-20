execute rotated ~ 0 if block ^ ^2 ^1.7 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"speed":8,"side":"front"}
execute if entity @s[tag=!snc.jaw.wall] rotated ~ 0 if block ^4 ^2 ^-4 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"speed":3,"side":"left"}
execute if entity @s[tag=!snc.jaw.wall] rotated ~ 0 if block ^-4 ^2 ^-4 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"speed":3,"side":"right"}

execute if entity @s[tag=snc.jaw.wall.front,tag=!aj.jaw.animation.climb_front.playing] run function snc:shifters/mobs/jaw/animate/climb_front
execute if entity @s[tag=snc.jaw.wall.left,tag=!aj.jaw.animation.walk_left.playing] run function snc:shifters/mobs/jaw/animate/climb_left
execute if entity @s[tag=snc.jaw.wall.right,tag=!aj.jaw.animation.walk_right.playing] run function snc:shifters/mobs/jaw/animate/climb_right

execute if entity @s[tag=!snc.jaw.wall] run function snc:shifters/mobs/jaw/animate/run

tag @s remove snc.jaw.wall
tag @s remove snc.jaw.wall.left
tag @s remove snc.jaw.wall.right
tag @s remove snc.jaw.wall.front
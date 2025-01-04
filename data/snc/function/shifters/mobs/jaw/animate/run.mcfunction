function animated_java:jaw/animations/pause_all
execute rotated ~ 0 if block ^ ^2 ^1 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"speed":8,"side":"front"}
execute if entity @s[tag=!snc.jaw.wall] rotated ~ 0 if block ^4 ^2 ^-4 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"speed":3,"side":"left"}
execute if entity @s[tag=!snc.jaw.wall] rotated ~ 0 if block ^-4 ^2 ^-4 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"speed":3,"side":"right"}

execute if entity @s[tag=snc.jaw.wall.front] run function animated_java:jaw/animations/walk_front/resume
execute if entity @s[tag=snc.jaw.wall.left] run function animated_java:jaw/animations/walk_left/resume
execute if entity @s[tag=snc.jaw.wall.right] run function animated_java:jaw/animations/walk_right/resume
execute if entity @s[tag=!snc.jaw.wall] run function animated_java:jaw/animations/run/resume

tag @s remove snc.jaw.wall
tag @s remove snc.jaw.wall.left
tag @s remove snc.jaw.wall.right
tag @s remove snc.jaw.wall.front
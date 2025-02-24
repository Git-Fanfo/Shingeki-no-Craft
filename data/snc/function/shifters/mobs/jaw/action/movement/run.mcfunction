scoreboard players set $wall jaw_vars 0
execute rotated ~ 0 if block ^ ^-1 ^ #snc:tangible run scoreboard players remove $wall jaw_vars 1
execute rotated ~ 0 if block ^ ^-2 ^ #snc:tangible run scoreboard players remove $wall jaw_vars 1
execute rotated ~ 0 if block ^ ^1 ^1.7 #snc:tangible run scoreboard players add $wall jaw_vars 1
execute rotated ~ 0 if block ^ ^ ^1.7 #snc:tangible run scoreboard players add $wall jaw_vars 1
execute rotated ~ 0 if block ^ ^1 ^2.6 #snc:tangible run scoreboard players add $wall jaw_vars 1
execute if score $wall jaw_vars matches 1 run function snc:shifters/mobs/jaw/action/movement/wall {"speed":12,"side":"front"}
execute if score $wall jaw_vars matches 2..3 run function snc:shifters/mobs/jaw/action/movement/wall {"speed":8,"side":"front"}
execute if entity @s[tag=!snc.jaw.wall.front] on vehicle run effect clear @s levitation
#tellraw @a {"score":{"name":"$wall","objective":"jaw_vars"},"color":"yellow","italic": true}

execute if entity @s[tag=!snc.jaw.wall] rotated ~ 0 if block ^4 ^2 ^-4 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"speed":1,"side":"left"}
execute if entity @s[tag=!snc.jaw.wall] rotated ~ 0 if block ^-4 ^2 ^-4 #snc:tangible run function snc:shifters/mobs/jaw/action/movement/wall {"speed":1,"side":"right"}

execute if entity @s[tag=snc.jaw.wall.front,tag=!aj.jaw.animation.climb_front.playing] run function snc:shifters/mobs/jaw/animate/climb_front
execute if entity @s[tag=snc.jaw.wall.left,tag=!aj.jaw.animation.walk_left.playing] run function snc:shifters/mobs/jaw/animate/climb_left
execute if entity @s[tag=snc.jaw.wall.right,tag=!aj.jaw.animation.walk_right.playing] run function snc:shifters/mobs/jaw/animate/climb_right

execute if entity @s[tag=!snc.jaw.wall] run function snc:shifters/mobs/jaw/animate/run

tag @s remove snc.jaw.wall
tag @s remove snc.jaw.wall.left
tag @s remove snc.jaw.wall.right
tag @s remove snc.jaw.wall.front
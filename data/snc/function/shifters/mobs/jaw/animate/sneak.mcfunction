ride @s dismount
ride @s mount @n[type=skeleton_horse,tag=jaw]
execute if score state jaw_vars matches 3..5 on vehicle on passengers \
        if entity @s[tag=aj.jaw.root] if entity @s[tag=!aj.jaw.animation.sneak.playing] run \
            scoreboard players set #sneak jaw_vars 1

execute if score #sneak jaw_vars matches 1 on vehicle on passengers if entity @s[tag=aj.jaw.root] run function animated_java:jaw/animations/pause_all
execute if score #sneak jaw_vars matches 1 on vehicle on passengers if entity @s[tag=aj.jaw.root] run function animated_java:jaw/animations/sneak/play
execute if score #sneak jaw_vars matches 1 run scoreboard players set $moving jaw_vars -1
execute if score #sneak jaw_vars matches 1 run scoreboard players set state jaw_vars 2

scoreboard players reset #sneak jaw_vars
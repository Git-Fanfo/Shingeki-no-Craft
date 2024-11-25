ride @s dismount
ride @s mount @n[type=skeleton_horse,tag=beast]
execute if score state beast_vars matches 3..5 on vehicle on passengers \
        if entity @s[tag=aj.beast.root] if entity @s[tag=!aj.beast.animation.sneak.playing] run \
            scoreboard players set #sneak beast_vars 1

execute if score #sneak beast_vars matches 1 on vehicle on passengers if entity @s[tag=aj.beast.root] run function animated_java:beast/animations/pause_all
execute if score #sneak beast_vars matches 1 on vehicle on passengers if entity @s[tag=aj.beast.root] run function animated_java:beast/animations/sneak/play
execute if score #sneak beast_vars matches 1 run scoreboard players set $moving beast_vars -1
execute if score #sneak beast_vars matches 1 run scoreboard players set state beast_vars 2

scoreboard players reset #sneak beast_vars
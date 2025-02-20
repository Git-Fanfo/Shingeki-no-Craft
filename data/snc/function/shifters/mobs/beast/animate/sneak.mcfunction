# Dismount player from everything
ride @s dismount
# Mount vehicle, direct reference
ride @s mount 0000007f-0000-007f-0000-007f00000004
execute if score state beast_vars matches 3..5 unless predicate snc:player/keybinds/move on vehicle on passengers \
        if entity @s[tag=aj.beast.root] if entity @s[tag=!aj.beast.animation.sneak.playing] run \
            scoreboard players set #sneak beast_vars 1

execute if score #sneak beast_vars matches 1 on vehicle on passengers if entity @s[tag=aj.beast.root] run function animated_java:beast/animations/pause_all
execute if score #sneak beast_vars matches 1 on vehicle on passengers if entity @s[tag=aj.beast.root] run function animated_java:beast/animations/sneak/play
execute if score #sneak beast_vars matches 1 run scoreboard players set $moving beast_vars -1
execute if score #sneak beast_vars matches 1 run scoreboard players set state beast_vars 2

scoreboard players reset #sneak beast_vars
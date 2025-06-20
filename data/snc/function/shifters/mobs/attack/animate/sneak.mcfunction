# Dismount player from everything
ride @s dismount
# Mount vehicle, direct reference
ride @s mount 0000007f-0000-007f-0000-007f00000003
execute if score state attack_vars matches 3..5 unless predicate snc:player/keybinds/move on vehicle on passengers \
        if entity @s[tag=aj.attack.root] if entity @s[tag=!aj.attack.animation.sneak.playing] run \
            scoreboard players set #sneak attack_vars 1

execute if score #sneak attack_vars matches 1 on vehicle on passengers if entity @s[tag=aj.attack.root] run function animated_java:attack/animations/pause_all
execute if score #sneak attack_vars matches 1 on vehicle on passengers if entity @s[tag=aj.attack.root] run function animated_java:attack/animations/sneak/play
execute if score #sneak attack_vars matches 1 run scoreboard players set $moving attack_vars -1
execute if score #sneak attack_vars matches 1 run scoreboard players set state attack_vars 2

scoreboard players reset #sneak attack_vars
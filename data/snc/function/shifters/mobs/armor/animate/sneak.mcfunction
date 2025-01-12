ride @s dismount
ride @s mount @n[type=skeleton_horse,tag=armor]
execute if score state armor_vars matches 3..5 unless predicate snc:player/keybinds/move on vehicle on passengers \
        if entity @s[tag=aj.armor.root] if entity @s[tag=!aj.armor.animation.sneak.playing] run \
            scoreboard players set #sneak armor_vars 1

execute if score #sneak armor_vars matches 1 on vehicle on passengers if entity @s[tag=aj.armor.root] run function animated_java:armor/animations/pause_all
execute if score #sneak armor_vars matches 1 on vehicle on passengers if entity @s[tag=aj.armor.root] run function animated_java:armor/animations/sneak/play
execute if score #sneak armor_vars matches 1 run scoreboard players set $moving armor_vars -1
execute if score #sneak armor_vars matches 1 run scoreboard players set state armor_vars 2

scoreboard players reset #sneak armor_vars
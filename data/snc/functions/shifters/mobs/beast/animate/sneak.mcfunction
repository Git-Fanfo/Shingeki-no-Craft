ride @s mount @e[type=skeleton_horse,tag=beast,limit=1,sort=nearest]
execute unless score #sneak beast_vars matches 1.. if score state beast_vars matches 3..5 run scoreboard players set #sneak beast_vars 20

execute if score #sneak beast_vars matches 20 if score state beast_vars matches 3..5 on vehicle on passengers if entity @s[tag=aj.beast.root] run function animated_java:beast/animations/pause_all
execute if score #sneak beast_vars matches 20 if score state beast_vars matches 3..5 on vehicle on passengers if entity @s[tag=aj.beast.root] run function animated_java:beast/animations/sneak/play

execute if score #sneak beast_vars matches 20 if score state beast_vars matches 3..5 run scoreboard players set $moving beast_vars -1
execute if score #sneak beast_vars matches 20 if score state beast_vars matches 3..5 run scoreboard players set state beast_vars 2
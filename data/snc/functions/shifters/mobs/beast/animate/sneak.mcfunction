ride @s mount @e[type=skeleton_horse,tag=beast,limit=1,sort=nearest]
execute if score state beast_vars matches 3..5 on vehicle on passengers if entity @s[tag=aj.beast.root] run function animated_java:beast/animations/pause_all
execute if score state beast_vars matches 3..5 on vehicle on passengers if entity @s[tag=aj.beast.root] run function animated_java:beast/animations/sneak/play

execute if score state beast_vars matches 3..5 run scoreboard players set state beast_vars 2

ride @s mount @e[type=skeleton_horse,tag=armor,limit=1,sort=nearest]
execute if score state attack_vars matches 3..5 on vehicle on passengers if entity @s[tag=aj.attack.root] run function animated_java:attack/animations/pause_all
execute if score state attack_vars matches 3..5 on vehicle on passengers if entity @s[tag=aj.attack.root] run function animated_java:attack/animations/sneak/play

execute if score state attack_vars matches 3..5 run scoreboard players set state attack_vars 2

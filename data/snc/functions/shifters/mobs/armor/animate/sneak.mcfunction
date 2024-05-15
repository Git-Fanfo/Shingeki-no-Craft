ride @s mount @e[type=skeleton_horse,tag=armor,limit=1,sort=nearest]
execute if score state armor_vars matches 3..5 on vehicle on passengers if entity @s[tag=aj.armor.root] run function animated_java:armor/animations/pause_all
execute if score state armor_vars matches 3..5 on vehicle on passengers if entity @s[tag=aj.armor.root] run function animated_java:armor/animations/sneak/play

execute if score state armor_vars matches 3..5 run scoreboard players set $moving armor_vars -1
execute if score state armor_vars matches 3..5 run scoreboard players set state armor_vars 2
execute if entity @s[tag=aj.attack.root] run function animated_java:attack/zzzzzzzz/animations/death/play_as_root
execute if entity @s[tag=!aj.attack.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:attack/animations/death/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
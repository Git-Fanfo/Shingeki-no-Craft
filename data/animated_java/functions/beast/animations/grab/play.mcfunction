execute if entity @s[tag=aj.beast.root] run function animated_java:beast/zzzzzzzz/animations/grab/play_as_root
execute if entity @s[tag=!aj.beast.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:beast/animations/grab/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
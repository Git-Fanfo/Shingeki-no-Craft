execute if entity @s[tag=aj.beast.root] run function animated_java:beast/zzzzzzzz/animations/death/resume_as_root
execute if entity @s[tag=!aj.beast.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:beast/animations/death/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
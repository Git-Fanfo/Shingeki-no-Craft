execute if entity @s[tag=aj.armor.root] run function animated_java:armor/zzzzzzzz/animations/idle/play_as_root
execute if entity @s[tag=!aj.armor.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:armor/animations/idle/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
execute if entity @s[tag=aj.armor.root] run function animated_java:armor/zzzzzzzz/animations/punch_3/pause_as_root
execute if entity @s[tag=!aj.armor.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:armor/animations/punch_3/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
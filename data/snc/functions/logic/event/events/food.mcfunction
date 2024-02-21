tag @s add event
tellraw @s [{"text":"The villagers have decided to give you a gift from the last harvest!","color":"green"}]
particle totem_of_undying ~ ~5 ~ 0 0 0 1 500 force
give @s baked_potato 6
execute if predicate snc:chance/10 run give @s golden_carrot 2
give @s bread 3
execute if predicate snc:chance/5 run give @s golden_apple
execute if predicate snc:chance/1 run give @s enchanted_golden_apple
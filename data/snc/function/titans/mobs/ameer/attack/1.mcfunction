# Range
execute if score @s atk matches 140 on vehicle unless function snc:titans/mobs/ameer/attack/1_trigger run return -1
execute if score @s atk matches 140 run tag @s add attack

# Attack
execute if score @s atk matches 140 on vehicle run effect give @s speed 3 2 true
# Range
execute if score @s atk matches 70 run function snc:titans/model/attack {"distance" : 4}
execute if score @s[tag=attack] atk matches 70 on vehicle run tag @s add not_mov
execute if score @s[tag=attack] atk matches 70 on vehicle run tag @s add motion_tf

# particle heart ~ ~ ~ 0 0 0 1 10 force
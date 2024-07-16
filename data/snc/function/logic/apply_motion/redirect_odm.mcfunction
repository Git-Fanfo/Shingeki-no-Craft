execute store result score @s motion_x1 run data get entity @s Motion[0] 100000
execute store result score @s motion_y1 run data get entity @s Motion[1] 100000
execute store result score @s motion_z1 run data get entity @s Motion[2] 100000

execute store result entity @s Motion[0] double 0.000009 run scoreboard players operation @s motion_x1 -= @s motion_x0
execute store result entity @s Motion[1] double 0.000009 run scoreboard players operation @s motion_y1 -= @s motion_y0
execute store result entity @s Motion[2] double 0.000009 run scoreboard players operation @s motion_z1 -= @s motion_z0

scoreboard players reset @s motion_x0
scoreboard players reset @s motion_y0
scoreboard players reset @s motion_z0
scoreboard players reset @s motion_x1
scoreboard players reset @s motion_y1
scoreboard players reset @s motion_z1
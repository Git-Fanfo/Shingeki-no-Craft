execute store result score @s motion_x0 run data get entity @s Pos[0] 1000
execute store result score @s motion_z0 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score @s motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.023 run scoreboard players operation @s motion_x1 -= @s motion_x0
data modify entity @s Motion[1] set value 1.2d
execute store result entity @s Motion[2] double 0.023 run scoreboard players operation @s motion_z1 -= @s motion_z0

scoreboard players reset @s motion_x0
scoreboard players reset @s motion_y0
scoreboard players reset @s motion_z0
scoreboard players reset @s motion_x1
scoreboard players reset @s motion_y1
scoreboard players reset @s motion_z1

tag @s remove not_mov
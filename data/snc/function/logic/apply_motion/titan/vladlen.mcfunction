execute store result score @s motion_x0 run data get entity @s Pos[0] 1000
execute store result score @s motion_y0 run data get entity @s Pos[1] 1000
execute store result score @s motion_z0 run data get entity @s Pos[2] 1000

tp @s ^ ^0.035 ^0.06

execute store result score @s motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.03 run scoreboard players operation @s motion_x1 -= @s motion_x0
execute store result entity @s Motion[1] double 0.03 run scoreboard players operation @s motion_y1 -= @s motion_y0
execute store result entity @s Motion[2] double 0.03 run scoreboard players operation @s motion_z1 -= @s motion_z0

scoreboard players reset @s motion_x0
scoreboard players reset @s motion_y0
scoreboard players reset @s motion_z0
scoreboard players reset @s motion_x1
scoreboard players reset @s motion_y1
scoreboard players reset @s motion_z1
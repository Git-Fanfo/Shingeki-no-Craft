execute store result score @s motion_x0 run data get entity @s Pos[0] 1000
execute store result score @s motion_y0 run data get entity @s Pos[1] 1000
execute store result score @s motion_z0 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^.1

execute store result score motion_x beast_vars run data get entity @s Pos[0] 1000
execute store result score motion_y beast_vars run data get entity @s Pos[1] 1000
execute store result score motion_z beast_vars run data get entity @s Pos[2] 1000

scoreboard players operation motion_x beast_vars -= @s motion_x0
scoreboard players operation motion_y beast_vars -= @s motion_y0
scoreboard players operation motion_z beast_vars -= @s motion_z0

kill
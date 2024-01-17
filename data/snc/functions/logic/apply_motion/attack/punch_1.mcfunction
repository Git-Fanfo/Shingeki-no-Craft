execute store result score @s motion_x0 run data get entity @s Pos[0] 1000
execute store result score @s motion_z0 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^.1

execute store result score motion_x attack_vars run data get entity @s Pos[0] 1000
execute store result score motion_z attack_vars run data get entity @s Pos[2] 1000

scoreboard players operation motion_x attack_vars -= @s motion_x0
scoreboard players operation motion_z attack_vars -= @s motion_z0

kill
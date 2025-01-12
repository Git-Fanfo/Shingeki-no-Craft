execute store result score @s snc.mot_x0 run data get entity @s Pos[0] 1000
execute store result score @s snc.mot_z0 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score @s snc.mot_x1 run data get entity @s Pos[0] 1000
execute store result score @s snc.mot_z1 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.023 run scoreboard players operation @s snc.mot_x1 -= @s snc.mot_x0
data modify entity @s Motion[1] set value 1.2d
execute store result entity @s Motion[2] double 0.023 run scoreboard players operation @s snc.mot_z1 -= @s snc.mot_z0

scoreboard players reset @s snc.mot_x0
scoreboard players reset @s snc.mot_y0
scoreboard players reset @s snc.mot_z0
scoreboard players reset @s snc.mot_x1
scoreboard players reset @s snc.mot_y1
scoreboard players reset @s snc.mot_z1
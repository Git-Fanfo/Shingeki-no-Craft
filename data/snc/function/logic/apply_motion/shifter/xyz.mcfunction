execute store result score @s snc.mot_x0 run data get entity @s Pos[0] 1000
execute store result score @s snc.mot_y0 run data get entity @s Pos[1] 1000
execute store result score @s snc.mot_z0 run data get entity @s Pos[2] 1000

$tp @s ^$(z) ^$(y) ^$(x)

$execute store result score motion_x $(shifter)_vars run data get entity @s Pos[0] 1000
$execute store result score motion_y $(shifter)_vars run data get entity @s Pos[1] 1000
$execute store result score motion_z $(shifter)_vars run data get entity @s Pos[2] 1000

$scoreboard players operation motion_x $(shifter)_vars -= @s snc.mot_x0
$scoreboard players operation motion_y $(shifter)_vars -= @s snc.mot_y0
$scoreboard players operation motion_z $(shifter)_vars -= @s snc.mot_z0

kill
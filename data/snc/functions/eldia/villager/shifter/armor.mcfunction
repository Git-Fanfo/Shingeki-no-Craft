particle minecraft:dust{color:[1f, 0.761f, 0f], scale:1f} ~ ~ ~ 0 0 0 1 10 force
execute store result score #x_armor shifter_vars run data get entity @s Pos[0]
execute store result score #z_armor shifter_vars run data get entity @s Pos[2]
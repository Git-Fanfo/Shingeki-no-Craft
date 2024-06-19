particle minecraft:dust{color:[0.29f, 1f, 0.075f], scale:1f} ~ ~ ~ 0 0 0 1 10 force
execute store result score #x_beast shifter_vars run data get entity @s Pos[0]
execute store result score #z_beast shifter_vars run data get entity @s Pos[2]
particle minecraft:dust{color:[0.706f, 0.082f, 0.082f], scale:1f} ~ ~ ~ 0 0 0 1 10 force
execute store result score #x_attack shifter_vars run data get entity @s Pos[0]
execute store result score #z_attack shifter_vars run data get entity @s Pos[2]
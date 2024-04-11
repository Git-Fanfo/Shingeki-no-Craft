particle minecraft:dust{color:[1f, 0.5f, 1f], scale:1f} ~ ~3 ~ 0 0 0 1 10 force
execute store result score #x_cart shifter_vars run data get entity @s Pos[0]
execute store result score #z_cart shifter_vars run data get entity @s Pos[2]
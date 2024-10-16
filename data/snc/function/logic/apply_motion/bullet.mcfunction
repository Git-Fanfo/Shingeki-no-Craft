execute if entity @s[tag=snc.bullet.turret] at @p anchored eyes run tp ^ ^1.4 ^3.4

execute store result score @s motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

#tellraw @a [{"score":{"name":"@s","objective":"motion_x0"}}," ",{"score":{"name":"@s","objective":"motion_x1"}}]
#tellraw @a [{"score":{"name":"@s","objective":"motion_y0"}}," ",{"score":{"name":"@s","objective":"motion_y1"}}]
#tellraw @a [{"score":{"name":"@s","objective":"motion_z0"}}," ",{"score":{"name":"@s","objective":"motion_z1"}}]

execute store result entity @s Motion[0] double 0.002 run scoreboard players operation @s motion_x1 -= @s motion_x0
execute store result entity @s Motion[1] double 0.002 run scoreboard players operation @s motion_y1 -= @s motion_y0
execute store result entity @s Motion[2] double 0.002 run scoreboard players operation @s motion_z1 -= @s motion_z0

#tellraw @a [" ",{"score":{"name":"@s","objective":"motion_x1"}}]
#tellraw @a [" ",{"score":{"name":"@s","objective":"motion_y1"}}]
#tellraw @a [" ",{"score":{"name":"@s","objective":"motion_z1"}}]

scoreboard players reset @s motion_x0
scoreboard players reset @s motion_y0
scoreboard players reset @s motion_z0
scoreboard players reset @s motion_x1
scoreboard players reset @s motion_y1
scoreboard players reset @s motion_z1

tag @s remove snc.bullet.init
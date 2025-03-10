data merge entity @s {Duration:0}

execute store result score @s snc.mot_x0 run data get entity @s Pos[0] 10000
execute store result score @s snc.mot_y0 run data get entity @s Pos[1] 10000
execute store result score @s snc.mot_z0 run data get entity @s Pos[2] 10000

execute at @p run rotate @s ~ ~
execute at @s run tp ^ ^ ^.1

execute store result score @s snc.mot_x1 run data get entity @s Pos[0] 10000
execute store result score @s snc.mot_y1 run data get entity @s Pos[1] 10000
execute store result score @s snc.mot_z1 run data get entity @s Pos[2] 10000

#tellraw @a [{"score":{"name":"@s","objective":"snc.mot_x0"}}," ",{"score":{"name":"@s","objective":"snc.mot_x1"}}]
#tellraw @a [{"score":{"name":"@s","objective":"snc.mot_y0"}}," ",{"score":{"name":"@s","objective":"snc.mot_y1"}}]
#tellraw @a [{"score":{"name":"@s","objective":"snc.mot_z0"}}," ",{"score":{"name":"@s","objective":"snc.mot_z1"}}]

execute store result entity @s Motion[0] double 0.005 run scoreboard players operation @s snc.mot_x1 -= @s snc.mot_x0
execute store result entity @s Motion[1] double 0.005 run scoreboard players operation @s snc.mot_y1 -= @s snc.mot_y0
execute store result entity @s Motion[2] double 0.005 run scoreboard players operation @s snc.mot_z1 -= @s snc.mot_z0

#tellraw @a [" ",{"score":{"name":"@s","objective":"snc.mot_x1"}}]
#tellraw @a [" ",{"score":{"name":"@s","objective":"snc.mot_y1"}}]
#tellraw @a [" ",{"score":{"name":"@s","objective":"snc.mot_z1"}}]

scoreboard players reset @s snc.mot_x0
scoreboard players reset @s snc.mot_y0
scoreboard players reset @s snc.mot_z0
scoreboard players reset @s snc.mot_x1
scoreboard players reset @s snc.mot_y1
scoreboard players reset @s snc.mot_z1

tag @s remove snc.bullet.init
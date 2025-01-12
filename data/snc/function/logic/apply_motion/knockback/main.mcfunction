execute store result score @s snc.mot_x0 run data get entity @s Pos[0] 1000
execute store result score @s snc.mot_y0 run data get entity @s Pos[1] 1000
execute store result score @s snc.mot_z0 run data get entity @s Pos[2] 1000
## Get direction
execute if score @s snc.knockback matches 1.. run function snc:logic/apply_motion/knockback/power

execute store result score @s snc.mot_x1 run data get entity @s Pos[0] 1000
execute store result score @s snc.mot_y1 run data get entity @s Pos[1] 1000
execute store result score @s snc.mot_z1 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.01 run scoreboard players operation @s snc.mot_x1 -= @s snc.mot_x0
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s snc.mot_y1 -= @s snc.mot_y0
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation @s snc.mot_z1 -= @s snc.mot_z0

tag @s remove not_mov
tag @s remove snc.knockback

## Move
execute on passengers run ride @e[type=!#snc:pivot,scores={snc.knockback=..-1},sort=nearest,limit=1] mount @s
scoreboard players reset @e[type=!#snc:pivot,scores={snc.knockback=..-1},sort=nearest,limit=1] snc.knockback
## Add Motion if required (WIP)
#execute if entity @s[tag=snc.riding] run data modify entity @e[type=snowball,tag=snc.knockback,tag=!snc.riding,sort=nearest,limit=1] Motion set from entity @s Motion
#execute if entity @s[tag=snc.riding] run kill
execute store result score @s motion_x0 run data get entity @s Pos[0] 1000
execute store result score @s motion_y0 run data get entity @s Pos[1] 1000
execute store result score @s motion_z0 run data get entity @s Pos[2] 1000

## Get direction
tp @s ~ ~ ~ facing entity @p[tag=transform,sort=nearest,limit=1] 

function snc:logic/apply_motion/knockback/power

execute store result score #motion_x shifter_vars run data get entity @s Pos[0] 1000
execute store result score #motion_y shifter_vars run data get entity @s Pos[1] 1000
execute store result score #motion_z shifter_vars run data get entity @s Pos[2] 1000

scoreboard players operation #motion_x shifter_vars -= @s motion_x0
scoreboard players operation #motion_y shifter_vars -= @s motion_y0
scoreboard players operation #motion_z shifter_vars -= @s motion_z0

execute as @e[type=!snowball,scores={snc.knockback=..-1},sort=nearest,limit=1] run function snc:logic/apply_motion/knockback/move

kill
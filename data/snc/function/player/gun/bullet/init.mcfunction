scoreboard players add @s projectile 1
execute if score @s projectile matches 1 run data merge entity @s {Duration:0}

execute if score @s projectile matches 1 store result score @s snc.mot_x0 run data get entity @s Pos[0] 1000
execute if score @s projectile matches 1 store result score @s snc.mot_y0 run data get entity @s Pos[1] 1000
execute if score @s projectile matches 1 store result score @s snc.mot_z0 run data get entity @s Pos[2] 1000

execute if score @s projectile matches 2 run function snc:logic/apply_motion/bullet
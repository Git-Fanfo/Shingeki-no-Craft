# Compare rot_throw with rot_impulse_x
scoreboard players operation @s rot_impulse_x -= @s rot_throw

execute as @s[scores={odm_state=2..,rot_impulse_x=-90..90}] run function snc:player/odm/select_impulse

# Effects if its outside
execute unless score @s rot_impulse_x matches -90..90 run function snc:player/odm/break

# execute as @s[scores={odm_state=2..}] run effect give @s levitation 
title @s actionbar {"text":"/     \\","bold":true,"color":"green"}

# Prevent taking damage
execute as @s[scores={odm_state=1..}] run effect give @a[distance=..3] resistance 2 255 true

# Restart shooter
execute as @e[tag=shooter,limit=2, sort=nearest,distance=0..2] run function snc:logic/kill_mob
scoreboard players set @s odm_state 0
scoreboard players set @s odm_push 0
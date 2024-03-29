# Compare rot_throw with snc.rotation_x
scoreboard players operation @s snc.rotation_x -= @s rot_throw

# Prevent taking damage
#execute as @s[scores={odm_state=1..}] run effect give @a[distance=..3] resistance 2 127 true
execute as @s[scores={odm_state=2..,snc.rotation_x=-90..90}] run function snc:player/odm/select_impulse

# Effects if its outside
execute unless score @s snc.rotation_x matches -90..90 run function snc:player/odm/break

#title @s actionbar {"text":"/     \\","bold":true,"color":"green"}

# Restart shooter
execute as @e[tag=shooter,limit=2, sort=nearest,distance=0..2] run function snc:logic/kill_mob
scoreboard players set @s odm_state 0
scoreboard players set @s odm_push 0
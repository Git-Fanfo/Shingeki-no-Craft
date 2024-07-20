# Compare rot_throw with snc.rotation_x
scoreboard players operation @s snc.rotation_x -= @s rot_throw

# Prevent taking damage
execute if score @s odm_state matches 2.. \
        if score @s snc.rotation_x matches -90..90 run function snc:player/odm/select_impulse

# Effects if its outside
execute unless score @s snc.rotation_x matches -90..90 run function snc:player/odm/break

scoreboard players set @s odm_state 0
scoreboard players set @s odm_push 0

return 1
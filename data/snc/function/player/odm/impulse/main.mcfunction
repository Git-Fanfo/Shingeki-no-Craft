# Hooks have not landed
execute if score @s odm_state matches 1 run function snc:player/odm/hook/shake
# Impulse
execute if score @s odm_state matches 2.. run function snc:player/odm/impulse/angle
# Reset
scoreboard players set @s odm_state 0

return 1
execute as @s[tag=motion_odm] run function snc:logic/apply_motion/odm

execute as @s[tag=motion_pla] run function snc:logic/apply_motion/player
execute as @s[tag=motion_pure] run function snc:logic/apply_motion/pure
execute as @s[tag=motion_tur] run function snc:logic/apply_motion/turret
execute as @s[tag=motion_can] run function snc:logic/apply_motion/canon
execute as @s[tag=motion_sol] rotated as @s run function snc:logic/apply_motion/soldier
execute as @s[tag=motion_vom] run function snc:logic/apply_motion/vomit
execute as @s[tag=motion_spe] if score @s projectile matches 4 run function snc:logic/apply_motion/spear
execute as @s[tag=motion_tf] at @s run function snc:logic/apply_motion/titan_front

execute as @s[tag=motion_flare] run function snc:logic/apply_motion/flare

## Shifters
execute as @s[tag=attack] run function snc:logic/apply_motion/attack/main
execute as @s[tag=beast] run function snc:logic/apply_motion/beast/main

return 0
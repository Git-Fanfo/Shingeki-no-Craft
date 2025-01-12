#*
execute as @s[tag=motion_pure] run function snc:logic/apply_motion/pure
execute as @s[tag=motion_can] run function snc:logic/apply_motion/canon

execute as @s[tag=motion_vom] run function snc:logic/apply_motion/vomit
execute as @s[tag=motion_spe] if score @s projectile matches 3.. run function snc:logic/apply_motion/spear
#*
execute as @s[tag=motion_flare] run function snc:logic/apply_motion/flare

## Shifters
execute as @s[tag=beast] run function snc:logic/apply_motion/beast/main
execute as @s[tag=snc.shifter] rotated ~ 0 run function snc:logic/apply_motion/shifter/main
#*
execute as @s[tag=snc.knockback] run function snc:logic/apply_motion/knockback/main

return 0
data merge entity @s {Duration:0}
execute if entity @s[tag=snc.bullet.player] rotated as @n[type=!#snc:pivot] run function snc:logic/apply_motion/bullet
tag @s remove snc.bullet.init
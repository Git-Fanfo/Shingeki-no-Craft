scoreboard players remove @s snc.knockback 1
tp @s ^ ^.003 ^.04
execute if score @s snc.knockback matches 1.. at @s run function snc:logic/apply_motion/knockback/power
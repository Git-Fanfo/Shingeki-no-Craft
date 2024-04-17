execute unless score @s snc.knockback matches ..1 run scoreboard players operation @s snc.knockback = @e[type=!snowball,scores={snc.knockback=..0},sort=nearest,limit=1] snc.knockback
scoreboard players add @s snc.knockback 1

tp @s ^ ^.005 ^-.05
execute if score @s snc.knockback matches ..-1 at @s run function snc:logic/apply_motion/knockback/power
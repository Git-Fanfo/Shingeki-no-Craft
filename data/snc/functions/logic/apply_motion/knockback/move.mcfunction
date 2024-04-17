data merge entity @s {NoGravity:1b}
execute store result entity @s Motion[0] double 0.03 run scoreboard players get #motion_x shifter_vars
execute store result entity @s Motion[1] double 0.01 run scoreboard players get #motion_y shifter_vars
execute store result entity @s Motion[2] double 0.03 run scoreboard players get #motion_z shifter_vars
data merge entity @s {NoGravity:0b}

scoreboard players reset @s snc.knockback
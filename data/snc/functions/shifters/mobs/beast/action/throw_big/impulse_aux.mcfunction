## Mount beast_wrap
ride @s dismount
scoreboard players set $hold beast_vars 0
data merge entity @s {NoGravity:1b}
execute store result entity @s Motion[0] double 0.027 run scoreboard players get motion_x beast_vars
execute store result entity @s Motion[1] double 0.027 run scoreboard players get motion_y beast_vars
execute store result entity @s Motion[2] double 0.027 run scoreboard players get motion_z beast_vars
data merge entity @s {NoGravity:0b}

execute on passengers on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:80,transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
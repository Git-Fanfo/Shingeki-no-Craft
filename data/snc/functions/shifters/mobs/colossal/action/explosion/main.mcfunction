scoreboard players add @s colossal_vars 1

# Mush
execute as @s[tag=!snc.heat_wave] if score @s colossal_vars matches 1 run data merge entity @s {view_range:50f,start_interpolation:0,interpolation_duration:1000,teleport_duration:2,transformation:{translation:[0f,0f,0f],scale:[45f,45f,45f]}}
execute as @s[tag=snc.top] if score @s colossal_vars matches ..1000 run tp @s ~ ~.08 ~

# Wave
execute as @s[tag=snc.1] if score @s colossal_vars matches 1 run data merge entity @s {view_range:50f,start_interpolation:0,interpolation_duration:1000,teleport_duration:40,transformation:{translation:[0f,0f,0f],scale:[50f,50f,50f]}}
execute as @s[tag=snc.2] if score @s colossal_vars matches 1 run data merge entity @s {view_range:50f,start_interpolation:0,interpolation_duration:1000,teleport_duration:40,transformation:{translation:[0f,0f,0f],scale:[65f,65f,65f]}}
execute as @s[tag=snc.heat_wave] run tp @s ~ ~.09 ~ ~1 ~

# Explosion
execute as @s[type=armor_stand] if data entity @s {OnGround:1b} run function snc:shifters/human/explosion/destroy
execute as @s[type=armor_stand] if score @s colossal_vars matches 40.. run function snc:shifters/human/explosion/kill

execute if score @s colossal_vars matches 1200.. run kill
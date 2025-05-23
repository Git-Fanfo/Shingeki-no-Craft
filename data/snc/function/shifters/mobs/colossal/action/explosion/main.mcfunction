scoreboard players add @s colossal_vars 1

# Mush
execute as @s[tag=!snc.heat_wave,type=item_display] if score @s colossal_vars matches 10 run data merge entity @s {view_range:50f,start_interpolation:0,interpolation_duration:1000,teleport_duration:2,transformation:{translation:[0f,0f,0f],scale:[55f,50f,55f]}}
execute as @s[tag=snc.top] if score @s colossal_vars matches ..1000 run tp @s ~ ~.07 ~
# Gamma
execute as @s[tag=snc.top] if score @s colossal_vars matches 1000 run data merge entity @s {item:{components:{"item_model":"shifters/colossal/explosion/2/top"}}}
execute as @s[tag=snc.base] if score @s colossal_vars matches 1000 run data merge entity @s {item:{components:{"item_model":"shifters/colossal/explosion/2/base"}}}
execute as @s[tag=snc.top] if score @s colossal_vars matches 1100 run data merge entity @s {item:{components:{"item_model":"shifters/colossal/explosion/3/top"}}}
execute as @s[tag=snc.base] if score @s colossal_vars matches 1100 run data merge entity @s {item:{components:{"item_model":"shifters/colossal/explosion/3/base"}}}

# Wave
execute as @s[tag=snc.1] if score @s colossal_vars matches 10 run data merge entity @s {view_range:50f,start_interpolation:0,interpolation_duration:1000,teleport_duration:40,transformation:{translation:[0f,0f,0f],scale:[55f,1f,55f]}}
execute as @s[tag=snc.2] if score @s colossal_vars matches 10 run data merge entity @s {view_range:50f,start_interpolation:0,interpolation_duration:1000,teleport_duration:40,transformation:{translation:[0f,0f,0f],scale:[75f,1f,75f]}}
execute as @s[tag=snc.heat_wave] run tp @s ~ ~.115 ~ ~1 ~

execute unless entity @s[type=armor_stand] run setblock ~ ~ ~ minecraft:light

# Explosion
execute as @s[type=armor_stand] if predicate snc:on_tangible run function snc:shifters/human/explosion/destroy
execute as @s[type=armor_stand] if score @s colossal_vars matches 40.. run function snc:shifters/human/explosion/kill

execute if score @s colossal_vars matches 1200.. run kill
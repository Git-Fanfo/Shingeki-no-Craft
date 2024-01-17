execute as @s[tag=sticky] run ride @p[distance=..3] mount @s

execute as @s[tag=spear] run function snc:player/gun/spear/air
execute as @s[tag=canon] run function snc:interact/canon/air
execute as @s[tag=vomit] run function snc:titans/tangible/vomit/air

execute as @s[tag=big_rock] run function snc:shifters/mobs/beast/action/throw_big/rock
execute as @s[tag=area_rock] run function snc:shifters/mobs/beast/action/throw_area/rock
# Waiting to kill with thunder spear
execute as @s[tag=water] run effect give @e[tag=hurtbox,distance=..5,sort=nearest] water_breathing 1 0 true
return 0
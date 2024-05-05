## ODM
execute if entity @s[tag=odm] run function snc:player/odm/main

execute if entity @s[tag=snc.sticky] run ride @p[distance=..3] mount @s

execute if entity @s[tag=motion_bullet] run function snc:player/gun/bullet/air
execute if entity @s[tag=motion_spe] run function snc:player/gun/spear/effect

execute if entity @s[tag=motion_flare] run function snc:player/gun/flare/effect

execute if entity @s[tag=big_rock] run function snc:shifters/mobs/beast/action/throw_big/rock
execute if entity @s[tag=area_rock] run function snc:shifters/mobs/beast/action/throw_area/rock

execute if entity @s[tag=spear] run function snc:player/gun/spear/air
execute if entity @s[tag=canon] run function snc:interact/canon/air
execute if entity @s[tag=water] run effect give @e[tag=hurtbox,distance=..5,sort=nearest] water_breathing 1 0 true

execute if entity @s[tag=vomit] run function snc:titans/tangible/vomit/air
return 0
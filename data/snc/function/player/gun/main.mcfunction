## ODM
execute if entity @s[tag=snc.hook] run function snc:player/odm/hook/main with entity @s item.components."minecraft:profile"

execute if entity @s[tag=snc.sticky] run function snc:player/gun/sticky/main

execute if entity @s[tag=motion_bullet] run function snc:player/gun/bullet/air

execute if entity @s[tag=motion_flare] run function snc:player/gun/flare/effect

execute if entity @s[tag=motion_spe] run function snc:player/gun/spear/rotation
execute if entity @s[tag=snc.break.hardening] if function snc:shifters/mobs/armor/action/hardening/range run return -1
execute if entity @s[tag=snc.spear] run function snc:player/gun/spear/air
execute if entity @s[tag=snc.canon] run function snc:interact/canon/air

return 1
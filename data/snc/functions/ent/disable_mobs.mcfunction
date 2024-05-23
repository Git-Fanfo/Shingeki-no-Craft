execute as @s[type=phantom] run function snc:logic/kill_mob

execute as @s[type=bat,tag=!odm] run return 0
execute as @s[type=zombie_villager,tag=!titan] run function snc:logic/kill_mob
execute as @s[type=wandering_trader,tag=!eldian] run function snc:logic/kill_mob
execute as @s[type=shulker,tag=!shifter] run return 0
execute as @s[type=skeleton_horse,tag=!shifter] run return 0
execute as @s[type=camel,tag=!shifter] run return 0
execute as @s[type=arrow,tag=!snc.projectile] run return 0
execute as @s[type=slime,tag=!collision,tag=!hurtbox,tag=!body,tag=!motion,tag=!nape] run function snc:logic/kill_mob

function snc:ent/main
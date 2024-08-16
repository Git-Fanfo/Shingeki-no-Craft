execute if entity @s[type=zombie_villager,tag=!titan,tag=!snc.wire] if function snc:logic/kill_mob run return -1
execute if entity @s[type=shulker,tag=!shifter] run return 0
execute if entity @s[type=skeleton_horse,tag=!shifter] run return 0
execute if entity @s[type=camel,tag=!shifter] run return 0
#execute if entity @s[type=spectral_arrow,tag=!snc.projectile] run return 0
execute if entity @s[type=slime,tag=!collision,tag=!hurtbox] if function snc:logic/kill_mob run return -1

function snc:ent/main
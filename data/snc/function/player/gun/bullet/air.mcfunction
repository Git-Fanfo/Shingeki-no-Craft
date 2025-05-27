playsound minecraft:aot.human.gun.whizz master @a[distance=..5] ~ ~ ~ .5 1.3

execute if predicate snc:player/gun/bullet_land run function snc:player/gun/bullet/land

execute if entity @s[tag=snc.bullet.init, tag=!snc.bullet.nomo] if function snc:player/gun/bullet/init run return -1
execute if entity @s[tag=snc.bullet.init] run function snc:player/gun/bullet/nomo/init
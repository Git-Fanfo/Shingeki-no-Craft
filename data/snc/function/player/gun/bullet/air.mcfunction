execute if entity @s[tag=snc.bullet.init] run function snc:player/gun/bullet/init
playsound minecraft:aot.human.gun.whizz master @a[distance=..3] ~ ~ ~ .5 1.3
execute if predicate snc:player/gun/bullet_land run function snc:player/gun/bullet/land
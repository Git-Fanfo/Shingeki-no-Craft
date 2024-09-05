execute if entity @s[type=player] run function snc:player/gun/bullet/carbine/player

particle dust_plume ^ ^-.6 ^1.5 0 0 0 0 1 force

playsound minecraft:aot.human.gun.mauser.short player @a ~ ~ ~ 8.5 1
#execute as @a[distance=..96] run function snc:shifters/mobs/cart/action/shipload/turrets/sfx
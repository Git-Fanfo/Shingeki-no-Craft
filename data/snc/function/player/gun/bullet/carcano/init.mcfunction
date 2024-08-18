effect clear @s slowness
effect give @s speed 1 3 true
execute if entity @s[type=player] run function snc:player/gun/bullet/carcano/player

execute anchored feet run tp @s ~ ~ ~ ~ ~-5
particle dust_plume ^ ^-.4 ^1.5 0 0 0 0 10 force

playsound minecraft:aot.human.gun.carcano.short player @a ~ ~ ~ 8.5 1
#execute as @a[distance=..96] run function snc:shifters/mobs/cart/action/shipload/turrets/sfx
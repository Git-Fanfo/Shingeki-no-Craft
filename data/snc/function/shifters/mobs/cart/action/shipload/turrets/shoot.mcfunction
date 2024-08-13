# Shot
summon spectral_arrow ~ ~ ~ {Duration:0,PierceLevel:2b,damage:2d,Tags:["snc.projectile","not_mov","motion_bullet"],item:{count:1, id:"minecraft:arrow"}}
data modify entity @e[tag=motion_bullet,sort=nearest,limit=1] Owner set from entity @s UUID

effect give @s slowness 1 4 true

execute positioned ^ ^ ^1 as @a[distance=..96] run function snc:shifters/mobs/cart/action/shipload/turrets/sfx

particle minecraft:block{block_state:"gold_block"} ^ ^-.2 ^1.8 0 0 0 10 1 force
particle minecraft:dust{color:[0.945f, 0.827f, 0.145f], scale:1f} ^ ^-.4 ^3.1 .1 .1 .1 2 1 force
particle minecraft:dust{color:[0.855f, 0.427f, 0.176f], scale:1f} ^ ^-.4 ^3.1 .1 .1 .1 2 1 force
particle flash ^ ^-.3 ^2.5 0 0 0 3 1 force
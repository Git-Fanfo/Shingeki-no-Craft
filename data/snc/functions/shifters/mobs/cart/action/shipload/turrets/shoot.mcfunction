# Shot
summon arrow ~ ~ ~ {ShotFromCrossbow:1b,PierceLevel:2b,damage:2d,Tags:["not_mov","motion_tur"],item:{components:{"minecraft:potion_contents": {potion:"minecraft:water_breathing"}}, count:1, id:"minecraft:arrow"}}
data modify entity @e[tag=motion_tur,sort=nearest,limit=1] Owner set from entity @s UUID

effect give @s slowness 1 4 true

particle minecraft:block{block_state:"gold_block"} ^ ^-.2 ^1.8 0 0 0 10 1 force
playsound minecraft:aot.bullet_shoot player @a[distance=..15] ~ ~ ~ 1 .9

particle minecraft:dust{color:[0.945f, 0.827f, 0.145f], scale:1f} ^ ^-.4 ^3.1 .1 .1 .1 2 1 force
particle minecraft:dust{color:[0.855f, 0.427f, 0.176f], scale:1f} ^ ^-.4 ^3.1 .1 .1 .1 2 1 force
# Shot
summon arrow ~ ~ ~ {ShotFromCrossbow:1b,PierceLevel:2b,damage:2d,Tags:["not_mov","motion_tur","projectile"]}
# execute if predicate snc:chance/20 run data merge entity @e[type=arrow,tag=motion_tur,sort=nearest,limit=1] {CustomPotionEffects:[{Id:13,Amplifier:0b,Duration:10,ShowParticles:0b}],Potion:"minecraft:awkward"}
data modify entity @e[type=arrow,tag=motion_tur,sort=nearest,limit=1] Owner set from entity @s UUID

effect give @s slowness 1 4 true

particle minecraft:block gold_block ^ ^-.2 ^1.8 0 0 0 10 1 force
playsound minecraft:aot.bullet_shoot player @a[distance=..15] ~ ~ ~ 1 .9

particle dust 0.945 0.827 0.145 1 ^ ^-.4 ^3.1 .1 .1 .1 2 1 force
particle dust 0.855 0.427 0.176 1 ^ ^-.4 ^3.3 .2 .2 .2 2 1 force
#particle dust 0 0 0 1.5 ^ ^1.5 ^3.5 0 0 0 1 10 force
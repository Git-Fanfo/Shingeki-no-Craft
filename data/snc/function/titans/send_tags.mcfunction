execute on vehicle run tag @s add send
execute if entity @s[tag=jump] on vehicle run tag @s add jump
execute if entity @s[tag=sprint] on vehicle run tag @s add sprint
execute if entity @s[tag=eat] on vehicle run tag @s add eat
execute if entity @s[tag=stop] on vehicle run tag @s add stop

execute if entity @s[tag=model,tag=jump] run tag @s add walk
execute if entity @s[tag=ai,tag=jump] if predicate snc:on_tangible positioned ~ ~ ~ rotated ~ -35 run function snc:logic/motion/self/titan with entity @s
execute if entity @s[tag=ai,tag=jump] at @s run data modify entity @s Rotation[0] set from entity @p Rotation[0]

execute if entity @s[tag=ai,tag=sprint] run effect give @s speed 5 1 true

execute if entity @s[tag=ai,tag=stop] run effect give @s slowness 10 6 true

execute if entity @s[tag=eat] run damage @e[type=#snc:eldian,tag=!titan,distance=..4,sort=nearest,limit=1] 4
execute if entity @s[tag=model,tag=eat] run tag @s add attack

tag @s remove sprint
tag @s remove send
tag @s remove jump
tag @s remove eat
tag @s remove stop
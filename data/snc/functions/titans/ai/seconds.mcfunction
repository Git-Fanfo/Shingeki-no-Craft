## Advancement
advancement grant @p[distance=0..30] only snc:titan

## Agro
execute if predicate snc:chance/10 rotated ~ 0 positioned ^ ^1 ^-2 run damage @s 0 out_of_world by @e[type=#snc:human,sort=nearest,limit=1,tag=!titan]
execute if entity @e[tag=ai,distance=0.1..3] run function snc:titans/ai/jump

## Effects
effect give @s resistance infinite 5 true
effect give @s invisibility infinite 0 true

## Speed
# Sunrise
execute if score time clock matches 23001..23999 run effect give @s[tag=!mob8] slowness 2 0 true
execute if score time clock matches 0..6400 run effect give @s[tag=!mob8] slowness 2 0 true
# Noon
execute if score time clock matches 6500..12000 run effect clear @s slowness
# Sunset
execute if score time clock matches 12050..14000 run effect give @s[tag=!mob8] slowness 2 0 true
# Night
execute if score time clock matches 14050..23000 run effect give @s[tag=!mob8] slowness 2 2 true
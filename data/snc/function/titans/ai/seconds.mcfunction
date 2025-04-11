## Advancement
advancement grant @p[distance=0..32] only snc:titan/close

## Agro
execute if score $titan_tracking config matches 1 if predicate snc:chance/10 run damage @s 0 out_of_world by @n[type=#snc:human,tag=!titan,distance=10..]
execute if entity @e[tag=ai,distance=0.1..3] run function snc:titans/ai/jump

## Speed
# Sunrise
execute if score time clock matches 23001..23999 run effect give @s[tag=!mob8] slowness 2 0 true
execute if score time clock matches 0..6400 run effect give @s[tag=!mob8] slowness 2 0 true
# Noon
execute if score time clock matches 6500..12000 run effect clear @s slowness
# Sunset
execute if score time clock matches 12050..14000 run effect give @s[tag=!mob8] slowness 2 0 true
# Night
execute if score time clock matches 14050..23000 run effect give @s[tag=!mob8] slowness 2 3 true
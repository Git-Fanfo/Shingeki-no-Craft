playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 2 .5
execute rotated ~ 0 run particle minecraft:flame ^ ^3 ^-3 3 3 3 .2 500 force

damage @s 10 in_fire
execute as @e[type=!item,tag=!colossal,distance=.5..40] run function snc:shifters/mobs/colossal/action/steam/damage
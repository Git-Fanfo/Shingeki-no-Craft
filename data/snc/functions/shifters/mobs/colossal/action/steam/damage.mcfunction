execute at @s if score $shifter_destroy config matches 1 run function snc:shifters/mobs/colossal/action/steam/fire

damage @s[distance=.5..20] 6 on_fire
damage @s[distance=21..] 4 on_fire
effect give @s[tag=hurtbox] water_breathing 1 0 true

execute at @s[type=player,tag=!transform] run function snc:player/odm/impulse/push {"power":3, "x":"^", "y":"^", "z":"^1"}
execute at @s if score $shifter_destroy config matches 1 run function snc:shifters/mobs/colossal/action/steam/fire

damage @s[distance=.5..65] 200 minecraft:explosion
damage @s[distance=66..80] 12 on_fire
damage @s[distance=81..] 6 on_fire
effect give @s[tag=hurtbox] water_breathing 1 0 true

function snc:player/odm/impulse/push {"power":5, "x":"^", "y":"^", "z":"^1"}
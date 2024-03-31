execute at @s run fill ^-1 ^ ^ ^1 ^ ^ fire

damage @s[distance=.5..65] 100 on_fire
damage @s[distance=66..80] 12 on_fire
damage @s[distance=81..] 6 on_fire
effect give @s[tag=hurtbox] water_breathing 1 0 true

function snc:player/odm/impulse/push {"power":5, "x":"^", "y":"^", "z":"^1"}
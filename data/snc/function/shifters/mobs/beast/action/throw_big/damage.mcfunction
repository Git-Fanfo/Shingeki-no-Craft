effect give @s water_breathing 1 0 true
effect give @s slowness 5 3 true
$damage @s[distance=..8] $(damage_area) fly_into_wall
execute unless score @s shifter_vars matches 4 run damage @s[tag=transform] 100 fly_into_wall
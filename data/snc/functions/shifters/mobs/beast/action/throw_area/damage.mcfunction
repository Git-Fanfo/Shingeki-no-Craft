effect give @s water_breathing 1 0 true
$damage @s[distance=..10] $(damage_area) fly_into_wall
execute unless score @s shifter_vars matches 4 run damage @s[tag=transform] 10 out_of_world
effect give @s water_breathing 1 0 true
effect give @s slowness 5 3 true
$damage @s[distance=..8] $(damage_area) fly_into_wall

$execute if entity @s[type=skeleton_horse] at @s rotated as @n[tag=snc.boulder] rotated ~180 -$(angle_focus) run function snc:logic/motion/generic {"score":"$(shifter)_vars","strength":$(knockback_focus), "unstoppable":"true"}
$execute unless score @s shifter_vars matches 4 run damage @s[tag=transform] $(damage_focus) fly_into_wall
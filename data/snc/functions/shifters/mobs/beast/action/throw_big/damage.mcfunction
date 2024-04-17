effect give @s water_breathing 1 0 true
effect give @s slowness 5 3 true
$damage @s $(damage_focus) fly_into_wall
$execute as @s[tag=transform] on vehicle run scoreboard players add @s snc.knockback $(knockback_focus)
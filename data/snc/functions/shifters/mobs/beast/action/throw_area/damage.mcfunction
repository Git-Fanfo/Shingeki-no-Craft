effect give @s water_breathing 1 0 true
$damage @s $(damage_area) fly_into_wall
$execute as @s[tag=transform] on vehicle run scoreboard players add @s snc.knockback $(knockback_area)
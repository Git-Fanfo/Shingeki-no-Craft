function animated_java:attack/animations/pause_all
function animated_java:attack/animations/punch_3/play
scoreboard players set state attack_vars 14
execute on vehicle run attribute @s minecraft:scale base set 5.5
execute on vehicle run effect give @s slowness 1 6 true
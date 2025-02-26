function animated_java:attack/animations/pause_all
function animated_java:attack/animations/kick_2/play
scoreboard players set state attack_vars 17
execute on vehicle run attribute @s minecraft:scale base set 5.6
execute on vehicle run effect give @s slowness 1 6 true
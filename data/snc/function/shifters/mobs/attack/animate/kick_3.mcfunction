function animated_java:attack/animations/pause_all
function animated_java:attack/animations/kick_3/play
scoreboard players set state attack_vars 18
execute on vehicle run attribute @s minecraft:scale base set 6.4
execute on vehicle run effect give @s slowness 2 6 true
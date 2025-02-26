function animated_java:attack/animations/pause_all
function animated_java:attack/animations/block/play
execute on vehicle run effect give @s slowness 1 6 true
execute on vehicle run attribute @s minecraft:scale base set 6.9
scoreboard players set state attack_vars 10
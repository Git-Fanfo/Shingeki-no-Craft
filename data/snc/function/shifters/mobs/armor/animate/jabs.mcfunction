function animated_java:armor/animations/pause_all
function animated_java:armor/animations/jabs/play
scoreboard players set state armor_vars 13
execute on vehicle run attribute @s scale base set 6.5
execute on vehicle run effect give @s slowness 1 6 true
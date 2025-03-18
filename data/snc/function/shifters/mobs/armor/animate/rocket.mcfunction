function animated_java:armor/animations/pause_all
function animated_java:armor/animations/rocket/play
scoreboard players set state armor_vars 14
execute on vehicle run attribute @s scale base set 6.4
execute on vehicle run effect give @s slowness 1 6 true
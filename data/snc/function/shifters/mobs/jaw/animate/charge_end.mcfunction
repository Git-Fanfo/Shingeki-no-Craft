function animated_java:jaw/animations/pause_all
function animated_java:jaw/animations/charge_end/play
scoreboard players set state jaw_vars 13
execute on vehicle run attribute @s scale base set 1.25
scoreboard players set $charge jaw_vars 1

return 1
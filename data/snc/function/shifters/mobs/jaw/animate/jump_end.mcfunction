function animated_java:jaw/animations/pause_all
function animated_java:jaw/animations/jump_end/play
execute on vehicle run attribute @s scale base set .2

playsound minecraft:snc.shifters.jaw.smash player @a ^ ^ ^ 2 1
execute on vehicle anchored feet as @e[distance=..16,tag=!jaw] run function snc:shifters/combat/slam {"distance":6, "damage":8}
execute on vehicle anchored feet run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^ 2 .5 2 1 100 force
execute on vehicle anchored feet run particle white_smoke ^ ^ ^ 1 .5 1 .1 50 force
execute on vehicle anchored feet run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^ 1 .5 1 1 50 force

scoreboard players set $air_frame jaw_vars 0
function animated_java:attack/animations/pause_all
function animated_java:attack/animations/punch_1/play
scoreboard players set state attack_vars 12
execute on vehicle run attribute @s minecraft:scale base set 6.5
execute on vehicle run effect give @s slowness 1 6 true

execute on vehicle at @s rotated ~180 0 run function snc:logic/motion/generic {"score":"attack_vars","strength":0.015, "unstoppable":"false"}
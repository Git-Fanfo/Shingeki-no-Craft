function animated_java:beast/animations/pause_all
function animated_java:beast/animations/slap/play
scoreboard players set state beast_vars 15
execute on vehicle run effect give @s slowness 3 6 true
playsound minecraft:aot.beast_throw_big player @a ~ ~ ~ 3 1.4
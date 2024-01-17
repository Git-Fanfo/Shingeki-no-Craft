execute unless score @s aj.beast.rig_loaded = @s aj.beast.rig_loaded run function animated_java:beast/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:beast/zzzzzzzz/animations/tick
function #animated_java:beast/on_tick/as_root
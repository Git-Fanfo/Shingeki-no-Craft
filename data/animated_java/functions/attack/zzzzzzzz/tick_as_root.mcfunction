execute unless score @s aj.attack.rig_loaded = @s aj.attack.rig_loaded run function animated_java:attack/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:attack/zzzzzzzz/animations/tick
function #animated_java:attack/on_tick/as_root
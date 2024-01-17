execute unless score @s aj.armor.rig_loaded = @s aj.armor.rig_loaded run function animated_java:armor/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:armor/zzzzzzzz/animations/tick
function #animated_java:armor/on_tick/as_root
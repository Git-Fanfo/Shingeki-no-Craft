scoreboard players set @s aj.beast.animation.death.local_anim_time 0
tag @s remove aj.beast.animation.death
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.beast.disable_command_keyframes
function animated_java:beast/zzzzzzzz/animations/death/tree/leaf_0
tag @s remove aj.beast.disable_command_keyframes
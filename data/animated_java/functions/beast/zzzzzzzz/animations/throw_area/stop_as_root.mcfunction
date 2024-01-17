scoreboard players set @s aj.beast.animation.throw_area.local_anim_time 0
tag @s remove aj.beast.animation.throw_area
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.beast.disable_command_keyframes
function animated_java:beast/zzzzzzzz/animations/throw_area/tree/leaf_0
tag @s remove aj.beast.disable_command_keyframes
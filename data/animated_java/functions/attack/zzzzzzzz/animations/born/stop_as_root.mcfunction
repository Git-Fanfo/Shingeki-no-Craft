scoreboard players set @s aj.attack.animation.born.local_anim_time 0
tag @s remove aj.attack.animation.born
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.attack.disable_command_keyframes
function animated_java:attack/zzzzzzzz/animations/born/tree/leaf_0
tag @s remove aj.attack.disable_command_keyframes
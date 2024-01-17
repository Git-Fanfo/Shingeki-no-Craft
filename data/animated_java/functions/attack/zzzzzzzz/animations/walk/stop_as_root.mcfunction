scoreboard players set @s aj.attack.animation.walk.local_anim_time 0
tag @s remove aj.attack.animation.walk
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.attack.disable_command_keyframes
function animated_java:attack/zzzzzzzz/animations/walk/tree/leaf_0
tag @s remove aj.attack.disable_command_keyframes
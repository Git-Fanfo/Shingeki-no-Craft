scoreboard players set @s aj.attack.animation.sneak.local_anim_time 0
tag @s remove aj.attack.animation.sneak
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.attack.disable_command_keyframes
function animated_java:attack/zzzzzzzz/animations/sneak/tree/leaf_0
tag @s remove aj.attack.disable_command_keyframes
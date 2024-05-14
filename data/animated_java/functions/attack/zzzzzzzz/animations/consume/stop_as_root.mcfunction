scoreboard players set @s aj.attack.animation.consume.local_anim_time 0
tag @s remove aj.attack.animation.consume
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.attack.disable_command_keyframes
function animated_java:attack/zzzzzzzz/animations/consume/tree/leaf_0
tag @s remove aj.attack.disable_command_keyframes
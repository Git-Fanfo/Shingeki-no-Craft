scoreboard players set @s aj.armor.animation.run.local_anim_time 0
tag @s remove aj.armor.animation.run
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.armor.disable_command_keyframes
function animated_java:armor/zzzzzzzz/animations/run/tree/leaf_0
tag @s remove aj.armor.disable_command_keyframes